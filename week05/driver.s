	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"driver.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"add_c(1,3) = %d\012\000"
	.align	2
.LC1:
	.ascii	"add_s(1,3) = %d\012\000"
	.align	2
.LC2:
	.ascii	"iseq_c(1,3) = %d\012\000"
	.align	2
.LC3:
	.ascii	"iseq_s(1,3) = %d\012\000"
	.align	2
.LC4:
	.ascii	"iseq_c(77,77) = %d\012\000"
	.align	2
.LC5:
	.ascii	"iseq_s(77,77) = %d\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r1, #3
	mov	r0, #1
	bl	add_c
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L3
	bl	printf
	mov	r1, #3
	mov	r0, #1
	bl	add_s
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L3+4
	bl	printf
	mov	r1, #3
	mov	r0, #1
	bl	iseq_c
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L3+8
	bl	printf
	mov	r1, #3
	mov	r0, #1
	bl	iseq_s
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L3+12
	bl	printf
	mov	r1, #77
	mov	r0, #77
	bl	iseq_c
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L3+16
	bl	printf
	mov	r1, #77
	mov	r0, #77
	bl	iseq_s
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L3+20
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L4:
	.align	2
.L3:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
