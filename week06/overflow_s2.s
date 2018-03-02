    .global overflow_s
    .func overflow_s

    .data
inst1:
    .word 0xe3a00063
inst2:
    .word 0xe28dd010
inst3:
    .word 0xe12fff1e
    
    .text
overflow_s:
    sub sp, sp, #16

    /*
    ldr r0, =inst1
    ldr r1, [r0]
    str r1, [sp, #0]

    ldr r0, =inst2
    ldr r1, [r0]
    str r1, [sp, #4]

    ldr r0, =inst3
    ldr r1, [r0]
    str r1, [sp, #8]
    */

    ldr r1, =0xe3a00063
    str r1, [sp, #0]

    ldr r1, =0xe28dd010
    str r1, [sp, #4]

    ldr r1, =0xe12fff1e
    str r1, [sp, #8]

    bx sp

    mov r0, #1
    add sp, sp, #16
    bx lr
