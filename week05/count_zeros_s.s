.global count_zeros_s
.func count_zeros_s

/* r0 = base address of array
 * r1 = length of array
 */
count_zeros_s:
    mov r2, #0
    mov r3, #0

loop:   
    cmp r3, r1
    bge loop_end
    ldr r12, [r0, r3, LSL #2]
    cmp r12, #0
    addeq r2, r2, #1
    add r3, r3, #1
    b loop

loop_end:
    mov r0, r2
    bx lr
    
    
    
