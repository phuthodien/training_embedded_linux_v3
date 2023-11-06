#include<linux/module.h>       /* Needed by all modules */
#include<linux/kernel.h>       /* Needed for KERN_INFO */
#include<linux/time.h>
#include<linux/io.h>
#include<linux/delay.h>
#include<linux/of.h>
#include<linux/fs.h>
#include<linux/cdev.h>
#include<linux/device.h>
#include<linux/kdev_t.h>
#include<linux/uaccess.h>
#include<linux/platform_device.h>
#include<linux/slab.h>
#include<linux/mod_devicetable.h>
#include<linux/of_device.h>

#define GPIO_SETDATAOUT_OFFSET          0x194
#define GPIO_CLEARDATAOUT_OFFSET        0x190
#define GPIO_OE_OFFSET                  0x134
#define GPIO_DATAOUT					0x13c

#define LED24 (0x1 << 24) //GPIO1_24
#define GPIO24_DATA_OUT			(0x1 << 24)

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Blink Led kernel module");

typedef struct led_config_t {
	uint32_t led;
	uint32_t data_out;
	uint32_t time;
} led_config_t;

/* Lưu dữ liệu tổng của led */
struct led_driver_data {
	void __iomem *base_addr;
	unsigned int count;
	const struct led_config_t *led_config;
	struct timer_list my_timer;
};

led_config_t led_gpio24_config = {
	.led = LED24,
	.data_out = GPIO24_DATA_OUT,
	.time = 1,
};

struct timer_list *driver_timer[10];
int driver_timer_max = 0;

static const struct of_device_id blink_led_of_match[] = {
	{ .compatible = "led-example2", .data = &led_gpio24_config},
	{},
};

/* Hàm timer */
static void timer_callback(struct timer_list *data){
	struct led_driver_data *timer_data = container_of(data, struct led_driver_data, my_timer);

	if ((timer_data->count % 2) == 0) 
		writel_relaxed(timer_data->led_config->data_out,  timer_data->base_addr + GPIO_SETDATAOUT_OFFSET);
	else
		writel_relaxed(timer_data->led_config->data_out,  timer_data->base_addr + GPIO_CLEARDATAOUT_OFFSET); 

	(timer_data->count)++;
	mod_timer(&(timer_data->my_timer), jiffies + timer_data->led_config->time * HZ);
}

int blink_led_driver_probe(struct platform_device *pdev)
{
    struct resource *res = NULL;
    struct led_driver_data *led_data = NULL;
    const struct of_device_id *of_id = NULL;
    uint32_t reg_data = 0;

    pr_info("probe is called\n");

    res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    led_data = kmalloc(sizeof(struct led_driver_data), GFP_KERNEL);
    led_data->base_addr = ioremap(res->start,  (res->end - res->start));
    of_id = of_match_device(blink_led_of_match, &pdev->dev);
    led_data->led_config = of_id->data;

    /*4. Setup GPIO */
	reg_data = readl_relaxed(led_data->base_addr + GPIO_OE_OFFSET);
	reg_data &= led_data->led_config->led;
	writel_relaxed(reg_data, led_data->base_addr + GPIO_OE_OFFSET);

    /*5. Kích hoạt timer */
	timer_setup(&(led_data->my_timer), timer_callback, 0);
    driver_timer[driver_timer_max] = &(led_data->my_timer);
    driver_timer_max++;
	mod_timer(&(led_data->my_timer), jiffies + msecs_to_jiffies(led_data->led_config->time * 1000));

    return 0;
}

/* Remove Function */
int blink_led_driver_remove(struct platform_device *pdev){
    int i = 0;

	dev_info(&pdev->dev,"A device is removed\n");
    for(i = 0; i < driver_timer_max; i++) {
        del_timer_sync(driver_timer[i]);
    }

	return 0;
}

static struct platform_driver blink_led_driver = {
	.probe		= blink_led_driver_probe,
	.remove		= blink_led_driver_remove,
	.driver		= {
		.name	= "blink_led",
		.of_match_table = blink_led_of_match,
	},
};

module_platform_driver(blink_led_driver);