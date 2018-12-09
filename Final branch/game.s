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
	.file	"game.c"
	.text
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	ip, #4
	mov	lr, #16
	mov	r2, #0
	mov	r4, #8
	mov	r1, #1
	mov	r0, #3
	ldr	r3, .L4
	str	lr, [r3, #28]
	str	ip, [r3, #48]
	ldr	lr, .L4+4
	ldr	ip, .L4+8
	str	r4, [r3, #24]
	str	lr, [r3, #72]
	str	ip, [r3, #76]
	str	r0, [r3, #88]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #40]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #80]
	str	r2, [r3, #92]
	str	r2, [r3, #96]
	str	r2, [r3, #100]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	7864328
	.word	5242896
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #3
	mov	r3, #0
	push	{r4, lr}
	ldr	ip, .L8
	ldr	lr, .L8+4
	ldr	r1, .L8+8
	ldr	r2, .L8+12
	str	r3, [lr]
	str	r3, [ip]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	bl	initPlayer
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	hOff
	.word	vOff
	.word	enemyHealth
	.word	initPBullets
	.word	initEBullets
	.word	initEnemy
	.size	initGame, .-initGame
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L29
	ldr	r3, .L29+4
	ldr	r5, [r4, #32]
	smull	r0, r1, r5, r3
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #3
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #40]
	str	r2, [r4, #36]
	bne	.L11
	ldr	r0, [r4, #44]
	ldr	r3, .L29+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L11:
	ldr	r3, .L29+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	bne	.L12
	mov	ip, #180
	mov	r0, #8
	mov	r1, #16
	mov	r2, #3
	str	r3, [r4, #60]
	str	ip, [r4, #64]
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	str	r2, [r4, #36]
.L12:
	ldr	r3, .L29+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	bne	.L13
	mov	r1, #8
	mov	r2, #16
	str	r3, [r4, #64]
	str	r3, [r4, #36]
	str	r3, [r4, #60]
	str	r1, [r4, #24]
	str	r2, [r4, #28]
.L13:
	ldr	r2, .L29+12
	ldrh	r3, [r2, #48]
	ands	r3, r3, #32
	bne	.L14
	mov	ip, #16
	mov	r0, #8
	mov	r1, #2
	ldrh	r2, [r2, #48]
	str	r3, [r4, #60]
	ldr	r3, .L29+16
	tst	r2, #16
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	str	r1, [r4, #36]
	str	r3, [r4, #64]
	beq	.L17
.L16:
	add	r5, r5, #1
	str	r5, [r4, #32]
.L18:
	ldr	r3, [r4, #104]
	cmp	r3, #0
	movne	r3, #4
	strne	r3, [r4, #44]
	bne	.L20
	ldr	r3, [r4, #100]
	sub	r2, r3, #1
	cmp	r2, #48
	bls	.L27
.L20:
	mov	r3, #0
	str	r3, [r4, #100]
	pop	{r4, r5, r6, lr}
	bx	lr
.L14:
	ldrh	r3, [r2, #48]
	tst	r3, #16
	bne	.L28
.L17:
	mov	ip, #90
	mov	r0, #16
	mov	r1, #8
	mov	r2, #1
	mov	r3, #0
	str	ip, [r4, #64]
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	str	r2, [r4, #36]
	str	r3, [r4, #60]
	b	.L16
.L28:
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L16
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	b	.L18
.L27:
	add	r3, r3, #1
	str	r3, [r4, #100]
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	player
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.word	270
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	ldr	r4, .L41
	ldr	r3, [r4, #68]
	cmp	r3, #0
	sub	sp, sp, #12
	beq	.L32
	ldr	r2, .L41+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	ldr	r3, [r4, #88]
	cmp	r3, #3
	beq	.L39
.L34:
	cmp	r3, #2
	beq	.L40
	cmp	r3, #1
	bne	.L31
	ldr	r1, .L41+8
	mov	r3, r1
	mov	r2, r1
	mov	r0, #17
	ldrh	r1, [r1]
	ldr	ip, .L41+12
	orr	r1, r1, #512
	strh	r1, [r3], #-4	@ movhi
	strh	ip, [r2, #-8]!	@ movhi
	ldr	r1, .L41+16
	strh	r0, [r3]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L40:
	ldr	r3, .L41+20
	mov	r2, r3
	mov	r1, #17
	ldr	r0, .L41+12
	ldr	lr, .L41+24
	strh	r0, [r2, #8]!	@ movhi
	ldr	ip, .L41+28
.L38:
	strh	lr, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	ip, [r2, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r1, [r3, #12]	@ movhi
.L31:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L32:
	ldrsh	r2, [r4, #74]
	sub	r2, r2, #8
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r3, .L41+32
	ldr	r1, [r4, #44]
	ldr	r3, [r3]
	ldrsh	lr, [r4, #78]
	ldr	ip, [r4, #36]
	add	r3, r3, r1, lsl #2
	ldr	r1, .L41+36
	add	ip, ip, r3, lsl #3
	sub	lr, lr, #16
	ldr	r5, .L41+4
	ldr	r0, [r1]
	ldr	r3, [r4, #52]
	ldr	r1, [r4, #56]
	and	lr, lr, #255
	lsl	ip, ip, #2
	orr	lr, lr, #768
	add	ip, ip, #1
	str	r1, [sp]
	strh	r2, [r5, #2]	@ movhi
	strh	lr, [r5]	@ movhi
	rsb	r2, r3, #0
	strh	ip, [r5, #4]	@ movhi
	ldr	r5, .L41+40
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #88]
	cmp	r3, #3
	bne	.L34
.L39:
	ldr	r3, .L41+20
	mov	r2, r3
	ldr	r0, .L41+12
	mov	r1, #17
	ldr	lr, .L41+44
	strh	r0, [r2, #8]!	@ movhi
	ldr	ip, .L41+48
	b	.L38
.L42:
	.align	2
.L41:
	.word	player
	.word	shadowOAM
	.word	shadowOAM+824
	.word	16537
	.word	-32670
	.word	shadowOAM+816
	.word	-32668
	.word	-32648
	.word	testvar
	.word	affineBuffer
	.word	aff_matrix
	.word	-16284
	.word	-16271
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L45
	mov	lr, pc
	bx	r3
	bl	drawPlayer
	ldr	r3, .L45+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L45+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L45+16
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L45+20
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L45+24
	ldrh	r1, [r2]
	ldr	r2, .L45+28
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L46:
	.align	2
.L45:
	.word	drawEnemy
	.word	drawPBullets
	.word	drawEBullets
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	update_pos
	.syntax unified
	.arm
	.fpu softvfp
	.type	update_pos, %function
update_pos:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	ldr	r2, [r0, #8]
	adds	r3, r3, r2
	addmi	r3, r3, #15728640
	strmi	r3, [r0]
	bmi	.L49
	cmp	r3, #15728640
	subgt	r3, r3, #15728640
	str	r3, [r0]
.L49:
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #12]
	adds	r3, r3, r2
	bmi	.L56
	cmp	r3, #10485760
	subgt	r3, r3, #10485760
	str	r3, [r0, #4]
	bx	lr
.L56:
	add	r3, r3, #10485760
	str	r3, [r0, #4]
	bx	lr
	.size	update_pos, .-update_pos
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L74
	ldrh	r2, [r3, #48]
	tst	r2, #64
	push	{r4, lr}
	bne	.L58
	ldr	r1, .L74+4
	ldr	r3, [r1, #76]
	cmp	r3, #0
	blt	.L59
	ldr	r2, [r1, #16]
	lsl	r2, r2, #16
	add	r2, r2, #16
	sub	r3, r3, r2
	str	r3, [r1, #76]
.L59:
	ldr	r3, .L74
	ldrh	r3, [r3, #48]
	ldr	r2, .L74
	tst	r3, #512
	ldr	r3, [r1, #60]
	ldrh	r2, [r2, #48]
	addeq	r3, r3, #3
	streq	r3, [r1, #60]
	tst	r2, #256
	subeq	r3, r3, #3
	streq	r3, [r1, #60]
	cmp	r3, #360
	subge	r3, r3, #360
	strge	r3, [r1, #60]
	bge	.L66
	cmp	r3, #0
	addlt	r3, r3, #360
	strlt	r3, [r1, #60]
.L66:
	ldr	r0, .L74+8
	ldr	r2, .L74+12
	lsl	r3, r3, #1
	ldrsh	r2, [r2, r3]
	ldrsh	r3, [r0, r3]
	ldr	r0, .L74+16
	str	r2, [r1, #52]
	str	r3, [r1, #56]
	bl	update_pos
	ldrsh	r2, [r1, #78]
	ldrsh	r3, [r1, #74]
	sub	r2, r2, #16
	sub	r3, r3, #8
	stm	r1, {r2, r3}
	bl	animatePlayer
	ldr	r3, .L74+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L57
	ldr	r3, .L74+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L72
.L57:
	pop	{r4, lr}
	bx	lr
.L58:
	ldrh	r2, [r3, #48]
	tst	r2, #128
	bne	.L60
	ldr	r1, .L74+4
	ldr	r2, [r1, #76]
	ldr	r0, [r1, #28]
	asr	r3, r2, #16
	sub	r3, r3, #16
	add	r3, r3, r0
	cmp	r3, #124
	ldrle	r3, [r1, #16]
	addle	r2, r2, r3, lsl #16
	addle	r2, r2, #16
	strle	r2, [r1, #76]
	b	.L59
.L60:
	ldrh	r2, [r3, #48]
	tst	r2, #32
	beq	.L73
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L62
	ldr	r1, .L74+4
	ldr	r3, [r1, #20]
	ldr	r2, [r1, #72]
	lsl	r3, r3, #16
	add	r3, r3, #8
	add	r3, r3, r2
	str	r3, [r1, #72]
	b	.L59
.L72:
	ldr	r3, .L74+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L73:
	ldr	r1, .L74+4
	ldr	r3, [r1, #20]
	ldr	r2, [r1, #72]
	lsl	r3, r3, #16
	add	r3, r3, #8
	sub	r3, r2, r3
	str	r3, [r1, #72]
	b	.L59
.L62:
	mov	r3, #0
	ldr	r1, .L74+4
	str	r3, [r1, #80]
	str	r3, [r1, #84]
	b	.L59
.L75:
	.align	2
.L74:
	.word	67109120
	.word	player
	.word	cos_table
	.word	sin_table
	.word	player+72
	.word	oldButtons
	.word	buttons
	.word	firePBullet
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	updatePlayer
	ldr	r3, .L78
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L78+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L79:
	.align	2
.L78:
	.word	updateEnemy
	.word	updatePBullets
	.word	updateEBullets
	.size	updateGame, .-updateGame
	.comm	cosAngle,4,4
	.comm	sinAngle,4,4
	.comm	bpmax,4,4
	.comm	testvar,4,4
	.comm	enemy,80,4
	.comm	center,16,4
	.comm	player,108,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	cos_table,720,4
	.comm	sin_table,720,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
