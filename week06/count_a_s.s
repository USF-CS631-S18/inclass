    .global count_a_s
    .func count_a_s
    
count_a_s:
    mov r1, #0
loop:
    ldrb r2, [r0]
    cmp r2, #0
    beq end
    cmp r2, #97 /* 'a' */
    addeq r1, r1, #1
    add r0, r0, #1
    b loop
end:
    mov r0, r1
    bx lr
    
