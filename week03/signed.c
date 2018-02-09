#include <stdio.h>

int main(int argc, char **argv)
{
    unsigned int v = 7;
    int sv = (int) v;
    sv = sv * -1;
    v = (unsigned int) sv;

    printf("v = %X, v = %u, v = %d\n", v, v, (int) v);

    return 0;
}
