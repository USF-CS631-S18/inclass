.global iseq_s
.func iseq_s
 
iseq_s:
    cmp r0, r1
    beq equal
    mov r0, #0
    b end
equal:
    mov r0, #1
end:
	bx lr      
