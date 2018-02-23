/* driver.c - C driver program to test assembly functions */
#include <stdio.h>

int add_c(int a, int b);
int add_s(int a, int b);
int iseq_c(int a, int b);
int iseq_s(int a, int b);
int count_zeros_c(int a[], int len);
int count_zeros_s(int a[], int len);

int main(int argc, char **argv)
{
    int r;
    int test_array[5] = {0, 1, 0, 2, 0};

    /* add test */    
    r = add_c(1,3);
    printf("add_c(1,3) = %d\n", r);
    r = add_s(1,3);
    printf("add_s(1,3) = %d\n", r);

    /* iseq test */
    r = iseq_c(1,3);
    printf("iseq_c(1,3) = %d\n", r);
    r = iseq_s(1,3);
    printf("iseq_s(1,3) = %d\n", r);
    r = iseq_c(77,77);
    printf("iseq_c(77,77) = %d\n", r);
    r = iseq_s(77,77);
    printf("iseq_s(77,77) = %d\n", r);

    /* count_zeros */
    r = count_zeros_c(test_array, 5);
    printf("count_zeros_c({0,1,0,2,0}, 5) = %d\n", r);
    r = count_zeros_s(test_array, 5);
    printf("count_zeros_s({0,1,0,2,0}, 5) = %d\n", r);    

    return 0;
}
