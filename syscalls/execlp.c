#include <stdio.h>
#include <unistd.h>

int main()
{
    printf("\n===============================\n\n");
    printf("Before exec :\n");

    // Replace the current process with the "ls" command
    execlp("ls", "ls", "-l", (char *)NULL);

    // If execlp() fails, the following line will be executed
    perror("execlp failed");
    printf("\n===============================\n\n");

    return 1;
}
