#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <pthread.h>
#include <unistd.h>

unsigned long sum;

void *gen_random_number(void *ptr)
{
	unsigned long local_sum = 0;
	unsigned int i = 0;
	unsigned long n = *(unsigned long*)ptr;

	for (i = 0; i < n; i++) {
		local_sum = local_sum + (i % 10);
	}

	sum = sum + local_sum;

	return NULL;
}

void main()
{
	time_t start_time;
	time_t finish_time;
	unsigned long count = 2000000000;
	unsigned long count0 = 500000000;
	unsigned long count1 = 500000000;
	unsigned long count2 = 500000000;
	unsigned long count3 = 500000000;
	pthread_t thread0;
	pthread_t thread1;
	pthread_t thread2;
	pthread_t thread3;

	start_time = time(NULL);
	sum = 0;
	gen_random_number((void *) &count);
	finish_time = time(NULL);
	printf("With single thread, it takes %ld seconds to gen a random number = %lu\n", finish_time - start_time, sum);

	start_time = time(NULL);
	sum = 0;

	pthread_create(&thread0, NULL, gen_random_number, (void*) &count0);
	pthread_create(&thread1, NULL, gen_random_number, (void*) &count1);
	pthread_create(&thread2, NULL, gen_random_number, (void*) &count2);
	pthread_create(&thread3, NULL, gen_random_number, (void*) &count3);
	pthread_join(thread0, NULL);
	pthread_join(thread1, NULL);
	pthread_join(thread2, NULL);
	pthread_join(thread3, NULL);

	finish_time = time(NULL);
	printf("With 4 threads, it takes %ld seconds to gen a random number = %lu\n", finish_time - start_time, sum);
}
