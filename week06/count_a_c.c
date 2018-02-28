#include <stdio.h>

int count_a_c(char *s)
{
    int count = 0;

    while (*s != '\0') {
        if (*s == 'a') {
            count += 1;
        }
        s += 1;
    }

    return count;
}
