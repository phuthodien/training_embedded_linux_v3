PWD := $(shell pwd)
KERNEL := /home/phula/training/source_code_download/bbb_old_source/linux/
CROSS := /opt/gcc-arm-linux/bin/arm-linux-gnueabihf-
obj-m += exam_cdev.o

all:
	make ARCH=arm CROSS_COMPILE=$(CROSS) -C $(KERNEL) SUBDIRS=$(PWD) modules
clean:
	make -C $(KERNEL) SUBDIRS=$(PWD) clean
