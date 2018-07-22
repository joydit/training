#include <stdio.h>
#include <pthread.h>
#include <stdio.h>
#include <linux/unistd.h>
#include <sys/syscall.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <signal.h>
#include <sys/stat.h>

static void *thread_fun(void *param)
{
	int fd = open("/dev/globalfifo", O_RDWR, S_IRUSR | S_IWUSR);
	char buf[10];
	read(fd, buf, 10);
	while(1);
}

static void sigint(int sig)
{
        printf("got the SIGINT signal...\n");
}

int main(void)
{
	pthread_t tid;
	int ret;

	if(signal(2, sigint)==SIG_ERR){
		perror("cannot reset the SIGINT signal handler");
		return 1;
	}

	int fd = open("/dev/globalfifox", O_RDWR, S_IRUSR | S_IWUSR);
	ret = pthread_create(&tid, NULL, thread_fun, NULL);
	if (ret == -1) {
		perror("cannot create new thread");
		return -1;
	}

	char buf[10];
	read(fd, buf, 10);

	return 0;
}
