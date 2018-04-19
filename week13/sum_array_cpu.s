/* r0 is base address */
/* r1 is length of array */

main:
    mov sp, #128
    add sp, sp, sp /* 256 */
    add sp, sp, sp /* 512 */
    add sp, sp, sp /* 1024 */

    sub sp, sp, #4
    mov r0, #5
    str r0, [sp]

    sub sp, sp, #4
    mov r0, #4
    str r0, [sp]
    
    sub sp, sp, #4
    mov r0, #3
    str r0, [sp]
    
    sub sp, sp, #4
    mov r0, #2
    str r0, [sp]    

    sub sp, sp, #4
    mov r0, #1
    str r0, [sp]

    mov r0, sp
    mov r1, #5
    
    bl sum_array_s

halt:
    b halt
    
sum_array_s:
    mov r2, #0 ; sum = 0
    mov r3, #0 ; i = 0

loop:
    cmp r3, r1
    beq loop_end
    ldr r12, [r0]
    add r2, r2, r12
    add r3, r3, #1
    add r0, r0, #4
    b loop

loop_end:
    mov r0, r2
    bx lr
