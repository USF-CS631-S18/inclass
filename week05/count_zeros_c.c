#include <stdio.h>

int count_zeros_c(int a[], int len)
{
    int count = 0;
    int i;

    for (i = 0; i < len; i++) {
        if (a[i] == 0) {
            count += 1;
        }
    }

    return count;
}
        
       
