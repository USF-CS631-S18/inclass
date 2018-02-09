#include<stdio.h>  
#include<stdint.h>  
#include<string.h>  
 
struct foo {  
        char name[32];  
        int age;  
        int weight;  
};  
 
uint8_t memory[32768];  
 
 
void print_foo(struct foo *fp)  
{  
        printf("Name: %s, Age: %d, Weight: %d\n",  
                fp->name, fp->age, fp->weight);  
}  
 
int main(int argc, char *argv[])  
{  
        struct foo *foop;  
 
        foop = (struct foo *) &memory[0];  
 
        strcpy(foop->name, "Greg");  
        foop->age = 29;  
        foop->weight = 150;  
 
        foop = (struct foo *) &memory[(sizeof(struct foo))];  
 
        strcpy(foop->name, "Tony");  
        foop->age = 20;  
        foop->weight = 200;  
 
        print_foo((struct foo *) &memory[0]);  
        print_foo((struct foo *) &memory[(sizeof(struct foo))]);  
 
        return 0;  
}
