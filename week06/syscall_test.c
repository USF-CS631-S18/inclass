#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>

int main(int argc, char **argv)
{
    int pid;

    pid = getpid();

    printf("pid = %d\n", pid);

    return 0;
}
