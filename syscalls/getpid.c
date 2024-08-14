#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
    pid_t pid = getpid(); // Get the PID of the current process

    printf("\n===============================\n\n");
    printf("MESSAGE : The PID of the current process is: %d\n", pid);
    printf("\n===============================\n\n");

    return 0;
}
