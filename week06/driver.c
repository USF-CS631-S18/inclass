/* driver.c - C driver program to test assembly functions */
#include <stdio.h>

int factorial_c(int n);
int factorial_s(int n);
int count_a_c(char *s);
int count_a_s(char *s);

int main(int argc, char **argv)
{
    int r;
    char *s = "abba";

    /* factorial test */    
    r = factorial_c(5);
    printf("factorial_c(5) = %d\n", r);
    r = factorial_s(5);
    printf("factorial_s(5) = %d\n", r);
    
    /* count_a test */
    r = count_a_c(s);
    printf("count_a_c(\"abba\") = %d\n", r);
    r = count_a_s(s);
    printf("count_a_s(\"abba\") = %d\n", r);    
    
    return 0;
}
