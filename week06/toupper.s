/* -- toupper.s */
.data
 
greeting:
 .asciz "argv[1] = %s\n"
 
.balign 4
return: .word 0
 
.text
 
.global main
.func  main
main:
        sub sp, sp, #8
        str lr, [sp]              /*   *r1 ← lr */

        /* you must provide argv[1] on command line */
        add r1, r1, #4
        ldr r4, [r1]

        mov r0, r4
        bl toupper

        mov r1, r4               
        ldr r0, =greeting         /* r0 ← &address_of_greeting */
                                  /* First parameter of puts */

        bl printf                 /* Call to puts */
                                  /* lr ← address of next instruction */
 
        ldr lr, [sp]
        add sp, sp, #8

        bx lr                     /* return from main */
.endfunc
        
.func toupper
toupper:
        ldrb r1, [r0]        
        cmp r1, #0
        beq toupper_end
        sub r1, r1, #32
        strb r1, [r0]
        add r0, r0, #1
        b toupper
toupper_end:
        bx lr
.endfunc
                
/* External */
.global printf
