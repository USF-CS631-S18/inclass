#include <stdio.h>

int overflow_s(char *s);


int main(int argc, char **argv)
{
    int r;
    char *s = "hello";

    r = overflow_s(s);

    printf("r = %d\n", r);

    return 0;
}
