#include <stdio.h>

int factorial_c(int n)
{
    int rv = 0;

    if (n == 0) {
        rv = 1;
    } else {
        rv = factorial_c(n-1) * n;
    }

    return rv;
}
