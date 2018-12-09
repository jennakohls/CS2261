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
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L4
	ldrsh	r2, [r3, #74]
	sub	r2, r2, #8
	lsl	r2, r2, #23
	lsr	r2, r2, #23
	mvn	r2, r2, lsl #17
	mvn	r2, r2, lsr #17
	ldr	r0, .L4+4
	ldr	r1, [r3, #44]
	ldr	ip, [r0]
	push	{r4, lr}
	add	r1, ip, r1, lsl #2
	ldrsh	lr, [r3, #78]
	ldr	ip, [r3, #36]
	sub	lr, lr, #16
	add	ip, ip, r1, lsl #3
	ldr	r4, .L4+8
	ldr	r1, [r3, #56]
	ldr	r0, .L4+12
	ldr	r3, [r3, #52]
	and	lr, lr, #255
	lsl	ip, ip, #2
	sub	sp, sp, #8
	orr	lr, lr, #768
	add	ip, ip, #1
	ldr	r0, [r0]
	str	r1, [sp]
	strh	r2, [r4, #2]	@ movhi
	strh	lr, [r4]	@ movhi
	strh	ip, [r4, #4]	@ movhi
	rsb	r2, r3, #0
	ldr	r4, .L4+16
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	testvar
	.word	shadowOAM
	.word	affineBuffer
	.word	aff_matrix
	.size	drawPlayer.part.0, .-drawPlayer.part.0
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
	ldr	r3, .L10
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+4
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L7
	ldr	r2, .L10+8
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L8:
	ldr	r3, .L10+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L10+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L10+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L10+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L10+28
	ldrh	r1, [r2]
	ldr	r2, .L10+32
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L7:
	bl	drawPlayer.part.0
	b	.L8
.L11:
	.align	2
.L10:
	.word	drawEnemy
	.word	player
	.word	shadowOAM
	.word	drawPBullets
	.word	drawEBullets
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
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
	ldr	r3, .L14
	str	lr, [r3, #28]
	str	ip, [r3, #48]
	ldr	lr, .L14+4
	ldr	ip, .L14+8
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
	pop	{r4, lr}
	bx	lr
.L15:
	.align	2
.L14:
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
	ldr	ip, .L18
	ldr	lr, .L18+4
	ldr	r1, .L18+8
	ldr	r2, .L18+12
	str	r3, [lr]
	str	r3, [ip]
	str	r0, [r1]
	mov	lr, pc
	bx	r2
	ldr	r3, .L18+16
	mov	lr, pc
	bx	r3
	bl	initPlayer
	ldr	r3, .L18+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L19:
	.align	2
.L18:
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
	ldr	r4, .L34
	ldr	r3, .L34+4
	ldr	r5, [r4, #32]
	smull	r0, r1, r5, r3
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #3
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #2
	str	r6, [r4, #40]
	str	r2, [r4, #36]
	bne	.L21
	ldr	r0, [r4, #44]
	ldr	r3, .L34+8
	add	r0, r0, #1
	ldr	r1, [r4, #48]
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L21:
	ldr	r3, .L34+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #64
	bne	.L22
	mov	ip, #180
	mov	r0, #8
	mov	r1, #16
	mov	r2, #3
	str	r3, [r4, #60]
	str	ip, [r4, #64]
	str	r0, [r4, #24]
	str	r1, [r4, #28]
	str	r2, [r4, #36]
.L22:
	ldr	r3, .L34+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	bne	.L23
	mov	r1, #8
	mov	r2, #16
	str	r3, [r4, #64]
	str	r3, [r4, #36]
	str	r3, [r4, #60]
	str	r1, [r4, #24]
	str	r2, [r4, #28]
.L23:
	ldr	r2, .L34+12
	ldrh	r3, [r2, #48]
	ands	r3, r3, #32
	bne	.L24
	mov	ip, #16
	mov	r0, #8
	mov	r1, #2
	ldrh	r2, [r2, #48]
	str	r3, [r4, #60]
	ldr	r3, .L34+16
	tst	r2, #16
	str	ip, [r4, #24]
	str	r0, [r4, #28]
	str	r1, [r4, #36]
	str	r3, [r4, #64]
	beq	.L27
.L26:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	ldrh	r3, [r2, #48]
	tst	r3, #16
	bne	.L33
.L27:
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
	b	.L26
.L33:
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L26
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L35:
	.align	2
.L34:
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
	@ link register save eliminated.
	ldr	r3, .L40
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L37
	ldr	r2, .L40+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L37:
	b	drawPlayer.part.0
.L41:
	.align	2
.L40:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
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
	bmi	.L44
	cmp	r3, #15728640
	subgt	r3, r3, #15728640
	str	r3, [r0]
.L44:
	ldr	r3, [r0, #4]
	ldr	r2, [r0, #12]
	adds	r3, r3, r2
	bmi	.L51
	cmp	r3, #10485760
	subgt	r3, r3, #10485760
	str	r3, [r0, #4]
	bx	lr
.L51:
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
	ldr	r3, .L69
	ldrh	r2, [r3, #48]
	tst	r2, #64
	push	{r4, lr}
	bne	.L53
	ldr	r1, .L69+4
	ldr	r3, [r1, #76]
	cmp	r3, #0
	blt	.L54
	ldr	r2, [r1, #16]
	lsl	r2, r2, #16
	add	r2, r2, #16
	sub	r3, r3, r2
	str	r3, [r1, #76]
.L54:
	ldr	r3, .L69
	ldrh	r3, [r3, #48]
	ldr	r2, .L69
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
	bge	.L61
	cmp	r3, #0
	addlt	r3, r3, #360
	strlt	r3, [r1, #60]
.L61:
	ldr	r0, .L69+8
	ldr	r2, .L69+12
	lsl	r3, r3, #1
	ldrsh	r2, [r2, r3]
	ldrsh	r3, [r0, r3]
	ldr	r0, .L69+16
	str	r3, [r1, #56]
	str	r2, [r1, #52]
	bl	update_pos
	ldrsh	r3, [r1, #78]
	sub	r3, r3, #16
	str	r3, [r1]
	str	r3, [r1, #4]
	bl	animatePlayer
	ldr	r3, .L69+20
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L52
	ldr	r3, .L69+24
	ldrh	r3, [r3]
	tst	r3, #1
	beq	.L67
.L52:
	pop	{r4, lr}
	bx	lr
.L53:
	ldrh	r2, [r3, #48]
	tst	r2, #128
	bne	.L55
	ldr	r1, .L69+4
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
	b	.L54
.L55:
	ldrh	r2, [r3, #48]
	tst	r2, #32
	beq	.L68
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L57
	ldr	r1, .L69+4
	ldr	r3, [r1, #20]
	ldr	r2, [r1, #72]
	lsl	r3, r3, #16
	add	r3, r3, #8
	add	r3, r3, r2
	str	r3, [r1, #72]
	b	.L54
.L67:
	ldr	r3, .L69+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L68:
	ldr	r1, .L69+4
	ldr	r3, [r1, #20]
	ldr	r2, [r1, #72]
	lsl	r3, r3, #16
	add	r3, r3, #8
	sub	r3, r2, r3
	str	r3, [r1, #72]
	b	.L54
.L57:
	mov	r3, #0
	ldr	r1, .L69+4
	str	r3, [r1, #80]
	str	r3, [r1, #84]
	b	.L54
.L70:
	.align	2
.L69:
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
	ldr	r3, .L73
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+8
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L74:
	.align	2
.L73:
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
	.comm	player,100,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	cos_table,720,4
	.comm	sin_table,720,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
