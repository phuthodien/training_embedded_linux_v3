#include <linux/module.h>
#include <linux/types.h>
#include <linux/kernel.h>
#include <linux/mm.h>
#include <linux/watchdog.h>
#include <linux/reboot.h>
#include <linux/err.h>
#include <linux/platform_device.h>
#include <linux/moduleparam.h>
#include <linux/io.h>
#include <linux/slab.h>
#include <linux/pm_runtime.h>
#include <linux/platform_data/omap-wd-timer.h>

#define OMAP_WATCHDOG_REV		(0x00)
#define OMAP_WATCHDOG_SYS_CONFIG	(0x10)
#define OMAP_WATCHDOG_STATUS		(0x14)
#define OMAP_WATCHDOG_CNTRL		(0x24)
#define OMAP_WATCHDOG_CRR		(0x28)
#define OMAP_WATCHDOG_LDR		(0x2c)
#define OMAP_WATCHDOG_TGR		(0x30)
#define OMAP_WATCHDOG_WPS		(0x34)
#define OMAP_WATCHDOG_SPR		(0x48)

/* Using the prescaler, the OMAP watchdog could go for many
 * months before firing.  These limits work without scaling,
 * with the 60 second default assumed by most tools and docs.
 */
#define TIMER_MARGIN_MAX	(24 * 60 * 60)	/* 1 day */
#define TIMER_MARGIN_DEFAULT	60	/* 60 secs */
#define TIMER_MARGIN_MIN	1

#define PTV			0	/* prescale */
#define GET_WLDR_VAL(secs)	(0xffffffff - ((secs) * (32768/(1<<PTV))) + 1)
#define GET_WCCR_SECS(val)	((0xffffffff - (val) + 1) / (32768/(1<<PTV)))

struct omap_wdt_dev {
	struct watchdog_device wdog;
	void __iomem    *base;          /* physical */
	struct device   *dev;
	bool		omap_wdt_users;
	int		wdt_trgr_pattern;
	struct mutex	lock;		/* to avoid races with PM */
};

static const struct watchdog_info omap_wdt_info = {
	.options = WDIOF_SETTIMEOUT | WDIOF_MAGICCLOSE | WDIOF_KEEPALIVEPING,
	.identity = "OMAP Watchdog",
};

static void omap_wdt_set_timer(struct omap_wdt_dev *wdev,
				   unsigned int timeout)
{
	u32 pre_margin = GET_WLDR_VAL(timeout);
	void __iomem *base = wdev->base;

	/* just count up at 32 KHz */
	while (readl_relaxed(base + OMAP_WATCHDOG_WPS) & 0x04)
		cpu_relax();

	writel_relaxed(pre_margin, base + OMAP_WATCHDOG_LDR);
	while (readl_relaxed(base + OMAP_WATCHDOG_WPS) & 0x04)
		cpu_relax();
}

static void omap_wdt_disable(struct omap_wdt_dev *wdev)
{
	void __iomem *base = wdev->base;

	/* sequence required to disable watchdog */
	writel_relaxed(0xAAAA, base + OMAP_WATCHDOG_SPR);	/* TIMER_MODE */
	while (readl_relaxed(base + OMAP_WATCHDOG_WPS) & 0x10)
		cpu_relax();

	writel_relaxed(0x5555, base + OMAP_WATCHDOG_SPR);	/* TIMER_MODE */
	while (readl_relaxed(base + OMAP_WATCHDOG_WPS) & 0x10)
		cpu_relax();
}

static void omap_wdt_reload(struct omap_wdt_dev *wdev)
{
	void __iomem    *base = wdev->base;

	/* wait for posted write to complete */
	while ((readl_relaxed(base + OMAP_WATCHDOG_WPS)) & 0x08)
		cpu_relax();

	wdev->wdt_trgr_pattern = ~wdev->wdt_trgr_pattern;
	writel_relaxed(wdev->wdt_trgr_pattern, (base + OMAP_WATCHDOG_TGR));

	/* wait for posted write to complete */
	while ((readl_relaxed(base + OMAP_WATCHDOG_WPS)) & 0x08)
		cpu_relax();
	/* reloaded WCRR from WLDR */
}

static void omap_wdt_enable(struct omap_wdt_dev *wdev)
{
	void __iomem *base = wdev->base;

	/* Sequence to enable the watchdog */
	writel_relaxed(0xBBBB, base + OMAP_WATCHDOG_SPR);
	while ((readl_relaxed(base + OMAP_WATCHDOG_WPS)) & 0x10)
		cpu_relax();

	writel_relaxed(0x4444, base + OMAP_WATCHDOG_SPR);
	while ((readl_relaxed(base + OMAP_WATCHDOG_WPS)) & 0x10)
		cpu_relax();
}

