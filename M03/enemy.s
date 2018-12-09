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
	push	{r4, r5, lr}
	mov	r1, #1
	mov	lr, #4
	mov	r2, #0
	mov	r5, #2
	mov	r4, #30
	mov	ip, #10
	mov	r0, #3
	ldr	r3, .L4
	str	lr, [r3, #24]
	str	lr, [r3, #28]
	str	r5, [r3, #56]
	str	r4, [r3, #68]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #60]
	str	ip, [r3]
	str	ip, [r3, #4]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #48]
	str	r0, [r3, #64]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	enemy
	.size	initEnemy, .-initEnemy
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
	ldr	r4, .L22
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	rsb	r3, r3, #150
	cmp	r1, r3
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #4]
	bge	.L7
	rsb	r0, r2, #230
	cmp	r0, r3
	ble	.L7
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L8
	ldr	r3, [r4, #16]
	add	r1, r3, r1
	str	r1, [r4]
	b	.L9
.L7:
	rsb	r2, r2, #222
	cmp	r2, r3
	ble	.L8
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L8
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
.L9:
	ldr	r3, [r4, #68]
	cmp	r3, #49
	addle	r3, r3, #1
	ble	.L13
	ldr	r3, .L22+4
	mov	lr, pc
	bx	r3
	mov	r3, #1
.L13:
	str	r3, [r4, #68]
	pop	{r4, lr}
	bx	lr
.L8:
	cmp	r1, #10
	bgt	.L21
	cmp	r3, #10
	ble	.L11
	ldr	r2, [r4, #20]
	sub	r3, r3, r2
	str	r3, [r4, #4]
	b	.L9
.L21:
	cmp	r3, #10
	ble	.L11
	mov	r3, #0
	ldr	r2, [r4, #16]
	sub	r1, r1, r2
	str	r1, [r4]
	str	r3, [r4, #60]
	b	.L9
.L11:
	mov	r3, #1
	str	r3, [r4, #60]
	b	.L9
.L23:
	.align	2
.L22:
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
	ldr	r4, .L40
	ldr	r3, [r4, #28]
	ldr	r1, [r4]
	rsb	r3, r3, #150
	cmp	r1, r3
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #4]
	bge	.L25
	rsb	r0, r2, #230
	cmp	r0, r3
	ble	.L25
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L26
	ldr	r3, [r4, #16]
	add	r1, r3, r1
	str	r1, [r4]
	b	.L27
.L25:
	rsb	r2, r2, #222
	cmp	r2, r3
	ble	.L26
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L26
	ldr	r2, [r4, #20]
	add	r3, r2, r3
	str	r3, [r4, #4]
.L27:
	ldr	r3, [r4, #68]
	cmp	r3, #39
	addle	r3, r3, #1
	ble	.L31
	ldr	r3, .L40+4
	mov	lr, pc
	bx	r3
	mov	r3, #1
	ldr	r1, .L40+8
	ldr	r2, [r1]
	add	r2, r2, r3
	str	r2, [r1]
.L31:
	str	r3, [r4, #68]
	pop	{r4, lr}
	bx	lr
.L26:
	cmp	r1, #10
	bgt	.L39
	cmp	r3, #10
	ble	.L29
	ldr	r2, [r4, #20]
	sub	r3, r3, r2
	str	r3, [r4, #4]
	b	.L27
.L39:
	cmp	r3, #10
	ble	.L29
	mov	r3, #0
	ldr	r2, [r4, #16]
	sub	r1, r1, r2
	str	r1, [r4]
	str	r3, [r4, #60]
	b	.L27
.L29:
	mov	r3, #1
	str	r3, [r4, #60]
	b	.L27
.L41:
	.align	2
.L40:
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
	ldr	r4, .L61
	ldr	r1, [r4, #24]
	ldr	r3, [r4, #4]
	rsb	r2, r1, #222
	cmp	r3, r2
	ldr	r2, [r4]
	bge	.L43
	cmp	r2, #10
	ldrle	r2, [r4, #20]
	addle	r3, r2, r3
	strle	r3, [r4, #4]
	ble	.L44
.L43:
	ldr	r0, [r4, #28]
	rsb	r0, r0, #150
	cmp	r0, r2
	ble	.L45
	rsb	r1, r1, #230
	cmp	r3, r1
	bge	.L45
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r4, #16]
	add	r2, r3, r2
	str	r2, [r4]
	b	.L44
.L45:
	cmp	r3, #10
	bgt	.L60
.L46:
	cmp	r2, #10
	movgt	r3, #0
	movle	r3, #1
	ldrgt	r1, [r4, #16]
	subgt	r2, r2, r1
	strgt	r2, [r4]
	str	r3, [r4, #60]
.L44:
	ldr	r5, .L61+4
	ldr	r3, [r5]
	cmp	r3, #16
	ldr	r3, [r4, #68]
	bgt	.L48
	cmp	r3, #19
	bgt	.L49
.L59:
	add	r3, r3, #1
	str	r3, [r4, #68]
	pop	{r4, r5, r6, lr}
	bx	lr
.L60:
	ldr	r1, [r4, #60]
	cmp	r1, #0
	beq	.L46
	ldr	r2, [r4, #20]
	sub	r3, r3, r2
	str	r3, [r4, #4]
	b	.L44
.L48:
	cmp	r3, #99
	ble	.L59
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5]
	str	r3, [r4, #68]
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	ldr	r3, .L61+8
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	mov	r3, #1
	str	r3, [r4, #68]
	pop	{r4, r5, r6, lr}
	bx	lr
.L62:
	.align	2
.L61:
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
	@ link register save eliminated.
	ldr	r3, .L69
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L65
	cmp	r3, #2
	beq	.L66
	cmp	r3, #0
	bxne	lr
	b	attack1
.L66:
	b	attack3
.L65:
	b	attack2
.L70:
	.align	2
.L69:
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
	ldr	r3, .L72
	str	r0, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r1, .L78
	ldr	r3, [r1, #52]
	cmp	r3, #0
	bne	.L77
	ldr	r0, [r1, #44]
	ldr	r2, [r1, #4]
	ldr	r3, [r1, #36]
	lsl	r2, r2, #23
	add	r3, r3, r0, lsl #5
	lsr	r2, r2, #23
	ldr	r0, .L78+4
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsl	r3, r3, #1
	orr	r2, r2, #16384
	add	r3, r3, #1
	strh	r2, [r0, #10]	@ movhi
	strh	r1, [r0, #8]	@ movhi
	strh	r3, [r0, #12]	@ movhi
	bx	lr
.L77:
	ldr	r2, .L78+4
	ldrh	r3, [r2, #8]
	orr	r3, r3, #512
	strh	r3, [r2, #8]	@ movhi
	bx	lr
.L79:
	.align	2
.L78:
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
