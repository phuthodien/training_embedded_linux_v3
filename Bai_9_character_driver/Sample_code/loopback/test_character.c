#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <sys/ioctl.h>

#define FILE	"/dev/char_dd"
#define MAGIC_NO	100
#define SEND_DATA_CMD	_IOW(MAGIC_NO, 1, char*)
#define IOCTL_DATA_LEN 1024

char config_data[IOCTL_DATA_LEN];
char data[4096];

int main()
{
	int fd = -1;
	int menu = 0;
	
	while (1) {
		printf("\nPress 1 to write data to file.");
		printf("\nPress 2 to read data from file.");
		printf("\nPress 3 to send an IOCTL message to file.");
		printf("\nPress 4 to exit program.\n");
		fflush(stdin);
		scanf("%d", &menu);
		
		switch (menu) {
			case 1:
				printf("\nInput data to write: ");
				fflush(stdin);
				memset(data, 0, sizeof(data));
				scanf("%s", data);
				fd = open(FILE, O_RDWR);
				write(fd, data, strlen(data));
				close(fd);
				break;
			case 2:
				memset(data, 0, sizeof(data));
				fd = open(FILE, O_RDWR);
				read(fd, data, sizeof(data));
				close(fd);
				printf("\nData reading from file: %s\n", data);
				break;
			case 3:
				memset(config_data, 0, IOCTL_DATA_LEN);
				strcpy(config_data, "Hello world");
				fd = open(FILE, O_RDWR);
				ioctl(fd, SEND_DATA_CMD, &config_data);
				close(fd);
				break;
			case 4:
				return 0;
			default:
				printf("\nOperation %d is not supported.\n", menu);
				return 0;
		}
	}

	return 0;
}
