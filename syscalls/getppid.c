#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
    pid_t ppid = getppid(); // Get the PID of the parent process

    printf("\n===============================\n\n");
    printf("The PID of the parent process is: %d\n", ppid);
    printf("\n===============================\n\n");

    return 0;
}
