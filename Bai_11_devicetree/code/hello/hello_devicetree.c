#include <linux/module.h>     /* Needed by all modules */
#include <linux/kernel.h>     /* Needed for KERN_INFO */
#include <linux/init.h>       /* Needed for the macros */
#include <linux/delay.h>
#include <linux/io.h>
#include <linux/time.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/of.h>
#include <linux/of_device.h>

#define GPIO_SETDATAOUT_OFFSET          0x194
#define GPIO_CLEARDATAOUT_OFFSET        0x190
#define GPIO_OE_OFFSET                  0x134
#define LED                             ~(1 << 31)
#define DATA_OUT			(1 << 31)

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Akshat Sinha");
MODULE_DESCRIPTION("A simple Hello world LKM!");
MODULE_VERSION("0.1");

void __iomem *base_addr;
struct timer_list my_timer;
unsigned int count = 0;

static void timer_function(struct timer_list * data){
	if ((count % 2) == 0) {
		printk(KERN_INFO "turn on led\n");
		writel_relaxed(DATA_OUT,  base_addr + GPIO_SETDATAOUT_OFFSET);
	}
	else {
		printk(KERN_INFO "turn off led\n");
		writel_relaxed(DATA_OUT, base_addr + GPIO_CLEARDATAOUT_OFFSET);
	}

	count++;
	mod_timer(&my_timer, jiffies + HZ);
}

static const struct of_device_id blink_led_of_match[] = {
	{ .compatible = "led-example1", NULL},
	{},
};

int blink_led_probe(struct platform_device *pdev)
{
	uint32_t reg_data = 0;
	struct resource *res = NULL;

	printk(KERN_INFO "Hello world 1.\n");

	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	base_addr = ioremap(res->start, res->end - res->start);
	reg_data = readl_relaxed(base_addr + GPIO_OE_OFFSET);
	reg_data &= LED;
	writel_relaxed(reg_data, base_addr + GPIO_OE_OFFSET);
	
	
	timer_setup(&my_timer, timer_function, 0);
	mod_timer(&my_timer, jiffies + HZ);

	return 0;
}

int blink_led_remove(struct platform_device *pdev)
{
	return 0;
}

static struct platform_driver blink_led_driver = {
	.probe		= blink_led_probe,
	.remove		= blink_led_remove,
	.driver		= {
		.name	= "blink_led",
		.of_match_table = blink_led_of_match,
	},
};

module_platform_driver(blink_led_driver);
