#include <stdio.h>

#define MAX_STR_LEN 64

void convert_normalized_to_binstr(unsigned int v, char *s)
{
    int i;
    int bp = 31;
    int bv = 0;
    
    s[0] = '\0';

    for (i = 0; i < 32; i++) {
        bv = (v >> bp) & 0b1;
        s[i] = bv ? '1' : '0';
        bp -= 1;
    }

    s[i] = '\0';

    return;
}

int main(int argc, char **argv)
{
    unsigned int v = 77;
    char binstr[MAX_STR_LEN];

    convert_normalized_to_binstr(v, binstr);
    printf("binstr = %s\n", binstr);
    
    return 0;
}



