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
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+8
	mov	r2, #100663296
	ldr	r1, .L4+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #4096
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L4+24
	ldr	r1, .L4+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+32
	ldr	r1, .L4+36
	mov	r0, #3
	mov	r3, #16384
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+40
	mov	lr, pc
	bx	r3
	mov	r7, #4352
	mov	r3, #67108864
	mov	r5, #56320
	mov	r4, #72
	mov	r1, #3
	mov	r2, #0
	mov	r6, #112
	mov	ip, #16
	mov	r0, #1
	mov	lr, #100
	strh	r7, [r3]	@ movhi
	strh	r5, [r3, #8]	@ movhi
	ldr	r3, .L4+44
	ldr	r5, .L4+48
	str	r4, [r3]
	ldrh	r5, [r5, #48]
	ldr	r4, .L4+52
	str	r1, [r3, #40]
	ldr	r1, .L4+56
	str	r6, [r3, #4]
	strh	r5, [r4]	@ movhi
	stm	r1, {r2, lr}
	str	ip, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r2, [r3, #24]
	str	r2, [r3, #36]
	str	r2, [r3, #28]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	bgPal
	.word	4848
	.word	bgTiles
	.word	100720640
	.word	bgMap
	.word	83886592
	.word	spritesheetPal
	.word	100728832
	.word	spritesheetTiles
	.word	hideSprites
	.word	pikachu
	.word	67109120
	.word	buttons
	.word	.LANCHOR0
	.size	initialize, .-initialize
	.global	__aeabi_idivmod
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, fp, lr}
	ldr	r7, .L22
	sub	sp, sp, #12
	ldr	r3, .L22+4
	mov	fp, r7
	mov	lr, pc
	bx	r3
	ldr	r4, .L22+8
	ldr	r5, .L22+12
	ldr	r10, .L22+16
	ldr	r9, .L22+20
	ldr	r8, .L22+24
	ldr	r6, .L22+28
	b	.L15
.L21:
	mov	r3, #3
	ldr	r1, [r5]
	ldrh	r0, [r6, #48]
	sub	r1, r1, #1
	tst	r0, #16
	str	r1, [r5]
	str	r3, [r4, #28]
	bne	.L12
.L11:
	mov	r3, #2
	add	r1, r1, #1
	str	r1, [r5]
	str	r3, [r4, #28]
.L12:
	add	r2, r2, #1
	str	r2, [r4, #24]
.L14:
	ldr	r1, [r4, #36]
	ldr	r2, [r4, #4]
	add	r3, r3, r1, lsl #5
	ldr	r1, [r4]
	lsl	r3, r3, #1
	orr	r2, r2, #16384
	strh	r3, [r7, #4]	@ movhi
	strh	r2, [r7, #2]	@ movhi
	strh	r1, [r7]	@ movhi
	mov	lr, pc
	bx	r10
	mov	r3, #512
	mov	r2, #117440512
	mov	r1, fp
	mov	r0, #3
	mov	lr, pc
	bx	r9
	mov	r3, #67108864
	ldrh	r1, [r5]
	ldrh	r2, [r5, #4]
	strh	r1, [r3, #16]	@ movhi
	strh	r2, [r3, #18]	@ movhi
.L15:
	mov	ip, #4
	ldr	r2, [r4, #24]
	smull	r0, r1, r2, r8
	asr	r3, r2, #31
	rsb	r3, r3, r1, asr #3
	add	r1, r3, r3, lsl #2
	ldr	r3, [r4, #28]
	cmp	r2, r1, lsl #2
	str	ip, [r4, #28]
	str	r3, [r4, #32]
	bne	.L7
	add	r0, r4, #36
	ldm	r0, {r0, r1}
	stm	sp, {r2, r3}
	add	r0, r0, #1
	ldr	r3, .L22+32
	mov	lr, pc
	bx	r3
	ldm	sp, {r2, r3}
	str	r1, [r4, #36]
.L7:
	ldrh	r1, [r6, #48]
	tst	r1, #64
	moveq	r0, #1
	ldreq	r1, [r5, #4]
	subeq	r1, r1, #1
	streq	r1, [r5, #4]
	ldrh	r1, [r6, #48]
	streq	r0, [r4, #28]
	ands	r1, r1, #128
	ldreq	r0, [r5, #4]
	streq	r1, [r4, #28]
	ldrh	r1, [r6, #48]
	addeq	r0, r0, #1
	streq	r0, [r5, #4]
	tst	r1, #32
	beq	.L21
	ldrh	r1, [r6, #48]
	tst	r1, #16
	ldreq	r1, [r5]
	beq	.L11
.L13:
	ldr	r1, [r4, #28]
	cmp	r1, #4
	streq	r3, [r4, #28]
	beq	.L14
.L16:
	mov	r3, r1
	b	.L12
.L23:
	.align	2
.L22:
	.word	shadowOAM
	.word	initialize
	.word	pikachu
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	1717986919
	.word	67109120
	.word	__aeabi_idivmod
	.size	main, .-main
	.comm	pikachu,44,4
	.comm	shadowOAM,1024,4
	.global	vOff
	.global	hOff
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hOff, %object
	.size	hOff, 4
hOff:
	.space	4
	.type	vOff, %object
	.size	vOff, 4
vOff:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
