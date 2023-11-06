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
#include <linux/miscdevice.h>

#define GPIO_SETDATAOUT_OFFSET          0x194
#define GPIO_CLEARDATAOUT_OFFSET        0x190
#define GPIO_OE_OFFSET                  0x134
#define GPIO_DATAOUT					0x13c

#define LED24 (0x1 << 24) //GPIO1_24
#define GPIO24_DATA_OUT			(0x1 << 24)

#define LED30 (0x1 << 30) //GPIO0_30
#define GPIO30_DATA_OUT			(0x1 << 30)

#define LED40 (0x1 << 8) //GPIO1_40
#define GPIO40_DATA_OUT			(0x1 << 8)

MODULE_LICENSE("GPL");
MODULE_DESCRIPTION("Blink Led kernel module");

typedef struct led_config_t {
	uint32_t led;
	uint32_t data_out;
    uint32_t gpio;
} led_config_t;

/* Lưu dữ liệu tổng của led */
struct led_driver_data {
	void __iomem *base_addr;
	const struct led_config_t *led_config;
    char name[128];
};

led_config_t led_gpio24_config = {
	.led = LED24,
	.data_out = GPIO24_DATA_OUT,
    .gpio = 24,
};

led_config_t led_gpio30_config = {
	.led = LED30,
	.data_out = GPIO30_DATA_OUT,
    .gpio = 30,
};

led_config_t led_gpio40_config = {
	.led = LED40,
	.data_out = GPIO40_DATA_OUT,
    .gpio = 40,
};

static const struct of_device_id blink_led_of_match[] = {
	{ .compatible = "led-example0", .data = &led_gpio30_config},
    { .compatible = "led-example1", .data = &led_gpio40_config},
	{},
};

struct miscdevice *device_list[10];
int device_max = 0;

struct led_driver_data *private_data[2];
int private_data_idx = 0;

struct led_driver_data *get_private_data(const char *name)
{
    int i = 0;

    for (i = 0; i <= private_data_idx; i++) {
        if (strcmp(name, private_data[i]->name) == 0)
            return private_data[i];
    }

    pr_info("doesn't have this name %s\n", name);
    return NULL;
}

static int sample_open(struct inode *inode, struct file *file)
{
    pr_info("%s, %d\n", __func__, __LINE__);

    return 0;
}

static int sample_close(struct inode *inodep, struct file *filp)
{
    pr_info("%s, %d\n", __func__, __LINE__);

    return 0;
}

static ssize_t sample_write(struct file *file, const char __user *buf,
		       size_t len, loff_t *ppos)
{
    struct led_driver_data *led_data = NULL;
    char data[25];
    int ret = -1;

    pr_info("%s, %d, name = %s\n", __func__, __LINE__, file->f_path.dentry->d_name.name);
    led_data = get_private_data(file->f_path.dentry->d_name.name);
    if (led_data != NULL) {
        memset(data, 0, sizeof(data));
        ret = copy_from_user(data, buf, len);
        if (0 == ret) {
            pr_info("%s, %d, data = %s\n", __func__, __LINE__, data);
            if ('1' == data[0])
                writel_relaxed(led_data->led_config->led, led_data->base_addr + GPIO_SETDATAOUT_OFFSET);
            else if ('0' == data[0])
                writel_relaxed(led_data->led_config->led, led_data->base_addr + GPIO_CLEARDATAOUT_OFFSET);
        }
        else
            pr_info("%s, %d, can't copy data\n", __func__, __LINE__);
    }

    return len;
}

static ssize_t sample_read(struct file *file, char __user *buf,
		       size_t len, loff_t *ppos)
{
	pr_info("%s, %d\n", __func__, __LINE__);

	return 0;
}

static const struct file_operations sample_fops = {
    .owner			= THIS_MODULE,
    .write			= sample_write,
	.read			= sample_read,
    .open			= sample_open,
    .release		= sample_close,
};

int blink_led_driver_probe(struct platform_device *pdev)
{
    struct resource *res = NULL;
    struct led_driver_data *led_data = NULL;
    const struct of_device_id *of_id = NULL;
    uint32_t reg_data = 0;
    uint32_t gpio = 0;
    int error = -1;
    char dev_name[128];
    struct miscdevice *sample_device = NULL;

    pr_info("probe is called\n");

    res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    led_data = kmalloc(sizeof(struct led_driver_data), GFP_KERNEL);
    led_data->base_addr = ioremap(res->start, (res->end - res->start));
    of_id = of_match_device(blink_led_of_match, &pdev->dev);
    led_data->led_config = of_id->data;

    /*4. Setup GPIO */
	reg_data = readl_relaxed(led_data->base_addr + GPIO_OE_OFFSET);
	reg_data &= (~(led_data->led_config->led));
	writel_relaxed(reg_data, led_data->base_addr + GPIO_OE_OFFSET);

    //Tao device file tuong ung
    //generate device file's name
    memset(dev_name, 0, sizeof(dev_name));
    gpio = led_data->led_config->gpio;
    sprintf(dev_name, "led_gpio%u", gpio);
    sample_device = kmalloc(sizeof(struct miscdevice), GFP_KERNEL);
    memset(sample_device, 0, sizeof(struct miscdevice));
    sample_device->minor = MISC_DYNAMIC_MINOR;
    sample_device->name = dev_name;
    sample_device->fops = &sample_fops;
    // strcpy(sample_device->name, dev_name);

    private_data[private_data_idx] = led_data;
    strcpy(private_data[private_data_idx]->name, dev_name);
    private_data_idx++;

    error = misc_register(sample_device);
    if (error) {
        pr_err("can't misc_register :(\n");
        return error;
    }
    device_list[device_max] = sample_device;
    device_max++;

    return 0;
}

/* Remove Function */
int blink_led_driver_remove(struct platform_device *pdev){
    int i = 0;
    struct miscdevice *sample_device = NULL;

	dev_info(&pdev->dev,"A device is removed\n");
    for (i = 0; i < device_max; i++) {
        sample_device = device_list[i];
        misc_deregister(sample_device);
        kfree(sample_device);
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