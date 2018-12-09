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
	push	{r4, lr}
	ldrsh	r2, [r3, #70]
	ldrsh	ip, [r3, #74]
	ldr	r1, .L4+4
	sub	r2, r2, #8
	lsl	r2, r2, #23
	sub	ip, ip, #16
	ldr	lr, .L4+8
	ldr	r4, [r1]
	ldr	r0, .L4+12
	ldr	r1, [r3, #56]
	lsr	r2, r2, #23
	ldr	r3, [r3, #52]
	and	ip, ip, #255
	sub	sp, sp, #8
	orr	ip, ip, #768
	orr	r2, r2, #16384
	ldr	r0, [r0]
	str	r1, [sp]
	strh	r2, [lr, #2]	@ movhi
	strh	r4, [lr, #4]	@ movhi
	strh	ip, [lr]	@ movhi
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
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, #0
	mov	r5, #3
	ldr	r0, .L8
	ldr	r1, .L8+4
	ldr	r2, .L8+8
	ldr	r3, .L8+12
	str	r4, [r0]
	str	r4, [r1]
	str	r5, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L8+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	mov	r1, #8
	ldr	r3, .L8+20
	ldr	lr, .L8+24
	ldr	ip, .L8+28
	ldr	r0, .L8+32
	str	r5, [r3, #84]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r4, [r3, #36]
	str	r4, [r3, #60]
	str	r4, [r3, #76]
	str	lr, [r3, #68]
	str	ip, [r3, #72]
	str	r1, [r3, #24]
	str	r1, [r3, #28]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #48]
	mov	lr, pc
	bx	r0
	pop	{r4, r5, r6, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	vOff
	.word	hOff
	.word	enemyHealth
	.word	initPBullets
	.word	initEBullets
	.word	player
	.word	7864328
	.word	5242896
	.word	initEnemy
	.size	initGame, .-initGame
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
	ldr	r3, .L14
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+4
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L11
	ldr	r2, .L14+8
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L12:
	ldr	r3, .L14+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+16
	mov	lr, pc
	bx	r3
	ldr	r3, .L14+20
	mov	lr, pc
	bx	r3
	ldr	r4, .L14+24
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L14+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	pop	{r4, lr}
	bx	lr
.L11:
	bl	drawPlayer.part.0
	b	.L12
.L15:
	.align	2
.L14:
	.word	drawEnemy
	.word	player
	.word	shadowOAM
	.word	drawPBullets
	.word	drawEBullets
	.word	waitForVBlank
	.word	DMANow
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
	mov	r0, #8
	mov	r2, #0
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L18
	str	lr, [sp, #-4]!
	ldr	lr, .L18+4
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	ldr	r0, .L18+8
	str	lr, [r3, #68]
	str	r0, [r3, #72]
	str	ip, [r3, #84]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #48]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #60]
	str	r2, [r3, #76]
	ldr	lr, [sp], #4
	bx	lr
.L19:
	.align	2
.L18:
	.word	player
	.word	7864328
	.word	5242896
	.size	initPlayer, .-initPlayer
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
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L34+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L34+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L24
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	beq	.L27
.L26:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L33
.L27:
	mov	r3, #2
	str	r3, [r4, #36]
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
	ldr	r3, [r3, #64]
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
	ldr	r2, .L69+4
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #72]
	lsl	r3, r3, #16
	add	r3, r3, #16
	sub	r3, r1, r3
	str	r3, [r2, #72]
.L54:
	ldr	r3, .L69
	ldrh	r3, [r3, #48]
	ldr	r1, .L69
	tst	r3, #512
	ldr	r3, [r2, #60]
	ldrh	r1, [r1, #48]
	addeq	r3, r3, #3
	streq	r3, [r2, #60]
	tst	r1, #256
	subeq	r3, r3, #3
	streq	r3, [r2, #60]
	cmp	r3, #360
	subge	r3, r3, #360
	strge	r3, [r2, #60]
	bge	.L61
	cmp	r3, #0
	addlt	r3, r3, #360
	strlt	r3, [r2, #60]
.L61:
	ldr	r0, .L69+8
	ldr	r1, .L69+12
	lsl	r3, r3, #1
	ldrsh	r1, [r1, r3]
	ldrsh	r3, [r0, r3]
	ldr	r0, .L69+16
	str	r3, [r2, #56]
	str	r1, [r2, #52]
	bl	update_pos
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
	ldr	r2, .L69+4
	ldr	r3, [r2, #16]
	ldr	r1, [r2, #72]
	lsl	r3, r3, #16
	add	r3, r3, #16
	add	r3, r3, r1
	str	r3, [r2, #72]
	b	.L54
.L55:
	ldrh	r2, [r3, #48]
	tst	r2, #32
	beq	.L68
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L57
	ldr	r2, .L69+4
	ldr	r3, [r2, #20]
	ldr	r1, [r2, #68]
	lsl	r3, r3, #16
	add	r3, r3, #8
	add	r3, r3, r1
	str	r3, [r2, #68]
	b	.L54
.L67:
	ldr	r3, .L69+28
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L68:
	ldr	r2, .L69+4
	ldr	r3, [r2, #20]
	ldr	r1, [r2, #68]
	lsl	r3, r3, #16
	add	r3, r3, #8
	sub	r3, r1, r3
	str	r3, [r2, #68]
	b	.L54
.L57:
	mov	r3, #0
	ldr	r2, .L69+4
	str	r3, [r2, #76]
	str	r3, [r2, #80]
	b	.L54
.L70:
	.align	2
.L69:
	.word	67109120
	.word	player
	.word	cos_table
	.word	sin_table
	.word	player+68
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
	.comm	enemy,72,4
	.comm	center,16,4
	.comm	player,88,4
	.comm	shadowOAM,1024,4
	.comm	vOff,4,4
	.comm	hOff,4,4
	.comm	cos_table,720,4
	.comm	sin_table,720,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
