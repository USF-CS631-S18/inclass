/* -- hello01.s */
.data
 
greeting:
    .asciz "Hello world\n"

greeting2:   
    .asciz "Hello world2\n"
    
.text
 
.global main
main:
        sub sp, sp, #8
        str lr, [sp]              /* *r1 ← lr */
 
        ldr r0, =greeting2         /* r0 ← &address_of_greeting */
                                  /* First parameter of puts */
 
        bl printf                 /* Call to puts */
                                  /* lr ← address of next instruction */
 
        ldr lr, [sp]
        add sp, sp, #8

        bx lr                     /* return from main */
 
/* External */
.global printf
