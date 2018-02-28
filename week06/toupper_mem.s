.data
hello_str:
        .asciz "hello"
        
.text

.globl main
.func main
main:
        sub sp, sp, #8
        str lr, [sp]

        sub sp, sp, #8

        /* stack allocation */
        
        mov r0, #'h'
        strb r0, [sp]
        mov r0, #'e'
        strb r0, [sp, #1]
        mov r0, #'l'
        strb r0, [sp, #2]
        mov r0, #'l'
        strb r0, [sp, #3]
        mov r0, #'o'
        strb r0, [sp, #4]
        mov r0, #0
        strb r0, [sp, #5]

        mov r0, sp
        bl toupper

        mov r0, sp
        bl puts

        /* static allocation */
        ldr r0, =hello_str
        bl toupper

        ldr r0, =hello_str
        bl puts

        /* dynamic allocation */

        mov r0, #6
        bl malloc
        mov r4, r0
        
        mov r0, #'h'
        strb r0, [r4]
        mov r0, #'e'
        strb r0, [r4, #1]
        mov r0, #'l'
        strb r0, [r4, #2]
        mov r0, #'l'
        strb r0, [r4, #3]
        mov r0, #'o'
        strb r0, [r4, #4]
        mov r0, #0
        strb r0, [r4, #5]

        mov r0, r4
        bl toupper
        
        mov r0, r4
        bl puts
        
        add sp, sp, #8
        ldr lr, [sp]
        add sp, sp, #8
        bx lr
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
.globl puts
.globl malloc        
