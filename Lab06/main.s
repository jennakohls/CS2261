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
	@ args = 0, pretend = 0, frame = 2048
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	mov	r1, #272
	mov	r2, #8064
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #2048
	sub	sp, sp, #4
	ldr	r4, .L4
	strh	r1, [r3]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	ldr	r1, .L4+4
	mov	r3, #256
	mov	r2, #83886080
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r7, #8
	mov	r0, sp
	mov	r2, #2048
	mov	r1, #0
	ldr	r3, .L4+8
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mov	r6, #5
	mov	lr, #4
	mov	r1, #2
	mov	r2, #6
	mov	ip, #10
	mov	r5, #3
	add	r0, sp, #876
	strh	r7, [r0]	@ movhi
	add	r0, sp, #1984
	strh	r3, [r0]	@ movhi
	add	r0, sp, #2032
	add	r0, r0, #14
	strh	r3, [sp]	@ movhi
	strh	r3, [sp, #62]	@ movhi
	strh	r3, [r0]	@ movhi
	add	r3, sp, #1168
	add	r3, r3, #12
	strh	r6, [r3]	@ movhi
	add	r3, sp, #1632
	add	r3, r3, #4
	strh	lr, [r3]	@ movhi
	add	lr, sp, #1792
	add	r3, sp, #1760
	add	lr, lr, #8
	strh	r1, [lr]	@ movhi
	add	r3, r3, #12
	add	lr, sp, #2000
	add	lr, lr, #2
	strh	r2, [r3]	@ movhi
	ldr	r1, .L4+12
	ldr	r2, .L4+16
	ldr	r3, .L4+20
	strh	ip, [lr]	@ movhi
	add	ip, ip, #67108865
	add	ip, ip, #720896
	mov	r0, r5
	str	r3, [sp, #260]
	str	r2, [sp, #324]
	str	r2, [sp, #388]
	str	r1, [sp, #452]
	add	r7, sp, #800
	mov	r3, #1152
	mov	r2, #100663296
	ldr	r1, .L4+24
	str	ip, [sp, #516]
	strh	r5, [r7]	@ movhi
	mov	lr, pc
	bx	r4
	mov	r1, sp
	mov	r0, r5
	mov	r3, #1024
	ldr	r2, .L4+28
	mov	lr, pc
	bx	r4
	mov	r3, #0
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	str	r3, [r2]
	ldr	r2, .L4+40
	str	r3, [r1]
	ldrh	r2, [r2, #48]
	ldr	r3, .L4+44
	strh	r2, [r3]	@ movhi
	add	sp, sp, #2048
	add	sp, sp, #4
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	lab06Pal
	.word	memset
	.word	738658311
	.word	589833
	.word	67567623
	.word	lab06Tiles
	.word	100726784
	.word	vOff
	.word	hOff
	.word	67109120
	.word	buttons
	.size	initialize, .-initialize
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	push	{r4, r5, r6, lr}
	ldr	r5, .L16+4
	tst	r3, #32
	ldreq	r3, [r5]
	subeq	r3, r3, #1
	streq	r3, [r5]
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldreq	r3, [r5]
	addeq	r3, r3, #1
	streq	r3, [r5]
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	ldr	r4, .L16+8
	tst	r3, #128
	ldreq	r3, [r4]
	addeq	r3, r3, #1
	streq	r3, [r4]
	ldr	r3, .L16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldreq	r3, [r4]
	subeq	r3, r3, #1
	streq	r3, [r4]
	ldr	r3, .L16+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldrh	r1, [r5]
	ldrh	r2, [r4]
	strh	r1, [r3, #16]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r2, [r3, #18]	@ movhi
	bx	lr
.L17:
	.align	2
.L16:
	.word	67109120
	.word	hOff
	.word	vOff
	.word	waitForVBlank
	.size	game, .-game
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
	push	{r7, lr}
	ldr	r3, .L21
	mov	lr, pc
	bx	r3
	ldr	r7, .L21+4
	ldr	r6, .L21+8
	ldr	r4, .L21+12
	ldr	r5, .L21+16
.L19:
	mov	lr, pc
	bx	r7
	ldrh	r3, [r4]
	strh	r3, [r6]	@ movhi
	ldrh	r3, [r5, #48]
	strh	r3, [r4]	@ movhi
	b	.L19
.L22:
	.align	2
.L21:
	.word	initialize
	.word	game
	.word	oldButtons
	.word	buttons
	.word	67109120
	.size	main, .-main
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.ident	"GCC: (devkitARM release 47) 7.1.0"