static int omap_wdt_start(struct watchdog_device *wdog)
{
	struct omap_wdt_dev *wdev = watchdog_get_drvdata(wdog);
	void __iomem *base = wdev->base;
	
	printk(KERN_EMERG "PhuLA %s, %d\n", __func__, __LINE__);

	wdev->omap_wdt_users = true;

	pm_runtime_get_sync(wdev->dev);

	/*
	 * Make sure the watchdog is disabled. This is unfortunately required
	 * because writing to various registers with the watchdog running has no
	 * effect.
	 */
	omap_wdt_disable(wdev);

	/* initialize prescaler */
	while (readl_relaxed(base + OMAP_WATCHDOG_WPS) & 0x01)
		cpu_relax();

	writel_relaxed((1 << 5) | (PTV << 2), base + OMAP_WATCHDOG_CNTRL);
	while (readl_relaxed(base + OMAP_WATCHDOG_WPS) & 0x01)
		cpu_relax();

	omap_wdt_set_timer(wdev, wdog->timeout);
	omap_wdt_reload(wdev); /* trigger loading of new timeout value */
	omap_wdt_enable(wdev);

	return 0;
}

static int omap_wdt_stop(struct watchdog_device *wdog)
{
	struct omap_wdt_dev *wdev = watchdog_get_drvdata(wdog);

	printk(KERN_EMERG "PhuLA %s, %d\n", __func__, __LINE__);
	omap_wdt_disable(wdev);
	pm_runtime_put_sync(wdev->dev);
	wdev->omap_wdt_users = false;

	return 0;
}

static int omap_wdt_ping(struct watchdog_device *wdog)
{
	struct omap_wdt_dev *wdev = watchdog_get_drvdata(wdog);

	printk(KERN_EMERG "PhuLA %s, %d\n", __func__, __LINE__);
	omap_wdt_reload(wdev);

	return 0;
}

static int omap_wdt_set_timeout(struct watchdog_device *wdog,
				unsigned int timeout)
{
	struct omap_wdt_dev *wdev = watchdog_get_drvdata(wdog);

	printk(KERN_EMERG "PhuLA %s, %d\n", __func__, __LINE__);
	omap_wdt_disable(wdev);
	omap_wdt_set_timer(wdev, timeout);
	omap_wdt_enable(wdev);
	omap_wdt_reload(wdev);
	wdog->timeout = timeout;

	return 0;
}

static const struct watchdog_ops omap_wdt_ops = {
	.owner		= THIS_MODULE,
	.start		= omap_wdt_start,
	.stop		= omap_wdt_stop,
	.ping		= omap_wdt_ping,
	.set_timeout	= omap_wdt_set_timeout,
};

static int omap_wdt_probe(struct platform_device *pdev)
{
	struct resource *res;
	struct omap_wdt_dev *wdev;
	int ret;
	
	printk(KERN_EMERG "PhuLA %s, %d", __func__, __LINE__);
	
	wdev = devm_kzalloc(&pdev->dev, sizeof(*wdev), GFP_KERNEL);
	wdev->omap_wdt_users	= false;
	wdev->dev		= &pdev->dev;
	wdev->wdt_trgr_pattern	= 0x1234;
	
	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	wdev->base = devm_ioremap_resource(&pdev->dev, res);
	
	wdev->wdog.info = &omap_wdt_info;
	wdev->wdog.ops = &omap_wdt_ops;
	wdev->wdog.min_timeout = TIMER_MARGIN_MIN;
	wdev->wdog.max_timeout = TIMER_MARGIN_MAX;
	wdev->wdog.parent = &pdev->dev;
	
	if (watchdog_init_timeout(&wdev->wdog, 1000, &pdev->dev) < 0)
		wdev->wdog.timeout = TIMER_MARGIN_DEFAULT;
	
	platform_set_drvdata(pdev, wdev);
	watchdog_set_drvdata(&(wdev->wdog), wdev);
	pm_runtime_enable(wdev->dev);
	pm_runtime_get_sync(wdev->dev);

	ret = watchdog_register_device(&wdev->wdog);
	
	pm_runtime_put(wdev->dev);

	return 0;
}

static const struct of_device_id omap_wdt_of_match[] = {
	{ .compatible = "ti,omap3-wdt", },
	{},
};
MODULE_DEVICE_TABLE(of, omap_wdt_of_match);

static struct platform_driver omap_wdt_driver = {
	.probe		= omap_wdt_probe,
	.driver		= {
		.name	= "omap_wdt",
		.of_match_table = omap_wdt_of_match,
	},
};

module_platform_driver(omap_wdt_driver);

MODULE_AUTHOR("George G. Davis");
MODULE_LICENSE("GPL");
MODULE_ALIAS("platform:omap_wdt");