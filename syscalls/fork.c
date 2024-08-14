#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>

int main()
{
    pid_t pid = fork();

    if (pid < 0)
    {
        // Fork failed
        fprintf(stderr, "ERROR ! Fork failed.\n");
        return 1;
    }
    else if (pid == 0)
    {
        // Child process
        printf("\n===============================\n\n");
        printf("MESSAGE : Hello from the child process!\n");
        printf("LOG : Parent process ID: %d\n", getppid());
        printf("LOG : Child process ID: %d\n", getpid());
        printf("\n===============================\n");
    }
    else
    {
        // Parent process
        printf("\n===============================\n\n");
        printf("MESSAGE : Hello from the parent process!\n");
        printf("LOG : Parent process ID: %d\n", getpid());
        printf("LOG : Child process ID: %d\n", pid);
        printf("\n===============================\n");
    }

    return 0;
}
