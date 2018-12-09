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
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	ip, #0
	ldr	r0, .L13
	ldr	r3, [r0]
	ldr	r1, .L13+4
	orr	r3, r3, #16384
	push	{r4, r5, lr}
	ldr	r0, [r0, #4]
	strh	r3, [r1]	@ movhi
	ldr	r3, .L13+8
	add	lr, r3, #1088
	mov	r2, r1
	mov	r4, #512
	strh	r0, [r1, #2]	@ movhi
	strh	ip, [r1, #4]	@ movhi
	add	lr, lr, #12
	b	.L4
.L3:
	add	r3, r3, #44
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L12
.L4:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	strheq	r4, [r2, #48]	@ movhi
	beq	.L3
	ldr	ip, [r3, #36]
	ldr	r0, [r3, #28]
	ldr	r1, [r3, #4]
	ldr	r5, [r3]
	add	ip, ip, #1
	add	r3, r3, #44
	add	r0, r0, ip, lsl #6
	orr	r1, r1, #16384
	cmp	r3, lr
	strh	r0, [r2, #52]	@ movhi
	strh	r1, [r2, #50]	@ movhi
	strh	r5, [r2, #48]	@ movhi
	add	r2, r2, #8
	bne	.L4
.L12:
	mov	ip, #512
	mov	r5, #70
	ldr	r3, .L13+12
	ldr	r1, .L13+16
	add	r0, r3, #640
	add	r4, r1, #4
.L7:
	ldr	r2, [r3, #20]
	cmp	r2, #0
	ldrne	lr, [r3]
	ldrne	r2, [r3, #4]
	add	r3, r3, #32
	strhne	r5, [r4]	@ movhi
	strheq	ip, [r1]	@ movhi
	strhne	lr, [r1]	@ movhi
	strhne	r2, [r1, #2]	@ movhi
	cmp	r3, r0
	bne	.L7
	pop	{r4, r5, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	player
	.word	shadowOAM
	.word	enemies
	.word	bullets
	.word	shadowOAM+256
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
	mov	r2, #2
	mov	r4, #16
	mov	lr, #8
	mov	ip, #150
	mov	r0, #112
	mov	r1, #20
	ldr	r3, .L17
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L18:
	.align	2
.L17:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	firePlayerBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	firePlayerBullet, %function
firePlayerBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L29
	mov	r3, #0
	mov	r2, r0
	b	.L22
.L20:
	add	r3, r3, #1
	cmp	r3, #20
	add	r2, r2, #32
	bxeq	lr
.L22:
	ldr	r1, [r2, #20]
	cmp	r1, #0
	bne	.L20
	push	{r4, lr}
	mov	r4, #1
	ldr	lr, .L29+4
	ldr	ip, [lr, #16]
	ldr	r2, [lr, #4]
	add	r1, r0, r3, lsl #5
	add	ip, ip, ip, lsr #31
	add	r2, r2, ip, asr r4
	ldr	ip, [r1, #12]
	ldr	lr, [lr]
	add	ip, ip, ip, lsr #31
	sub	r2, r2, ip, asr r4
	str	lr, [r0, r3, lsl #5]
	str	r4, [r1, #24]
	str	r4, [r1, #20]
	str	r2, [r1, #4]
	pop	{r4, lr}
	bx	lr
.L30:
	.align	2
.L29:
	.word	bullets
	.word	player
	.size	firePlayerBullet, .-firePlayerBullet
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
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	tst	r3, #16
	push	{r4, lr}
	ldr	r4, .L43+4
	bne	.L32
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #16]
	add	r3, r2, r3
	cmp	r3, #239
	addle	r2, r2, #1
	strle	r2, [r4, #4]
.L32:
	ldr	r3, .L43
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L33
	ldr	r3, [r4, #4]
	cmp	r3, #0
	subgt	r3, r3, #1
	strgt	r3, [r4, #4]
.L33:
	ldr	r3, .L43+8
	ldrh	r3, [r3]
	tst	r3, #1
	ldr	r3, [r4, #24]
	beq	.L42
	ldr	r2, .L43+12
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L42
	cmp	r3, #19
	bgt	.L37
.L42:
	add	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r4, lr}
	bx	lr
.L37:
	bl	firePlayerBullet
	mov	r3, #1
	str	r3, [r4, #24]
	pop	{r4, lr}
	bx	lr
.L44:
	.align	2
.L43:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
	.size	updatePlayer, .-updatePlayer
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
	mov	r1, #0
	ldr	r3, .L46
	ldr	r2, [r3]
	ldr	r0, [r3, #4]
	ldr	r3, .L46+4
	orr	r2, r2, #16384
	strh	r2, [r3]	@ movhi
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	bx	lr
.L47:
	.align	2
.L46:
	.word	player
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBullets, %function
initBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #8
	mov	r2, #0
	mov	ip, #1
	ldr	r3, .L52
	add	r0, r3, #640
.L49:
	str	r1, [r3, #16]
	str	r1, [r3, #12]
	str	r2, [r3]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	stmib	r3, {r2, ip}
	add	r3, r3, #32
	cmp	r3, r0
	bne	.L49
	bx	lr
.L53:
	.align	2
.L52:
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	drawBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullet, %function
drawBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	cmp	r3, #0
	movne	r1, #70
	moveq	r2, #512
	ldrne	r3, .L57
	ldrne	ip, [r0]
	ldrne	r2, [r0, #4]
	ldreq	r3, .L57
	strhne	ip, [r3]	@ movhi
	strhne	r1, [r3, #4]	@ movhi
	strhne	r2, [r3, #2]	@ movhi
	strheq	r2, [r3]	@ movhi
	bx	lr
.L58:
	.align	2
.L57:
	.word	shadowOAM+256
	.size	drawBullet, .-drawBullet
	.align	2
	.global	updateBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullet, %function
updateBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #20]
	cmp	r3, #0
	bxeq	lr
	ldr	r1, [r0, #24]
	ldr	r2, [r0]
	ldr	r3, [r0, #16]
	cmp	r1, #0
	add	r3, r2, r3
	bne	.L66
	cmp	r3, #159
	ble	.L67
.L62:
	mov	r3, #0
	str	r3, [r0, #20]
	bx	lr
.L66:
	cmp	r3, #0
	ble	.L62
	ldr	r3, [r0, #8]
	sub	r2, r2, r3
	str	r2, [r0]
	bx	lr
.L67:
	ldr	r3, [r0, #8]
	add	r2, r3, r2
	str	r2, [r0]
	bx	lr
	.size	updateBullet, .-updateBullet
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r0, r1
	mov	fp, #20
	mov	r7, r1
	mov	r6, r1
	mov	lr, #2
	mvn	r9, #0
	mov	ip, #16
	mov	r8, #1
	ldr	r3, .L77
	ldr	r10, .L77+4
	b	.L71
.L76:
	cmp	r0, #3
	str	fp, [r3, #44]
	add	r7, r7, #20
	addle	r0, r0, #2
	movgt	r0, r2
.L70:
	add	r1, r1, #1
	cmp	r1, #25
	str	r7, [r3, #40]
	str	lr, [r3, #48]
	str	r9, [r3, #52]
	str	ip, [r3, #56]
	str	ip, [r3, #60]
	str	r8, [r3, #64]
	str	r0, [r3, #68]
	str	r6, [r3, #72]
	str	r6, [r3, #76]
	str	lr, [r3, #80]
	add	r3, r3, #44
	beq	.L75
.L71:
	smull	r4, r5, r1, r10
	asr	r2, r1, #31
	rsb	r2, r2, r5, asr #1
	add	r2, r2, r2, lsl #2
	subs	r2, r1, r2
	beq	.L76
	ldr	r2, [r3]
	add	r2, r2, #31
	str	r2, [r3, #44]
	b	.L70
.L75:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	enemies-40
	.word	1717986919
	.size	initEnemies, .-initEnemies
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
	push	{r4, lr}
	mov	r4, #16
	mov	lr, #8
	mov	r2, #2
	mov	ip, #150
	mov	r0, #112
	mov	r1, #20
	ldr	r3, .L81
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	pop	{r4, lr}
	str	ip, [r3]
	str	r0, [r3, #4]
	str	r1, [r3, #24]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	b	initEnemies
.L82:
	.align	2
.L81:
	.word	player
	.size	initGame, .-initGame
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
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bne	.L90
	mov	r2, #512
	ldr	r3, .L91
	lsl	r1, r1, #3
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L90:
	push	{r4, lr}
	ldr	ip, [r0, #36]
	ldr	r2, [r0, #4]
	ldr	lr, .L91
	ldr	r3, [r0, #28]
	ldr	r4, [r0]
	lsl	r1, r1, #3
	add	r0, ip, #1
	add	r3, r3, r0, lsl #6
	orr	r2, r2, #16384
	add	r0, lr, r1
	strh	r4, [lr, r1]	@ movhi
	strh	r2, [r0, #2]	@ movhi
	strh	r3, [r0, #4]	@ movhi
	pop	{r4, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	shadowOAM
	.size	drawEnemy, .-drawEnemy
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
	ldr	r2, [r0, #32]
	ldr	r3, .L101
	push	{r4, r5, lr}
	smull	r4, r5, r2, r3
	asr	r3, r2, #31
	rsb	r3, r3, r5, asr #3
	add	r3, r3, r3, lsl #2
	subs	r3, r2, r3, lsl #2
	bne	.L94
	ldr	r1, [r0, #40]
	ldr	ip, [r0, #36]
	sub	r1, r1, #1
	cmp	ip, r1
	addlt	ip, ip, #1
	strlt	ip, [r0, #36]
	strge	r3, [r0, #36]
.L94:
	ldr	r3, .L101+4
	ldr	r1, [r3]
	add	r2, r2, #1
	cmp	r1, #0
	str	r2, [r0, #32]
	ldr	r2, [r0, #12]
	beq	.L96
	mov	ip, #0
	ldr	r1, [r0]
	ldr	lr, [r0, #8]
	rsb	r2, r2, #0
	add	r1, r1, lr
	str	r1, [r0]
	str	r2, [r0, #12]
	str	ip, [r3]
.L96:
	ldr	r3, [r0, #4]
	add	r3, r3, r2
	str	r3, [r0, #4]
	pop	{r4, r5, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	1717986919
	.word	move
	.size	updateEnemy, .-updateEnemy
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
	push	{r4, r5, r6, r7, r8, lr}
	bl	updatePlayer
	mov	r7, #1
	ldr	r4, .L111
	ldr	r6, .L111+4
	add	r5, r4, #1088
	add	r5, r5, #12
.L106:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	mov	r0, r4
	ble	.L104
	ldr	r2, [r4, #16]
	add	r3, r3, r2
	cmp	r3, #239
	ble	.L105
.L104:
	str	r7, [r6]
.L105:
	add	r4, r4, #44
	bl	updateEnemy
	cmp	r4, r5
	bne	.L106
	ldr	r4, .L111+8
	add	r5, r4, #640
.L107:
	mov	r0, r4
	add	r4, r4, #32
	bl	updateBullet
	cmp	r5, r4
	bne	.L107
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L112:
	.align	2
.L111:
	.word	enemies
	.word	move
	.word	bullets
	.size	updateGame, .-updateGame
	.comm	bullets,640,4
	.comm	enemies,1100,4
	.comm	player,28,4
	.comm	move,4,4
	.comm	lives,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
