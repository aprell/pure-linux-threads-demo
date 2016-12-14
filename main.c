#include "lib.h"
#include "thread.h"

void threadfn(void)
{
	puts("Hello from \e[91;1mthread\e[0m!\n");

	exit(0);
}

// Called by _start
int main(void)
{
	puts("Hello from \e[93;1mmain\e[0m!\n");

	thread_create(&threadfn);

	return 0;
}
