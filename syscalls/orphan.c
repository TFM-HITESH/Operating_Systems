#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main()
{
    int pid;
    pid = fork();

    if (pid == 0)
    {
        printf("\n===============================\n\n");
        printf("I am the child, my process ID is %d\n", getpid());
        printf("My parent's process ID is %d\n", getppid());
        printf("\n===============================\n\n");

        sleep(6);

        printf("\n===============================\n\n");
        printf("\nAfter sleep\nI am the child, my process ID is %d\n", getpid());
        printf("My parent's process ID is %d\n", getppid());
        printf("\n===============================\n\n");
    }
    else
    {
        sleep(3);

        printf("\n===============================\n\n");
        printf("I am the parent, my process ID is %d\n", getpid());
        printf("The parent's parent, process ID is %d\n", getppid());
        printf("Parent terminates\n");
        printf("\n===============================\n\n");
    }
    return 0;
}
