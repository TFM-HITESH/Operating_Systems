#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdio.h>
#include <sys/wait.h>

int main()
{
    int pid = fork();

    if (pid > 0)
    {
        printf("\n===============================\n\n");
        printf("Parent Process is going to sleep\n");
        printf("\n===============================\n\n");

        sleep(10);

        printf("\n===============================\n\n");
        printf("Parent process is resumed\n");
        printf("\n===============================\n\n");

        wait(NULL); // Parent waits for the child to terminate, preventing a zombie process
    }
    else
    {
        printf("\n===============================\n\n");
        printf("\nChild process executing\n");
        printf("\nChild Terminates\n");
        printf("\n===============================\n\n");

        exit(0);
    }

    return 0;
}
