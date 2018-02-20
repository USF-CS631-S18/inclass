.global iseq_s
.func iseq_s
 
iseq_s:
    cmp r0, r1
    beq eq
    mov r0, #0
    b end
eq:  
    mov r0, #1
end:
	bx lr      
