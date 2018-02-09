#include <stdio.h>

unsigned int replace_nibble(unsigned v, unsigned pos, unsigned x)
{
    unsigned new, tmp, mask;

    mask = ~(0xF << (pos * 4));
    tmp = v & mask;
    new = tmp | (x << (pos * 4));

    return new;
}

int main(int argc, char **argv)
{
    /* reading */
    
    unsigned int v = 0xFA21;
    unsigned int v2;
    unsigned int x;

    x = (v >> 8) & 0b1111;

    printf("v = %X, x = %X\n", v, x);

    /* construction */
    
    x = v & 0xFFFFF0FF;
    v2 = x | 0x00000C00;

    printf("v2 = %X\n", v2);

    v2 = replace_nibble(v, 2, 0xC);

    printf("v2 = %X\n", v2);
    
    return 0;
}
