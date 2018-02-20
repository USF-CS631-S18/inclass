/* driver.c - C driver program to test assembly functions */
#include <stdio.h>

int add_c(int a, int b);
int add_s(int a, int b);
int iseq_c(int a, int b);
int iseq_s(int a, int b);

int main(int argc, char **argv)
{
    int r;

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

    return 0;
}

	
