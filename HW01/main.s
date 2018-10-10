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
	.file	"main.c"
	.text
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mvn	r1, #32768
	push	{r4, lr}
	ldr	r0, .L4
	ldr	r2, .L4+4
	strh	r0, [r3]	@ movhi
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	bgColor
	.word	32767
	.word	fillScreen
	.size	initialize, .-initialize
	.align	2
	.global	draw1
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw1, %function
draw1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L8
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r4, .L8+4
	mov	r2, #9
	mov	r1, #60
	mov	r0, #40
	mov	lr, pc
	bx	r4
	mov	r2, #31
	mov	r3, #0
	str	r2, [sp]
	mov	r1, #70
	mov	r2, #7
	mov	r0, #50
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	32767
	.word	drawHeart
	.size	draw1, .-draw1
	.align	2
	.global	draw2
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw2, %function
draw2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L12
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r4, .L12+4
	mov	r2, #7
	mov	r1, #70
	mov	r0, #50
	mov	lr, pc
	bx	r4
	mov	r2, #31
	mov	r3, #0
	str	r2, [sp]
	mov	r1, #65
	mov	r2, #8
	mov	r0, #45
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	32767
	.word	drawHeart
	.size	draw2, .-draw2
	.align	2
	.global	draw3
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw3, %function
draw3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L16
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r4, .L16+4
	mov	r2, #8
	mov	r1, #65
	mov	r0, #45
	mov	lr, pc
	bx	r4
	mov	r2, #31
	mov	r3, #0
	str	r2, [sp]
	mov	r1, #70
	mov	r2, #7
	mov	r0, #50
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	32767
	.word	drawHeart
	.size	draw3, .-draw3
	.align	2
	.global	draw4
	.syntax unified
	.arm
	.fpu softvfp
	.type	draw4, %function
draw4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L20
	sub	sp, sp, #8
	str	r3, [sp]
	ldr	r4, .L20+4
	mov	r2, #7
	mov	r1, #70
	mov	r0, #50
	mov	lr, pc
	bx	r4
	mov	r2, #31
	mov	r3, #0
	str	r2, [sp]
	mov	r1, #60
	mov	r2, #9
	mov	r0, #40
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	32767
	.word	drawHeart
	.size	draw4, .-draw4
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
	mov	r3, #67108864
	mvn	r1, #32768
	ldr	r0, .L25
	ldr	r2, .L25+4
	push	{r7, lr}
	strh	r0, [r3]	@ movhi
	ldr	r0, .L25+8
	ldr	r3, .L25+12
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r8, .L25+16
	ldr	r4, .L25+20
	ldr	r7, .L25+24
	ldr	r6, .L25+28
	ldr	r5, .L25+32
.L23:
	mov	lr, pc
	bx	r8
	mov	r0, #200
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r7
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r6
	mov	r0, #100
	mov	lr, pc
	bx	r4
	mov	lr, pc
	bx	r5
	mov	r0, #100
	mov	lr, pc
	bx	r4
	b	.L23
.L26:
	.align	2
.L25:
	.word	1027
	.word	bgColor
	.word	32767
	.word	fillScreen
	.word	draw1
	.word	delay
	.word	draw2
	.word	draw3
	.word	draw4
	.size	main, .-main
	.comm	bgColor,2,2
	.ident	"GCC: (devkitARM release 47) 7.1.0"
