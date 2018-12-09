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
	.file	"bullets.c"
	.text
	.align	2
	.global	initPBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPBullets, %function
initPBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #1
	mov	r0, #4
	ldr	r3, .L6
	add	ip, r3, #4000
.L2:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	str	r0, [r3, #24]
	str	r0, [r3, #20]
	str	r1, [r3, #44]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	add	r3, r3, #80
	cmp	r3, ip
	bne	.L2
	bx	lr
.L7:
	.align	2
.L6:
	.word	pbullets
	.size	initPBullets, .-initPBullets
	.align	2
	.global	clearPBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearPBullet, %function
clearPBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	r2, #8
	mov	r1, #1
	str	r3, [r0]
	str	r1, [r0, #44]
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0, #16]
	str	r3, [r0, #28]
	str	r3, [r0, #36]
	str	r3, [r0, #40]
	str	r3, [r0, #48]
	str	r3, [r0, #68]
	str	r3, [r0, #72]
	str	r3, [r0, #76]
	str	r3, [r0, #52]
	str	r3, [r0, #56]
	str	r3, [r0, #60]
	str	r3, [r0, #64]
	str	r2, [r0, #24]
	str	r2, [r0, #20]
	bx	lr
	.size	clearPBullet, .-clearPBullet
	.align	2
	.global	clearEBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	clearEBullet, %function
clearEBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	mov	r1, #8
	mov	r2, #1
	str	r3, [r0, #4]
	str	r3, [r0, #8]
	str	r3, [r0, #12]
	str	r3, [r0, #16]
	str	r3, [r0, #28]
	str	r3, [r0, #36]
	str	r3, [r0, #40]
	str	r3, [r0, #68]
	str	r3, [r0, #72]
	str	r3, [r0, #76]
	str	r3, [r0, #52]
	str	r3, [r0, #56]
	str	r3, [r0, #60]
	str	r3, [r0, #64]
	str	r1, [r0, #24]
	str	r1, [r0, #20]
	str	r2, [r0, #44]
	str	r2, [r0, #48]
	bx	lr
	.size	clearEBullet, .-clearEBullet
	.align	2
	.global	initEBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEBullets, %function
initEBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #1
	mov	r0, #4
	ldr	r3, .L14
	add	ip, r3, #4000
.L11:
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	str	r0, [r3, #24]
	str	r0, [r3, #20]
	str	r1, [r3, #44]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r2, [r3, #40]
	str	r2, [r3, #48]
	str	r2, [r3, #68]
	str	r2, [r3, #72]
	str	r2, [r3, #76]
	str	r2, [r3, #52]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	add	r3, r3, #80
	cmp	r3, ip
	bne	.L11
	bx	lr
.L15:
	.align	2
.L14:
	.word	ebullets
	.size	initEBullets, .-initEBullets
	.align	2
	.global	firePBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	firePBullet, %function
firePBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	lr, .L31
	mov	r3, #0
	mov	r2, lr
	b	.L24
.L17:
	add	r3, r3, #1
	cmp	r3, #50
	add	r2, r2, #80
	beq	.L16
.L24:
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L17
	mov	r6, #1
	ldr	r7, .L31+4
	ldr	r2, .L31+8
	add	r0, r7, #60
	ldmia	r0, {r0, r1}
	add	r1, r0, r1
	smull	r4, r5, r1, r2
	asr	r2, r1, #31
	add	r0, r1, r5
	rsb	r2, r2, r0, asr #8
	add	r2, r2, r2, lsl r6
	lsl	r5, r3, #2
	ldrsh	r0, [r7, #74]
	rsb	r2, r2, r2, lsl #4
	sub	r2, r1, r2, lsl #3
	ldrsh	ip, [r7, #78]
	ldr	r1, [r7, #24]
	add	r4, r5, r3
	ldr	r8, [r7, #28]
	lsl	r4, r4, #4
	sub	r0, r0, #8
	add	r0, r0, r1, lsl r6
	sub	ip, ip, #16
	add	r1, lr, r4
	add	ip, ip, r8, lsl r6
	str	r0, [r1, #8]
	sub	r8, r2, #91
	lsl	r0, r0, #16
	add	r0, r0, #8
	cmp	r8, #179
	str	r0, [r1, #52]
	mvnls	r0, #0
	str	ip, [r1, #4]
	lsl	ip, ip, #16
	add	ip, ip, #16
	ldr	r8, [r1, #60]
	str	ip, [r1, #56]
	ldr	ip, [r7, #52]
	ldr	r9, [r7, #56]
	sub	r7, r8, ip, lsl #3
	ldr	ip, [r1, #64]
	sub	ip, ip, r9, lsl #3
	str	r6, [r1, #12]
	str	r2, [r1, #76]
	strls	r0, [r1, #12]
	str	r7, [r1, #60]
	str	ip, [r1, #64]
	str	r6, [r1, #16]
	sub	r1, r2, #1
	cmp	r1, #179
	mvnhi	r0, #0
	addhi	r1, r5, r3
	addhi	r1, lr, r1, lsl #4
	strhi	r0, [r1, #16]
	add	r1, r2, #22
	cmp	r1, #44
	str	r6, [lr, r4]
	bhi	.L30
.L20:
	mov	r0, #0
	add	r1, r5, r3
	add	r1, lr, r1, lsl #4
	str	r0, [r1, #16]
.L21:
	sub	r1, r2, #248
	sub	r2, r2, #68
	cmp	r2, #44
	cmphi	r1, #44
	movls	r2, #0
	addls	r3, r5, r3
	addls	r3, lr, r3, lsl #4
	strls	r2, [r3, #12]
.L16:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L30:
	sub	r1, r2, #158
	cmp	r1, #44
	bhi	.L21
	b	.L20
.L32:
	.align	2
.L31:
	.word	pbullets
	.word	player
	.word	-1240768329
	.size	firePBullet, .-firePBullet
	.align	2
	.global	vDir
	.syntax unified
	.arm
	.fpu softvfp
	.type	vDir, %function
vDir:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #80
	ble	.L34
	ldr	r3, .L40
	ldr	r3, [r3, #76]
	cmp	r3, r0
	blt	.L38
.L39:
	mvngt	r0, #0
	movle	r0, #0
	bx	lr
.L34:
	beq	.L37
	ldr	r3, .L40
	ldr	r3, [r3, #76]
	cmp	r0, r3
	bge	.L39
.L38:
	mov	r0, #1
	bx	lr
.L37:
	mov	r0, #0
	bx	lr
.L41:
	.align	2
.L40:
	.word	player
	.size	vDir, .-vDir
	.align	2
	.global	hDir
	.syntax unified
	.arm
	.fpu softvfp
	.type	hDir, %function
hDir:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #120
	ble	.L43
	ldr	r3, .L49
	ldr	r3, [r3, #72]
	cmp	r3, r0
	blt	.L47
.L48:
	mvngt	r0, #0
	movle	r0, #0
	bx	lr
.L43:
	beq	.L46
	ldr	r3, .L49
	ldr	r3, [r3, #72]
	cmp	r0, r3
	bge	.L48
.L47:
	mov	r0, #1
	bx	lr
.L46:
	mov	r0, #0
	bx	lr
.L50:
	.align	2
.L49:
	.word	player
	.size	hDir, .-hDir
	.align	2
	.global	fireEBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireEBullet, %function
fireEBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, .L96
	ldr	r3, [ip, #56]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bne	.L52
	ldr	r0, .L96+4
	mov	r2, r0
	b	.L62
.L53:
	add	r3, r3, #1
	cmp	r3, #50
	add	r2, r2, #80
	beq	.L51
.L62:
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L53
	mov	r5, #1
	ldr	r4, [ip, #28]
	ldr	r9, .L96+8
	ldr	r7, [ip]
	ldr	lr, [ip, #24]
	lsl	r6, r3, #2
	ldr	r2, [ip, #4]
	add	r4, r4, r4, lsr #31
	add	r8, r6, r3
	add	ip, r7, r4, asr r5
	add	lr, lr, lr, lsr #31
	lsl	r8, r8, #4
	ldr	r7, [r9, #72]
	add	r2, r2, lr, asr r5
	ldr	r4, [r9, #76]
	add	r9, r0, r8
	rsb	r7, r2, r7, lsl #16
	cmp	r2, #119
	str	r2, [r9, #8]
	lsl	r2, r2, #16
	add	r2, r2, #8
	lsl	lr, ip, #16
	rsb	r4, ip, r4, lsl #16
	str	r1, [r9, #12]
	str	r1, [r9, #16]
	str	r2, [r9, #52]
	ldr	r1, .L96+12
	ldr	r2, .L96+16
	add	lr, lr, #16
	add	r7, r7, #8
	add	r4, r4, #16
	str	lr, [r9, #56]
	str	ip, [r9, #4]
	str	r5, [r0, r8]
	str	r4, [r1]
	str	r7, [r2]
	ble	.L93
	cmp	r7, #0
	movlt	r2, #1
	mvnge	r2, #0
	cmp	ip, #79
	str	r2, [r9, #16]
	bgt	.L58
.L95:
	cmp	r4, #0
	movgt	r2, #1
	mvnle	r2, #0
	add	r3, r6, r3
	add	r0, r0, r3, lsl #4
	str	r2, [r0, #12]
.L51:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L52:
	cmp	r3, #1
	bne	.L94
	mov	r4, r3
	mov	ip, #12
	ldr	lr, .L96+20
	ldr	r0, .L96+4
.L63:
	ldr	r2, .L96+4
	mov	r3, #0
	b	.L67
.L65:
	add	r3, r3, #1
	cmp	r3, #50
	add	r2, r2, #80
	beq	.L66
.L67:
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L65
	add	r3, r3, r3, lsl #2
	add	r2, r0, r3, lsl #4
	str	r4, [r0, r3, lsl #4]
	str	ip, [r2, #4]
	str	r1, [r2, #8]
	str	lr, [r2, #56]
	str	r1, [r2, #12]
	str	r4, [r2, #16]
.L66:
	add	ip, ip, #32
	cmp	ip, #172
	add	lr, lr, #2097152
	bne	.L63
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L93:
	cmp	r7, #0
	movgt	r2, r5
	mvnle	r2, #0
	cmp	ip, #79
	str	r2, [r9, #16]
	ble	.L95
.L58:
	cmp	r4, #0
	movlt	r2, #1
	mvnge	r2, #0
	add	r3, r6, r3
	add	r0, r0, r3, lsl #4
	str	r2, [r0, #12]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L94:
	cmp	r3, #2
	bne	.L51
	ldr	r0, .L96+4
	mov	r3, #0
	mov	r2, r0
	b	.L79
.L68:
	add	r3, r3, #1
	cmp	r3, #50
	add	r2, r2, #80
	beq	.L51
.L79:
	ldr	r1, [r2]
	cmp	r1, #0
	bne	.L68
	mov	r4, #1
	ldr	lr, .L96+24
	lsl	ip, r3, #2
	add	r2, ip, r3
	ldr	lr, [lr]
	lsl	r2, r2, #4
	str	r4, [r0, r2]
	cmp	lr, #0
	add	r2, r0, r2
	str	r1, [r2, #12]
	str	r1, [r2, #16]
	bne	.L69
	ldr	r3, .L96+8
	ldrsh	r1, [r3, #78]
	ldrsh	r3, [r3, #74]
	add	r1, r1, #32
	add	r3, r3, #8
	stmib	r2, {r1, r3}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L69:
	cmp	lr, #1
	bne	.L71
	ldr	r3, .L96+8
	ldrsh	r1, [r3, #78]
	ldrsh	r3, [r3, #74]
	add	r1, r1, #16
	add	r3, r3, #24
	stmib	r2, {r1, r3}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L71:
	cmp	lr, #2
	bne	.L72
	ldr	r1, .L96+8
	ldrsh	r3, [r1, #74]
	ldrsh	r1, [r1, #78]
	add	r3, r3, #40
	stmib	r2, {r1, r3}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L72:
	cmp	lr, #3
	bne	.L74
	ldr	r3, .L96+8
	ldrsh	r1, [r3, #78]
	ldrsh	r3, [r3, #74]
	sub	r1, r1, #16
	add	r3, r3, #24
	stmib	r2, {r1, r3}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L74:
	cmp	lr, #4
	bne	.L70
	ldr	r3, .L96+8
	ldrsh	r1, [r3, #78]
	ldrsh	r3, [r3, #74]
	sub	r1, r1, #32
	add	r3, r3, #8
	stmib	r2, {r1, r3}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L70:
	cmp	lr, #5
	bne	.L73
	ldr	r3, .L96+8
	ldrsh	r1, [r3, #78]
	ldrsh	r3, [r3, #74]
	sub	r1, r1, #16
	sub	r3, r3, #8
	stmib	r2, {r1, r3}
	b	.L51
.L73:
	cmp	lr, #6
	bne	.L75
	ldr	r1, .L96+8
	ldrsh	r3, [r1, #74]
	ldrsh	r1, [r1, #78]
	sub	r3, r3, #24
	stmib	r2, {r1, r3}
	b	.L51
.L75:
	cmp	lr, #7
	bne	.L77
	ldr	r3, .L96+8
	ldrsh	r1, [r3, #78]
	ldrsh	r3, [r3, #74]
	add	r1, r1, #16
	sub	r3, r3, #8
	stmib	r2, {r1, r3}
	b	.L51
.L77:
	cmp	lr, #8
	bne	.L76
	ldr	r2, .L96+8
	ldrsh	r1, [r2, #78]
	ldrsh	r2, [r2, #74]
	add	ip, ip, r3
	ldr	lr, .L96+28
	add	r0, r0, ip, lsl #4
	add	r1, r1, #32
	add	r2, r2, #8
	stmib	r0, {r1, r2}
	str	r3, [lr]
	b	.L51
.L76:
	cmp	lr, #8
	ble	.L51
	ldr	r3, .L96+28
	ldr	r2, [r3]
	sub	r2, r2, lr
	add	r2, r2, #8
	add	r2, r2, r2, lsl #2
	add	r2, r0, r2, lsl #4
	ldr	r0, [r2, #4]
	bl	vDir
	str	r0, [r2, #12]
	ldr	r0, [r2, #8]
	bl	hDir
	str	r0, [r2, #16]
	b	.L51
.L97:
	.align	2
.L96:
	.word	enemy
	.word	ebullets
	.word	player
	.word	bprow
	.word	bpcol
	.word	786448
	.word	count
	.word	.LANCHOR0
	.size	fireEBullet, .-fireEBullet
	.align	2
	.global	updatePBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePBullets, %function
updatePBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L112
	sub	sp, sp, #20
	ldr	r7, .L112+4
	ldr	r8, .L112+8
	ldr	fp, .L112+12
	ldr	r10, .L112+16
	ldr	r9, .L112+20
	add	r5, r4, #4000
	b	.L104
.L101:
	mov	r3, #0
	mov	r2, #8
	mov	r1, #1
	str	r3, [r4]
	str	r3, [r4, #4]
	str	r3, [r4, #8]
	str	r3, [r4, #12]
	str	r3, [r4, #16]
	str	r3, [r4, #28]
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #48]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	str	r3, [r4, #76]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	str	r3, [r4, #64]
	str	r2, [r4, #24]
	str	r2, [r4, #20]
	str	r1, [r4, #44]
.L100:
	add	r4, r4, #80
	cmp	r4, r5
	beq	.L111
.L104:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L100
	ldr	ip, [r4, #4]
	ldr	r3, [r4, #12]
	add	ip, ip, r3
	cmp	ip, #159
	bgt	.L101
	ldr	r2, [r4, #20]
	add	r3, ip, r2
	cmp	r3, #0
	ble	.L101
	ldr	lr, [r4, #8]
	ldr	r3, [r4, #16]
	add	lr, lr, r3
	cmp	lr, #239
	bgt	.L101
	ldr	r3, [r4, #24]
	add	r1, lr, r3
	cmp	r1, #0
	ble	.L101
	add	r0, r7, #24
	ldm	r0, {r0, r1}
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r0, ip
	mov	r1, lr
	stmib	r4, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L100
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L100
	mov	r6, #1
	ldr	r2, .L112+24
	ldr	r1, .L112+28
	mov	r0, fp
	mov	lr, pc
	bx	r10
	ldr	r3, .L112+32
	add	r2, r3, #4000
.L103:
	str	r6, [r3, #48]
	add	r3, r3, #80
	cmp	r3, r2
	bne	.L103
	mov	lr, pc
	bx	r9
	ldr	r3, [r7, #56]
	ldr	r2, .L112+36
	add	r3, r3, #1
	smull	r0, r1, r3, r2
	sub	r2, r1, r3, asr #31
	ldr	r1, .L112+40
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	ldr	r2, [r1]
	add	r4, r4, #80
	sub	r2, r2, #1
	cmp	r4, r5
	str	r6, [r7, #76]
	str	r3, [r7, #56]
	str	r2, [r1]
	bne	.L104
.L111:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L113:
	.align	2
.L112:
	.word	pbullets
	.word	enemy
	.word	collision
	.word	enemyhit
	.word	playSoundB
	.word	clearEnemy
	.word	11025
	.word	2088
	.word	ebullets
	.word	1431655766
	.word	.LANCHOR1
	.size	updatePBullets, .-updatePBullets
	.align	2
	.global	updateEBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEBullets, %function
updateEBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L126
	sub	sp, sp, #20
	ldr	r6, .L126+4
	ldr	r7, .L126+8
	ldr	fp, .L126+12
	ldr	r10, .L126+16
	ldr	r9, .L126+20
	ldr	r8, .L126+24
	add	r5, r4, #4000
	b	.L119
.L117:
	mov	r3, #0
	str	r3, [r4]
	str	r3, [r4, #48]
.L116:
	add	r4, r4, #80
	cmp	r4, r5
	beq	.L125
.L119:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L116
	ldr	ip, [r4, #4]
	ldr	r3, [r4, #12]
	add	ip, ip, r3
	cmp	ip, #159
	bgt	.L117
	ldr	r2, [r4, #20]
	add	r3, ip, r2
	cmp	r3, #0
	ble	.L117
	ldr	lr, [r4, #8]
	ldr	r3, [r4, #16]
	add	lr, lr, r3
	cmp	lr, #239
	bgt	.L117
	ldr	r3, [r4, #24]
	add	r1, lr, r3
	cmp	r1, #0
	ble	.L117
	ldr	r0, [r6, #4]
	ldr	r1, [r6]
	add	r0, r0, #16
	add	r1, r1, #16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r0, [r6, #24]
	ldr	r1, [r6, #28]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r0, ip
	mov	r1, lr
	stmib	r4, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	beq	.L116
	ldr	r3, [r6, #100]
	cmp	r3, #0
	bne	.L116
	ldr	r1, [r6, #104]
	cmp	r1, #0
	bne	.L116
	mov	ip, #1
	ldr	r0, [r6, #88]
	sub	r0, r0, #1
	str	r1, [r4]
	str	ip, [r4, #48]
	mov	r3, r1
	str	r0, [r6, #88]
	mov	r2, fp
	mov	r1, r10
	mov	r0, r9
	add	r4, r4, #80
	str	ip, [r6, #100]
	str	ip, [r6, #92]
	mov	lr, pc
	bx	r8
	cmp	r4, r5
	bne	.L119
.L125:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L127:
	.align	2
.L126:
	.word	ebullets
	.word	player
	.word	collision
	.word	11025
	.word	2286
	.word	playerhit
	.word	playSoundB
	.size	updateEBullets, .-updateEBullets
	.align	2
	.global	drawPBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPBullets, %function
drawPBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L137
	push	{r4, lr}
	ldr	r2, .L137+4
	ldr	r4, .L137+8
	ldr	lr, .L137+12
	add	r0, r3, #4000
.L131:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L129
	ldr	r1, [r3, #48]
	cmp	r1, #0
	ldrhne	r1, [r2]
	ldreq	r1, [r3, #8]
	ldrbeq	ip, [r3, #4]	@ zero_extendqisi2
	orrne	r1, r1, #512
	andeq	r1, r1, r4
	strhne	r1, [r2]	@ movhi
	strheq	lr, [r2, #4]	@ movhi
	strheq	r1, [r2, #2]	@ movhi
	strheq	ip, [r2]	@ movhi
.L129:
	add	r3, r3, #80
	cmp	r3, r0
	add	r2, r2, #8
	bne	.L131
	pop	{r4, lr}
	bx	lr
.L138:
	.align	2
.L137:
	.word	pbullets
	.word	shadowOAM+416
	.word	511
	.word	4128
	.size	drawPBullets, .-drawPBullets
	.align	2
	.global	drawEBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEBullets, %function
drawEBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L149
	mov	r9, #4160
	mov	r6, #0
	ldr	r5, .L149+4
	ldr	r8, .L149+8
	add	r7, r4, #4000
	b	.L142
.L141:
	ldr	r3, [r4, #8]
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	and	r3, r3, r8
	strh	r9, [r5, #20]	@ movhi
	strh	r3, [r5, #18]	@ movhi
	strh	r2, [r5, #16]	@ movhi
.L140:
	add	r4, r4, #80
	cmp	r4, r7
	add	r5, r5, #8
	beq	.L148
.L142:
	ldrh	r3, [r5, #16]
	ldr	r2, [r4]
	orr	r3, r3, #512
	cmp	r2, #0
	strh	r3, [r5, #16]	@ movhi
	beq	.L140
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L141
	mov	r2, #8
	mov	r3, #1
	str	r6, [r4, #4]
	str	r6, [r4, #8]
	str	r6, [r4, #12]
	str	r6, [r4, #16]
	str	r6, [r4, #28]
	str	r6, [r4, #36]
	str	r6, [r4, #40]
	str	r6, [r4, #68]
	str	r6, [r4, #72]
	str	r6, [r4, #76]
	str	r6, [r4, #52]
	str	r6, [r4, #56]
	str	r6, [r4, #60]
	str	r6, [r4, #64]
	str	r2, [r4, #24]
	str	r2, [r4, #20]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	add	r4, r4, #80
	bl	initEBullets
	cmp	r4, r7
	add	r5, r5, #8
	bne	.L142
.L148:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L150:
	.align	2
.L149:
	.word	ebullets
	.word	shadowOAM
	.word	511
	.size	drawEBullets, .-drawEBullets
	.comm	ebullets,4000,4
	.comm	pbullets,4000,4
	.global	stoppingPoint
	.global	enemyHealth
	.comm	bpcol,4,4
	.comm	bprow,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.comm	cos_table,720,4
	.comm	sin_table,720,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	enemyHealth, %object
	.size	enemyHealth, 4
enemyHealth:
	.word	3
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	stoppingPoint, %object
	.size	stoppingPoint, 4
stoppingPoint:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
