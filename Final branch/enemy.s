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
	.file	"enemy.c"
	.text
	.align	2
	.global	initEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemy, %function
initEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r2, #0
	mov	r1, #1
	mov	r6, #8
	mov	r5, #16
	mov	r4, #4
	mov	lr, #3
	mov	r0, #10
	mov	ip, #30
	ldr	r3, .L4
	str	r6, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #48]
	str	lr, [r3, #64]
	str	ip, [r3, #68]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	enemy
	.size	initEnemy, .-initEnemy
	.global	__aeabi_idivmod
	.align	2
	.global	animateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateEnemy, %function
animateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L12
	ldr	r3, .L12+4
	ldr	r4, [r5, #32]
	smull	r0, r1, r4, r3
	asr	r3, r4, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #2
	bne	.L7
	ldr	r0, [r5, #44]
	ldr	r3, .L12+8
	add	r0, r0, #1
	ldr	r1, [r5, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #44]
.L7:
	ldr	r3, [r5, #36]
	cmp	r3, #3
	cmpne	r3, #0
	add	r4, r4, #1
	str	r4, [r5, #32]
	beq	.L11
	sub	r3, r3, #1
	cmp	r3, #1
	movls	r2, #16
	movls	r3, #8
	strls	r2, [r5, #24]
	strls	r3, [r5, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L11:
	mov	r2, #8
	mov	r3, #16
	str	r2, [r5, #24]
	str	r3, [r5, #28]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	enemy
	.word	1717986919
	.word	__aeabi_idivmod
	.size	animateEnemy, .-animateEnemy
	.align	2
	.global	attack1
	.syntax unified
	.arm
	.fpu softvfp
	.type	attack1, %function
attack1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L30
	ldr	r2, [r4]
	cmp	r2, #129
	ldr	r3, [r4, #4]
	bgt	.L15
	cmp	r3, #229
	bgt	.L15
	ldr	r1, [r4, #60]
	cmp	r1, #0
	beq	.L16
	mov	r1, #0
	ldr	r3, [r4, #16]
	add	r2, r3, r2
	str	r2, [r4]
	str	r1, [r4, #36]
	b	.L17
.L15:
	ldr	r1, [r4, #24]
	rsb	r1, r1, #222
	cmp	r1, r3
	ble	.L16
	ldr	r1, [r4, #60]
	cmp	r1, #0
	beq	.L16
	mov	r1, #1
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
	str	r1, [r4, #36]
.L17:
	ldr	r3, [r4, #68]
	cmp	r3, #49
	addle	r3, r3, #1
	ble	.L21
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	mov	r3, #1
.L21:
	str	r3, [r4, #68]
	pop	{r4, lr}
	b	animateEnemy
.L16:
	cmp	r2, #10
	bgt	.L29
	cmp	r3, #10
	ble	.L19
	mov	r2, #2
	ldr	r1, [r4, #20]
	sub	r3, r3, r1
	str	r3, [r4, #4]
	str	r2, [r4, #36]
	b	.L17
.L29:
	cmp	r3, #10
	ble	.L19
	mov	r1, #0
	mov	r3, #3
	ldr	r0, [r4, #16]
	sub	r2, r2, r0
	str	r2, [r4]
	str	r1, [r4, #60]
	str	r3, [r4, #36]
	b	.L17
.L19:
	mov	r3, #1
	str	r3, [r4, #60]
	b	.L17
.L31:
	.align	2
.L30:
	.word	enemy
	.word	fireEBullet
	.size	attack1, .-attack1
	.align	2
	.global	attack2
	.syntax unified
	.arm
	.fpu softvfp
	.type	attack2, %function
attack2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L48
	ldr	r2, [r4]
	cmp	r2, #129
	ldr	r3, [r4, #4]
	bgt	.L33
	cmp	r3, #229
	bgt	.L33
	ldr	r1, [r4, #60]
	cmp	r1, #0
	beq	.L34
	mov	r1, #0
	ldr	r3, [r4, #16]
	add	r2, r3, r2
	str	r2, [r4]
	str	r1, [r4, #36]
	b	.L35
.L33:
	ldr	r1, [r4, #24]
	rsb	r1, r1, #222
	cmp	r1, r3
	ble	.L34
	ldr	r1, [r4, #60]
	cmp	r1, #0
	beq	.L34
	mov	r1, #1
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
	str	r1, [r4, #36]
.L35:
	ldr	r3, [r4, #68]
	cmp	r3, #39
	addle	r3, r3, #1
	ble	.L39
	ldr	r3, .L48+4
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r1, .L48+8
	ldr	r2, [r1]
	add	r2, r2, r3
	str	r2, [r1]
.L39:
	str	r3, [r4, #68]
	pop	{r4, lr}
	b	animateEnemy
.L34:
	cmp	r2, #10
	bgt	.L47
	cmp	r3, #10
	ble	.L37
	mov	r2, #2
	ldr	r1, [r4, #20]
	sub	r3, r3, r1
	str	r3, [r4, #4]
	str	r2, [r4, #36]
	b	.L35
.L47:
	cmp	r3, #10
	ble	.L37
	mov	r1, #0
	mov	r3, #3
	ldr	r0, [r4, #16]
	sub	r2, r2, r0
	str	r2, [r4]
	str	r1, [r4, #60]
	str	r3, [r4, #36]
	b	.L35
.L37:
	mov	r3, #1
	str	r3, [r4, #60]
	b	.L35
.L49:
	.align	2
.L48:
	.word	enemy
	.word	fireEBullet
	.word	bprow
	.size	attack2, .-attack2
	.align	2
	.global	attack3
	.syntax unified
	.arm
	.fpu softvfp
	.type	attack3, %function
attack3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L69
	ldr	r1, [r4, #24]
	ldr	r3, [r4, #4]
	rsb	r2, r1, #222
	cmp	r3, r2
	ldr	r2, [r4]
	bge	.L51
	cmp	r2, #10
	bgt	.L51
	mov	r1, #1
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
	str	r1, [r4, #36]
	b	.L52
.L51:
	ldr	r0, [r4, #28]
	rsb	r0, r0, #132
	cmp	r0, r2
	ble	.L53
	rsb	r1, r1, #230
	cmp	r3, r1
	bge	.L53
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L54
	mov	r1, #0
	ldr	r3, [r4, #16]
	add	r2, r3, r2
	str	r2, [r4]
	str	r1, [r4, #36]
	b	.L52
.L53:
	cmp	r3, #10
	bgt	.L68
.L54:
	cmp	r2, #10
	movgt	r1, #0
	movgt	r3, #3
	movle	r3, #1
	ldrgt	r0, [r4, #16]
	subgt	r2, r2, r0
	strgt	r2, [r4]
	strgt	r1, [r4, #60]
	strgt	r3, [r4, #36]
	strle	r3, [r4, #60]
.L52:
	ldr	r5, .L69+4
	ldr	r3, [r5]
	cmp	r3, #16
	ldr	r3, [r4, #68]
	bgt	.L56
	cmp	r3, #19
	bgt	.L57
.L67:
	add	r3, r3, #1
	str	r3, [r4, #68]
	pop	{r4, r5, r6, lr}
	b	animateEnemy
.L68:
	ldr	r1, [r4, #60]
	cmp	r1, #0
	beq	.L54
	mov	r2, #2
	ldr	r1, [r4, #20]
	sub	r3, r3, r1
	str	r3, [r4, #4]
	str	r2, [r4, #36]
	b	.L52
.L56:
	cmp	r3, #99
	ble	.L67
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5]
	str	r3, [r4, #68]
	pop	{r4, r5, r6, lr}
	b	animateEnemy
.L57:
	ldr	r3, .L69+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	mov	r3, #1
	str	r3, [r4, #68]
	pop	{r4, r5, r6, lr}
	b	animateEnemy
.L70:
	.align	2
.L69:
	.word	enemy
	.word	.LANCHOR0
	.word	fireEBullet
	.size	attack3, .-attack3
	.align	2
	.global	updateEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemy, %function
updateEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L80
	ldr	r3, [r4, #56]
	cmp	r3, #1
	beq	.L73
	cmp	r3, #2
	beq	.L74
	cmp	r3, #0
	beq	.L79
.L72:
	ldr	r3, [r4, #76]
	sub	r2, r3, #1
	cmp	r2, #18
	movhi	r3, #0
	addls	r3, r3, #1
	str	r3, [r4, #76]
	pop	{r4, lr}
	bx	lr
.L79:
	bl	attack1
	b	.L72
.L74:
	bl	attack3
	b	.L72
.L73:
	bl	attack2
	b	.L72
.L81:
	.align	2
.L80:
	.word	enemy
	.size	updateEnemy, .-updateEnemy
	.align	2
	.global	clearEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearEnemy, %function
clearEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #10
	mov	r1, #4
	mov	r2, #1
	ldr	r3, .L83
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L84:
	.align	2
.L83:
	.word	enemy
	.size	clearEnemy, .-clearEnemy
	.align	2
	.global	drawEnemy
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemy, %function
drawEnemy:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L89
	ldr	r3, [r1, #52]
	cmp	r3, #0
	bne	.L88
	ldr	r2, [r1, #4]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #44]
	ldr	r3, [r1, #36]
	add	r3, r3, r0, lsl #5
	lsl	r3, r3, #2
	ldr	r0, .L89+4
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, #1
	orr	r3, r3, #8192
	strh	r2, [r0, #10]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	bx	lr
.L88:
	ldr	r2, .L89+4
	ldrh	r3, [r2, #8]
	orr	r3, r3, #512
	strh	r3, [r2, #8]	@ movhi
	bx	lr
.L90:
	.align	2
.L89:
	.word	enemy
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
	.global	count
	.comm	cos_table,720,4
	.comm	sin_table,720,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	count, %object
	.size	count, 4
count:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
