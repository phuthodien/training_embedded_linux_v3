obj-m += hello_module.o
 
CROSS=/home/phula/work/beagle_bone_black/gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf/bin/arm-linux-gnueabihf-
KERNEL=/home/phula/work/beagle_bone_black/bb-kernel/KERNEL/
all:
	make ARCH=arm CROSS_COMPILE=${CROSS} -C ${KERNEL} M=$(PWD) modules
clean:
	make -C ${KERNEL} M=$(PWD) clean
