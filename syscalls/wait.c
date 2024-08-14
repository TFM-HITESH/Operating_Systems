#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main()
{
    pid_t pid = fork();

    if (pid < 0)
    {
        // Fork failed
        fprintf(stderr, "Fork failed\n");
        return 1;
    }
    else if (pid == 0)
    {
        // Child process
        printf("\n===============================\n\n");
        printf("Child process (PID: %d) is running...\n", getpid());
        printf("\n===============================\n\n");

        sleep(2); // Simulate some work in the child process

        printf("\n===============================\n\n");
        printf("Child process (PID: %d) is exiting...\n", getpid());
        printf("\n===============================\n\n");
        exit(0); // Exit the child process
    }
    else
    {
        // Parent process
        int status;
        pid_t terminated_child_pid = wait(&status); // Wait for child to terminate

        if (terminated_child_pid > 0)
        {
            printf("\n===============================\n\n");
            printf("Parent process (PID: %d) detected termination of child process (PID: %d)\n", getpid(), terminated_child_pid);
            if (WIFEXITED(status))
            {
                printf("Child process exited with status: %d\n", WEXITSTATUS(status));
            }
            else
            {
                printf("Child process did not exit normally.\n");
            }
            printf("\n===============================\n\n");
        }
        else
        {
            printf("\n===============================\n\n");
            printf("Error: wait() failed.\n");
            printf("\n===============================\n\n");
        }
    }

    return 0;
}
