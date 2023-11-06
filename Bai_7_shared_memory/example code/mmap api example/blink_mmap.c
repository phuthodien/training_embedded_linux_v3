//Blink led: GPIO2_2 - P8_7

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stdint.h>

#define LED 0x00000004
#define GPIO2_BASE 0x481AC00
#define SET 0x194
#define CLEAR 0x190

int main ()
{
    const int SIZE = 4096;
    int shm_fd;
    void *ptr;
    uint32_t *gpio_set;
    uint32_t *gpio_clear;

    shm_fd = open ("/dev/mem", O_RDWR | O_SYNC, 0666);
    if (shm_fd == -1)
    {
        perror("Open failed");
        return -1;
    }
    //ftruncate(shm_fd, SIZE);
    ptr = mmap(0, SIZE, PROT_WRITE, MAP_SHARED, shm_fd, GPIO2_BASE);
    
    gpio_set = ptr + SET;
    gpio_clear = ptr + CLEAR;

    while (1)
    {
        *gpio_set = LED;
        sleep(2);
        *gpio_clear = LED;
        sleep(2);
    }

    close(shm_fd);
    return 0;
}