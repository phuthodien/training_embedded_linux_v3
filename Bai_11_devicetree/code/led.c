#include <linux/module.h>       /* Needed by all modules */
#include <linux/kernel.h>       /* Needed for KERN_INFO */
#include <linux/time.h>
#include <linux/io.h>
#include <linux/delay.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/of.h>
#include <linux/of_device.h>

#define GPIO_SETDATAOUT_OFFSET          0x194
#define GPIO_CLEARDATAOUT_OFFSET        0x190
#define GPIO_OE_OFFSET                  0x134

#define GPIO30                             ~(1 << 30)
#define GPIO30_DATA_OUT			(1 << 30)

#define GPIO03					~(1 << 3)
#define GPIO03_DATA_OUT			(1 << 3)

#define GPIO31                             ~(1 << 31)
#define GPIO31_DATA_OUT			(1 << 31)

#define GPIO15                             ~(1 << 15)
#define GPIO15_DATA_OUT			(1 << 15)

struct led_config_t {
	uint32_t led;
	uint32_t data_out;
	uint32_t time;
};

struct led_driver_data {
	void __iomem *base_addr;
	unsigned int count;
	const struct led_config_t *led_config;
	struct timer_list my_timer;
};

struct led_config_t led_gpio30_config = {
	.led = GPIO30,
	.data_out = GPIO30_DATA_OUT,
	.time = 1,
};

struct led_config_t led_gpio03_config = {
	.led = GPIO03,
	.data_out = GPIO03_DATA_OUT,
	.time = 3,
};

struct led_config_t led_gpio31_config = {
	.led = GPIO03,
	.data_out = GPIO03_DATA_OUT,
	.time = 3,
};

static void timer_function(unsigned long data){
	struct led_driver_data *timer_data = (struct led_driver_data *)data;

	if ((timer_data->count % 2) == 0) 
		writel_relaxed(timer_data->led_config->data_out,  timer_data->base_addr + GPIO_SETDATAOUT_OFFSET);
	else
		writel_relaxed(timer_data->led_config->data_out,  timer_data->base_addr + GPIO_CLEARDATAOUT_OFFSET); 

	(timer_data->count)++;
	mod_timer(&(timer_data->my_timer), jiffies + timer_data->led_config->time * HZ);
}

static const struct of_device_id blink_led_of_match[] = {
	{ .compatible = "led-example1", .data = &led_gpio30_config},
	{ .compatible = "led-example2", .data = &led_gpio03_config},
	{},
};

static int blink_led_probe(struct platform_device *pdev)
{
	struct resource *res = NULL;
	uint32_t reg_data = 0;
	const struct of_device_id *of_id = NULL;
	struct led_driver_data *timer_data = NULL;

	printk(KERN_EMERG "PhuLA %s, %d\n", __func__, __LINE__);

	timer_data = kmalloc(sizeof(struct led_driver_data), GFP_KERNEL);
	timer_data->count = 0;
	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
	printk(KERN_EMERG "PhuLA start = %d, end = %d\n", res->start, res->end);
	timer_data->base_addr = ioremap(res->start, res->end - res->start);
	
	of_id = of_match_device(blink_led_of_match, &pdev->dev);
	timer_data->led_config = of_id->data;
	
	printk(KERN_EMERG "PhuLA led = %u, data_out = %u\n", timer_data->led_config->led, timer_data->led_config->data_out);

	reg_data = readl_relaxed(timer_data->base_addr + GPIO_OE_OFFSET);
	reg_data &= timer_data->led_config->led;
	writel_relaxed(reg_data, timer_data->base_addr + GPIO_OE_OFFSET);

	init_timer(&(timer_data->my_timer));
	timer_data->my_timer.expires = jiffies + timer_data->led_config->time * HZ;
	timer_data->my_timer.function = timer_function;
	timer_data->my_timer.data = (unsigned long)timer_data;
	add_timer(&(timer_data->my_timer));

	return 0;
}

static int blink_led_remove(struct platform_device *pdev)
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

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Phu Luu An");
MODULE_DESCRIPTION("Hello world kernel module");
