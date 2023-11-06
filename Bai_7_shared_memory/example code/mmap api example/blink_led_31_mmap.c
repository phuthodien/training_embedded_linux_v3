//Blink led: GPIO2_2 - P8_7

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdint.h>

#define GPIO_ADDR_BASE	0x44E07000
#define ADDR_SIZE	(0x44E07FFF - 0x44E07000)
#define GPIO_SETDATAOUT_OFFSET		0x194
#define GPIO_CLEARDATAOUT_OFFSET	0x190
#define GPIO_OE_OFFSET			0x134
#define LED				(1 << 31)

int main ()
{
    const int SIZE = 4096;
    int shm_fd = -1;
    unsigned int *ptr = NULL;

    shm_fd = open ("/dev/mem", O_RDWR | O_SYNC, 0666);
    ptr = mmap(0, SIZE, PROT_WRITE, MAP_SHARED, shm_fd, GPIO_ADDR_BASE);
	*(ptr + GPIO_OE_OFFSET / 4) &= ~LED;
    while (1)
    {
		*(ptr + GPIO_SETDATAOUT_OFFSET / 4) |= LED;
		sleep(1);
		*(ptr + GPIO_CLEARDATAOUT_OFFSET / 4) |= LED;
		sleep(1);
    }

    close(shm_fd);
    return 0;
}