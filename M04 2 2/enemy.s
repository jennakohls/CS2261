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
	push	{r4, lr}
	mov	r2, #0
	mov	r0, #4
	mov	r1, #1
	mov	r4, #3
	mov	lr, #30
	mov	ip, #10
	ldr	r3, .L4
	str	r4, [r3, #64]
	str	lr, [r3, #68]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r0, [r3, #48]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #60]
	str	ip, [r3]
	str	ip, [r3, #4]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	pop	{r4, lr}
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
	ldr	r5, .L9
	ldr	r3, .L9+4
	ldr	r4, [r5, #32]
	smull	r0, r1, r4, r3
	asr	r3, r4, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #2
	bne	.L7
	ldr	r0, [r5, #44]
	ldr	r3, .L9+8
	add	r0, r0, #1
	ldr	r1, [r5, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r5, #44]
.L7:
	add	r4, r4, #1
	str	r4, [r5, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L10:
	.align	2
.L9:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L29
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	rsb	r3, r3, #132
	cmp	r1, r3
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #4]
	bge	.L12
	rsb	r0, r2, #230
	cmp	r0, r3
	ble	.L12
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L13
	mov	r2, #0
	ldr	r3, [r4, #16]
	add	r1, r3, r1
	ldr	r3, [r4, #68]
	cmp	r3, #49
	str	r2, [r4, #36]
	str	r1, [r4]
	addle	r2, r3, #1
	ble	.L18
.L27:
	ldr	r3, .L29+4
	mov	lr, pc
	bx	r3
	mov	r2, #1
	b	.L18
.L12:
	rsb	r2, r2, #222
	cmp	r2, r3
	ble	.L13
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L13
	mov	r1, #1
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
	str	r1, [r4, #36]
.L14:
	ldr	r3, [r4, #68]
	cmp	r3, #49
	addle	r2, r3, #1
	bgt	.L27
.L18:
	ldr	r5, [r4, #32]
	ldr	r3, .L29+8
	smull	r0, r1, r5, r3
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r2, [r4, #68]
	bne	.L19
	ldr	r0, [r4, #44]
	ldr	r3, .L29+12
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L19:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L13:
	cmp	r1, #10
	bgt	.L28
	cmp	r3, #10
	ble	.L16
	mov	r2, #2
	ldr	r1, [r4, #20]
	sub	r3, r3, r1
	str	r3, [r4, #4]
	str	r2, [r4, #36]
	b	.L14
.L28:
	cmp	r3, #10
	ble	.L16
	mov	r2, #0
	mov	r3, #3
	ldr	r0, [r4, #16]
	sub	r1, r1, r0
	str	r1, [r4]
	str	r2, [r4, #60]
	str	r3, [r4, #36]
	b	.L14
.L16:
	mov	r3, #1
	str	r3, [r4, #60]
	b	.L14
.L30:
	.align	2
.L29:
	.word	enemy
	.word	fireEBullet
	.word	1717986919
	.word	__aeabi_idivmod
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L49
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	rsb	r3, r3, #132
	cmp	r1, r3
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #4]
	bge	.L32
	rsb	r0, r2, #230
	cmp	r0, r3
	ble	.L32
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L33
	mov	r2, #0
	ldr	r3, [r4, #16]
	add	r1, r3, r1
	ldr	r3, [r4, #68]
	cmp	r3, #39
	str	r2, [r4, #36]
	str	r1, [r4]
	addle	r2, r3, #1
	ble	.L38
.L47:
	ldr	r3, .L49+4
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r1, .L49+8
	ldr	r3, [r1]
	add	r3, r3, r2
	str	r3, [r1]
	b	.L38
.L32:
	rsb	r2, r2, #222
	cmp	r2, r3
	ble	.L33
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L33
	mov	r1, #1
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
	str	r1, [r4, #36]
.L34:
	ldr	r3, [r4, #68]
	cmp	r3, #39
	addle	r2, r3, #1
	bgt	.L47
.L38:
	ldr	r5, [r4, #32]
	ldr	r3, .L49+12
	smull	r0, r1, r5, r3
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r2, [r4, #68]
	bne	.L39
	ldr	r0, [r4, #44]
	ldr	r3, .L49+16
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L39:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L33:
	cmp	r1, #10
	bgt	.L48
	cmp	r3, #10
	ble	.L36
	mov	r2, #2
	ldr	r1, [r4, #20]
	sub	r3, r3, r1
	str	r3, [r4, #4]
	str	r2, [r4, #36]
	b	.L34
.L48:
	cmp	r3, #10
	ble	.L36
	mov	r2, #0
	mov	r3, #3
	ldr	r0, [r4, #16]
	sub	r1, r1, r0
	str	r1, [r4]
	str	r2, [r4, #60]
	str	r3, [r4, #36]
	b	.L34
.L36:
	mov	r3, #1
	str	r3, [r4, #60]
	b	.L34
.L50:
	.align	2
.L49:
	.word	enemy
	.word	fireEBullet
	.word	bprow
	.word	1717986919
	.word	__aeabi_idivmod
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
	ldr	r4, .L71
	ldr	r1, [r4, #24]
	ldr	r3, [r4, #4]
	rsb	r2, r1, #222
	cmp	r3, r2
	ldr	r2, [r4]
	bge	.L52
	cmp	r2, #10
	bgt	.L52
	mov	r1, #1
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
	str	r1, [r4, #36]
	b	.L53
.L52:
	ldr	r0, [r4, #28]
	rsb	r0, r0, #132
	cmp	r0, r2
	ble	.L54
	rsb	r1, r1, #230
	cmp	r3, r1
	bge	.L54
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L55
	mov	r1, #0
	ldr	r3, [r4, #16]
	add	r2, r3, r2
	str	r2, [r4]
	str	r1, [r4, #36]
	b	.L53
.L54:
	cmp	r3, #10
	bgt	.L70
.L55:
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
.L53:
	ldr	r5, .L71+4
	ldr	r3, [r5]
	cmp	r3, #16
	ldr	r3, [r4, #68]
	bgt	.L57
	cmp	r3, #19
	bgt	.L58
.L69:
	add	r2, r3, #1
.L59:
	ldr	r5, [r4, #32]
	ldr	r3, .L71+8
	smull	r0, r1, r5, r3
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #3
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r2, [r4, #68]
	bne	.L61
	ldr	r0, [r4, #44]
	ldr	r3, .L71+12
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L61:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L70:
	ldr	r1, [r4, #60]
	cmp	r1, #0
	beq	.L55
	mov	r2, #2
	ldr	r1, [r4, #20]
	sub	r3, r3, r1
	str	r3, [r4, #4]
	str	r2, [r4, #36]
	b	.L53
.L57:
	cmp	r3, #99
	ble	.L69
	mov	r3, #0
	mov	r2, #1
	str	r3, [r5]
	b	.L59
.L58:
	ldr	r3, .L71+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	mov	r2, #1
	b	.L59
.L72:
	.align	2
.L71:
	.word	enemy
	.word	.LANCHOR0
	.word	1717986919
	.word	__aeabi_idivmod
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
	ldr	r4, .L85
	ldr	r3, [r4, #56]
	cmp	r3, #1
	beq	.L75
	cmp	r3, #2
	beq	.L76
	cmp	r3, #0
	beq	.L84
.L74:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r4, #72]
	cmp	r3, #4
	movgt	r3, #0
	movle	r2, #5
	addle	r3, r3, #1
	strle	r3, [r4, #72]
	strle	r2, [r4, #44]
	strgt	r3, [r4, #44]
	strgt	r3, [r4, #76]
.L73:
	pop	{r4, lr}
	bx	lr
.L84:
	bl	attack1
	b	.L74
.L76:
	bl	attack3
	b	.L74
.L75:
	bl	attack2
	b	.L74
.L86:
	.align	2
.L85:
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
	ldr	r3, .L88
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L89:
	.align	2
.L88:
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
	ldr	r1, .L94
	ldr	r3, [r1, #52]
	cmp	r3, #0
	bne	.L93
	ldr	r2, [r1, #4]
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, [r1, #44]
	ldr	r3, [r1, #36]
	add	r3, r3, r0, lsl #5
	lsl	r3, r3, #2
	ldr	r0, .L94+4
	ldrb	r1, [r1]	@ zero_extendqisi2
	add	r3, r3, #1
	orr	r3, r3, #8192
	strh	r2, [r0, #10]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	bx	lr
.L93:
	ldr	r2, .L94+4
	ldrh	r3, [r2, #8]
	orr	r3, r3, #512
	strh	r3, [r2, #8]	@ movhi
	bx	lr
.L95:
	.align	2
.L94:
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
