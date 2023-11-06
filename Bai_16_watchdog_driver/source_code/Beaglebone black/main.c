#include <sys/ioctl.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <linux/watchdog.h>
#include <asm/types.h>
#include <sys/stat.h>
#include <stdlib.h>

int main(void)
{
	int fd = 0;
	int c = '\0';
	int timeout = 0;

	fd = open("/dev/watchdog1",O_RDWR);
	if (fd < 0) {
		perror("can not open this file, permission...\n");
		return -1;
	}

	while(1) {
		printf("\nChoose: 1. write driver\n");
		printf("Choose: 2. set timeout driver\n");
		printf("Choose: 3. out\n");

		scanf("%d", &c);
		fflush(stdin);

		switch(c) {
			case 1:
				write(fd,"1",1);
				break;
			case 2:
				puts("nhap timeout");

				scanf("%d", &timeout);
				fflush(stdin);

				ioctl(fd, WDIOC_SETTIMEOUT, &timeout);
				ioctl(fd, WDIOC_GETTIMEOUT, &timeout);
				break;
			case 3:
				close(fd);
				exit(0);
				break;
			default:
				printf("nhap lai");
				break;
		}
	}

	return 0;
}
