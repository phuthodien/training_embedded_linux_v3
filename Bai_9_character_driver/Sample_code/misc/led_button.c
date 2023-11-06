#include <linux/miscdevice.h>
#include <linux/fs.h>
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/uaccess.h>
#include <linux/io.h>
#include <linux/slab.h>
#include <linux/gpio.h>
#include <linux/interrupt.h>

#define MAGIC_NO	100
#define SEND_DATA_CMD	_IOW(MAGIC_NO, 1, char*) //define SEND_DATA_CMD 1
#define SEND_DATA_CMD2	_IOW(MAGIC_NO, 2, char*) //define SEND_DATA_CMD2 2
#define IOCTL_DATA_LEN 1024

#define GPIO_LED_BASE 0x4804C000
#define ADDR_SIZE       (0x1000)
#define GPIO_SETDATAOUT_OFFSET          0x194
#define GPIO_CLEARDATAOUT_OFFSET        0x190
#define GPIO_OE_OFFSET                  0x134
#define GPIO_DATAOUT					0x13c
#define LED (0x1 << 24) //GPIO1_24

#define GPIO_BUTTON		15

int first_read = 0;
char data[25];
char config_data[IOCTL_DATA_LEN];

void __iomem *base_addr = NULL;
int button_irq = 0;

static irqreturn_t button_isr(int irq, void *data)
{
	printk(KERN_EMERG "Button is pressed\n");
	return IRQ_HANDLED;
}

static int sample_open(struct inode *inode, struct file *file)
{
    pr_info("%s, %d\n", __func__, __LINE__);
	first_read = 1;

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
	int ret = -1;

    memset(data, 0, sizeof(data));
    ret = copy_from_user(data, buf, len);
    if (0 == ret) {
        pr_info("%s, %d, data = %s\n", __func__, __LINE__, data);
        if ('1' == data[0])
            writel_relaxed(LED,  base_addr + GPIO_SETDATAOUT_OFFSET);
        else if ('0' == data[0])
            writel_relaxed(LED, base_addr + GPIO_CLEARDATAOUT_OFFSET);
    }
	else
		pr_info("%s, %d, can't copy data\n", __func__, __LINE__);

    return len;
}

static ssize_t sample_read(struct file *file, char __user *buf,
		       size_t len, loff_t *ppos)
{
	int ret = -1;
    uint32_t reg_data = 0;
    char *data = NULL;

	if (first_read != 0) {
        data = kmalloc(len, GFP_KERNEL);
        memset(data, 0, len);

		reg_data = readl_relaxed(base_addr + GPIO_DATAOUT);
        data[0] = ((reg_data & LED) >> 24) + 48;
        pr_info("%s, %d, data is %s, reg_data = 0x%x", __func__, __LINE__, data, reg_data);
        ret = copy_to_user(buf, data, len);

		first_read = 0;
        kfree(data);
		return len;
	} else
		return 0;
}

static long my_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
{
	int ret = -1;
    memset(config_data, 0, sizeof(config_data));

	switch (cmd) {
	case SEND_DATA_CMD:
		memset(config_data, 0, IOCTL_DATA_LEN);
		ret = copy_from_user(config_data, (char*)arg, IOCTL_DATA_LEN);
		printk(KERN_INFO "PhuLA %s, %d, ioctl message = %s\n", __func__, __LINE__, config_data);
		break;

	default:
		return -ENOTTY;
	}

	return 0;
}

static const struct file_operations sample_fops = {
    .owner			= THIS_MODULE,
    .write			= sample_write,
	.read			= sample_read,
    .open			= sample_open,
    .release		= sample_close,
	.unlocked_ioctl = my_ioctl,
};

struct miscdevice sample_device = {
    .minor = MISC_DYNAMIC_MINOR,
    .name = "hello_misc",
    .fops = &sample_fops,
};

int init_module(void)
{
    int error;
    uint32_t reg_data = 0;

    error = misc_register(&sample_device);
    if (error) {
        pr_err("can't misc_register :(\n");
        return error;
    }

    base_addr = ioremap(GPIO_LED_BASE, ADDR_SIZE);
    if (NULL == base_addr) {
        pr_info("Can't mapping base address\n");
        return -1;
    }

    reg_data = readl_relaxed(base_addr + GPIO_OE_OFFSET);
	reg_data &= (~LED);
	writel_relaxed(reg_data, base_addr + GPIO_OE_OFFSET);

    error = gpio_request(GPIO_BUTTON,"gpio_button");
	if (error < 0) {
		printk(KERN_EMERG "can't request gpio\n");
		return -1;
	}
	button_irq = gpio_to_irq(GPIO_BUTTON);
	if (button_irq < 0) {
		printk(KERN_EMERG "can't get irq number from gpio\n");
		return -1;
	}
	
	error = request_irq(button_irq, button_isr, IRQF_TRIGGER_RISING, "my_gpio_irq", "hello_misc");

    pr_info("I'm in\n");
    return 0;
}

void cleanup_module(void)
{
    free_irq(button_irq, "hello_misc");
    misc_deregister(&sample_device);
    pr_info("I'm out\n");
}

MODULE_DESCRIPTION("led driver for bbb");
MODULE_AUTHOR("Phu Luu An - luuanphu@mgail.com");
MODULE_LICENSE("GPL");