#include <stdio.h>
#include <string.h>

int str_to_int(char *s)
{
    int len = strlen(s);
    int i;
    int x;
    int v = 0;

    for (i = 0; i < len; i++) {
        v = v * 10;
        x = s[i] - '0';
        v = v + x;
    }
        
    return v;
}

int main(int argc, char **argv)
{
    int v;
    
    v = str_to_int(argv[1]);

    printf("v = %d\n", v);

    return 0;
}
