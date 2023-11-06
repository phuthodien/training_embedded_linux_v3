#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/fs.h>
#include <linux/cdev.h>
#include <linux/slab.h>
#include <linux/uaccess.h>
#include <linux/io.h>


#define DEVICE		5
#define AUTHOR		"Phu Luu An luuanphu@gmail.com"
#define DESC		"A example character device driver"
#define DEVICE_NAME     "led_30"

#define MAGIC_NO	100
#define SEND_DATA_CMD	_IOW(MAGIC_NO, 1, char*)
#define IOCTL_DATA_LEN 1024

#define GPIO_ADDR_BASE  0x44E07000
#define ADDR_SIZE       (0x1000)
#define GPIO_SETDATAOUT_OFFSET          0x194
#define GPIO_CLEARDATAOUT_OFFSET        0x190
#define DATA_IN_REG						0x138
#define GPIO_OE_OFFSET                  0x134
#define LED                             ~(1 << 30)
#define DATA_OUT			(1 << 30)

static dev_t dev_num;
struct class *my_class;
struct device *my_dev;
struct cdev my_cdev;
char data[4096];
bool first_oper;
char config_data[IOCTL_DATA_LEN];

void __iomem *base_addr;
uint32_t reg_data;
uint32_t old_pin_mode;

static int my_open(struct inode *inode, struct file *file)
{
	printk(KERN_INFO "PhuLA %s, %d\n", __func__, __LINE__);
	reg_data = readl_relaxed(base_addr + GPIO_OE_OFFSET);
	old_pin_mode = reg_data;
	reg_data &= LED;
	writel_relaxed(reg_data, base_addr + GPIO_OE_OFFSET);
	first_oper = true;

	return 0;
}

static int my_close(struct inode *inode, struct file *file)
{
	printk(KERN_INFO "PhuLA %s, %d\n", __func__, __LINE__);
	reg_data = old_pin_mode;
	writel_relaxed(reg_data, base_addr + GPIO_OE_OFFSET);
	return 0;
}

static ssize_t my_read(struct file *flip, char __user *user_buf, size_t len, loff_t *offs)
{
	char *data = NULL;
	printk(KERN_INFO "PhuLA %s, %d\n", __func__, __LINE__);
	
	data = kmalloc(len, GFP_KERNEL);
	memset(data, 0, len);
	reg_data = readl_relaxed(base_addr + DATA_IN_REG);
	data[0] = ((reg_data & LED) >> 30) + 48;
	copy_to_user(user_buf, data, len);

	if (true == first_oper) {
		first_oper = false;
		return 1;
	}
	else
		return 0;
}

static ssize_t my_write(struct file *flip, const char __user *user_buf, size_t len, loff_t *offs)
{
	char data = '\0';
	printk(KERN_INFO "PhuLA %s, %d\n", __func__, __LINE__);
	
	copy_from_user(&data, &user_buf[0], sizeof(data));
	switch (data) {
		case '1':
			writel_relaxed(DATA_OUT,  base_addr + GPIO_SETDATAOUT_OFFSET);
			break;
		case '0':
			writel_relaxed(DATA_OUT, base_addr + GPIO_CLEARDATAOUT_OFFSET);
			break;
		default:
			printk(KERN_INFO "PhuLA un-support operation");
	};

	return len;
}

static long my_ioctl(struct file *filep, unsigned int cmd, unsigned long arg)
{
	switch (cmd) {
	case SEND_DATA_CMD:
		memset(config_data, 0, IOCTL_DATA_LEN);
		copy_from_user(config_data, (char*)arg, IOCTL_DATA_LEN);
		printk(KERN_INFO "PhuLA %s, %d, ioctl message = %s\n", __func__, __LINE__, config_data);
		break;

	default:
		return -ENOTTY;
	}

	return 0;
}

static struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = my_open,
	.release = my_close,
	.read = my_read,
	.write = my_write,
	.unlocked_ioctl = my_ioctl,
};

static int __init func_init(void)
{
	memset(data, 0, sizeof(data));

	alloc_chrdev_region(&dev_num, 0, DEVICE, DEVICE_NAME);
	my_class = class_create(THIS_MODULE, DEVICE_NAME);
	cdev_init(&my_cdev, &fops);
	my_cdev.owner = THIS_MODULE;
	cdev_add(&my_cdev, dev_num, 1);
	device_create(my_class, NULL, dev_num, NULL, DEVICE_NAME);
	
	base_addr = ioremap(GPIO_ADDR_BASE, ADDR_SIZE);

	return 0;
}

static void __exit func_exit(void)
{
	cdev_del(&my_cdev);
	device_destroy(my_class, dev_num);
	class_destroy(my_class);
	unregister_chrdev(dev_num, DEVICE_NAME);
}

module_init(func_init);
module_exit(func_exit);

MODULE_LICENSE("GPL");
MODULE_AUTHOR(AUTHOR);
MODULE_DESCRIPTION(DESC);
MODULE_VERSION("0.01");

