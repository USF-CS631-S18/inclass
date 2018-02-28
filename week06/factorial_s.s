    .global factorial_s
    .func factorial_s

factorial_s:
    sub sp, sp, #8
    str lr, [sp]

    cmp r0, #0
    bne rec
    mov r0, #1
    b end

rec:
    str r0, [sp, #4]
    sub r0, r0, #1
    bl factorial_s
    ldr r1, [sp, #4]
    mul r0, r1, r0

end:
    ldr lr, [sp]
    add sp, sp, #8
    bx lr
    
