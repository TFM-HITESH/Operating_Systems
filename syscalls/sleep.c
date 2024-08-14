#include <stdio.h>
#include <unistd.h>

int main()
{
    printf("\n===============================\n\n");
    printf("Sleeping for 5 seconds...\n");

    unsigned int remaining_time = sleep(5);

    if (remaining_time == 0)
    {
        printf("Woke up after 5 seconds\n");
        printf("\n===============================\n\n");
    }
    return 0;
}