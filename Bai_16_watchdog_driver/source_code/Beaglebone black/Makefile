obj-m += my_watchdog.o

src-file := my_watchdog.c
test-file:= main.c

PWD := $(shell pwd)
GCC := /usr/bin/arm-linux-gnueabihf-
KERNEL := /home/trongdung/linux/

all:
	make  ARCH=arm CROSS_COMPILE=$(GCC) -C $(KERNEL) SUBDIRS=$(PWD) modules
	$(GCC)gcc main.c -o main
clean:
	make  -C $(KERNEL) SUBDIRS=$(PWD) clean
	rm main
check:
	./checkpatch.pl --no-tree --ignore CONST_STRUCT --show-types -f $(src-file)
