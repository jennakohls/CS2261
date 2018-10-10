	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"lab01.c"
	.text
	.align	2
	.global	setPixel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel, .-setPixel
	.align	2
	.global	drawVerticalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawVerticalLine, %function
drawVerticalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxeq	lr
	str	lr, [sp, #-4]!
	ldr	lr, .L16
	rsb	r0, r0, r0, lsl #4
	lsl	ip, r0, #4
	ldr	r0, [lr]
	add	lr, r1, r2
	add	r2, r1, ip
	sub	r2, r2, #-2147483647
	add	ip, lr, ip
	sub	r1, r0, #2
	add	r2, r0, r2, lsl #1
	add	r1, r1, ip, lsl #1
.L7:
	strh	r3, [r2, #2]!	@ movhi
	cmp	r2, r1
	bne	.L7
	ldr	lr, [sp], #4
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.size	drawVerticalLine, .-drawVerticalLine
	.align	2
	.global	drawHorizontalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHorizontalLine, %function
drawHorizontalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	bxeq	lr
	sub	ip, r2, #1
	ldr	r2, .L25
	and	ip, ip, #255
	add	ip, ip, r0
	ldr	r2, [r2]
	rsb	r0, r0, r0, lsl #4
	rsb	ip, ip, ip, lsl #4
	add	ip, r1, ip, lsl #4
	add	r1, r1, r0, lsl #4
	add	r0, r2, #480
	add	r1, r2, r1, lsl #1
	add	ip, r0, ip, lsl #1
.L20:
	strh	r3, [r1]	@ movhi
	add	r1, r1, #480
	cmp	r1, ip
	bne	.L20
	bx	lr
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.size	drawHorizontalLine, .-drawHorizontalLine
	.align	2
	.global	drawDiagonalLine
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawDiagonalLine, %function
drawDiagonalLine:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, lr}
	mov	lr, #0
	mov	ip, lr
	ldr	r4, .L35
	ldr	r5, [r4]
.L29:
	add	r4, ip, r0
	add	lr, lr, #1
	rsb	r4, r4, r4, lsl #4
	sub	ip, r1, ip
	and	lr, lr, #255
	add	ip, ip, r4, lsl #4
	lsl	ip, ip, #1
	cmp	lr, r2
	strh	r3, [r5, ip]	@ movhi
	mov	ip, lr
	blt	.L29
	pop	{r4, r5, lr}
	bx	lr
.L36:
	.align	2
.L35:
	.word	.LANCHOR0
	.size	drawDiagonalLine, .-drawDiagonalLine
	.align	2
	.global	drawTriangle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTriangle, %function
drawTriangle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	and	r1, r1, #255
	ands	lr, r2, #255
	moveq	r4, r1
	beq	.L40
	and	r5, r0, #255
	ldr	r7, .L54
	rsb	r8, r5, r5, lsl #4
	lsl	r8, r8, #4
	ldr	r6, [r7]
	add	r4, lr, r1
	add	ip, r8, r1
	add	r8, r4, r8
	add	ip, r6, ip, lsl #1
	add	r6, r6, r8, lsl #1
.L39:
	strh	r3, [ip], #2	@ movhi
	cmp	r6, ip
	bne	.L39
	cmp	lr, #0
	beq	.L40
	sub	lr, lr, #1
	and	lr, lr, #255
	add	lr, lr, r5
	ldr	ip, [r7]
	rsb	lr, lr, lr, lsl #4
	rsb	r5, r5, r5, lsl #4
	add	lr, r1, lr, lsl #4
	add	r6, ip, #480
	add	r1, r1, r5, lsl #4
	add	r1, ip, r1, lsl #1
	add	lr, r6, lr, lsl #1
.L41:
	strh	r3, [r1]	@ movhi
	add	r1, r1, #480
	cmp	lr, r1
	bne	.L41
.L40:
	cmp	r2, #0
	and	r4, r4, #255
	ble	.L37
	mov	ip, #0
	mov	r1, ip
	ldr	lr, .L54
	ldr	r5, [lr]
	and	r0, r0, #255
.L43:
	add	lr, r1, r0
	add	ip, ip, #1
	rsb	lr, lr, lr, lsl #4
	sub	r1, r4, r1
	and	ip, ip, #255
	add	r1, r1, lr, lsl #4
	lsl	r1, r1, #1
	cmp	r2, ip
	strh	r3, [r5, r1]	@ movhi
	mov	r1, ip
	bgt	.L43
.L37:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L55:
	.align	2
.L54:
	.word	.LANCHOR0
	.size	drawTriangle, .-drawTriangle
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #10
	mov	r3, #67108864
	ldr	r2, .L59
	push	{r4, lr}
	mov	r0, r1
	strh	r2, [r3]	@ movhi
	ldr	r4, .L59+4
	ldr	r3, .L59+8
	mov	r2, #20
	mov	lr, pc
	bx	r4
	mov	r3, #992
	mov	r2, #30
	mov	r1, #20
	mov	r0, #50
	mov	lr, pc
	bx	r4
	mov	r3, #31744
	mov	r2, #35
	mov	r1, #120
	mov	r0, #80
	mov	lr, pc
	bx	r4
.L57:
	b	.L57
.L60:
	.align	2
.L59:
	.word	1027
	.word	drawTriangle
	.word	1023
	.size	main, .-main
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 47) 7.1.0"
