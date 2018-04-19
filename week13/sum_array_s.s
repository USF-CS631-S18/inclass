.global sum_array_s
.func sum_array_s

/* r0 is base address */
/* r1 is length of array */

sum_array_s:
    mov r2, #0 ; sum = 0
    mov r3, #0 ; i = 0

loop:
    cmp r3, r1
    beq loop_end
    ldr r12, [r0, r3, lsl #2]
    add r2, r2, r12
    add r3, r3, #1
    b loop

loop_end:
    mov r0, r2
    bx lr
