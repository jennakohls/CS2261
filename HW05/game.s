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
	.type	updateBall.part.1, %function
updateBall.part.1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	ldr	r0, [r0]
	ldr	r3, [r5, #16]
	ldr	r2, [r5, #8]
	add	r3, r0, r3
	add	r3, r3, r2
	cmp	r3, #152
	sub	sp, sp, #20
	bgt	.L2
	add	r3, r0, r2
	cmp	r3, #7
	ble	.L2
.L3:
	ldr	r1, [r5, #4]
	ldr	r3, [r5, #20]
	ldr	r2, [r5, #12]
	add	r3, r1, r3
	add	r3, r3, r2
	cmp	r3, #152
	bgt	.L4
	add	r3, r1, r2
	cmp	r3, #7
	ble	.L4
.L5:
	ldr	r4, .L17
	mov	r7, #8
	ldr	r8, .L17+4
	ldr	r9, .L17+8
	add	r6, r4, #6400
	b	.L8
.L6:
	add	r4, r4, #16
	cmp	r4, r6
	beq	.L16
.L8:
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L6
	ldm	r4, {ip, lr}
	add	r2, r5, #16
	ldm	r2, {r2, r3}
	str	r7, [sp, #12]
	str	r7, [sp, #8]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	movne	r1, #0
	ldrne	r2, [r5, #12]
	ldrne	r3, [r5, #8]
	rsbne	r2, r2, #0
	rsbne	r3, r3, #0
	add	r4, r4, #16
	strne	r1, [r9]
	strne	r2, [r5, #12]
	strne	r3, [r5, #8]
	cmp	r4, r6
	ldm	r5, {r0, r1}
	bne	.L8
.L16:
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	add	r0, r2, r0
	add	r1, r3, r1
	stm	r5, {r0, r1}
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L4:
	rsb	r2, r2, #0
	str	r2, [r5, #12]
	b	.L5
.L2:
	rsb	r2, r2, #0
	str	r2, [r5, #8]
	b	.L3
.L18:
	.align	2
.L17:
	.word	tiles
	.word	collision
	.word	.LANCHOR0
	.size	updateBall.part.1, .-updateBall.part.1
	.align	2
	.global	initTiles
	.syntax unified
	.arm
	.fpu softvfp
	.type	initTiles, %function
initTiles:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, #1
	mov	lr, r1
	ldr	r2, .L25
	ldr	ip, .L25+4
	ldr	r0, .L25+8
.L22:
	umull	r4, r5, r1, r0
	lsl	r8, r1, #3
	smull	r9, r10, r8, ip
	lsr	r7, r5, #4
	lsl	r7, r7, #3
	sub	r4, r7, #152
	rsbs	r3, r4, #0
	adc	r3, r3, r4
	asr	r4, r8, #31
	rsb	r4, r4, r10, asr #6
	add	r4, r4, r4, lsl #2
	sub	r4, r8, r4, lsl #5
	cmp	r7, #0
	moveq	r3, #1
	cmp	r4, #0
	moveq	r3, #1
	cmp	r4, #152
	orreq	r3, r3, #1
	cmp	r3, #0
	movne	r3, r6
	add	r1, r1, #1
	cmp	r1, #400
	str	lr, [r2, #12]
	str	r7, [r2]
	str	r3, [r2, #8]
	str	r4, [r2, #4]
	add	r2, r2, #16
	bne	.L22
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L26:
	.align	2
.L25:
	.word	tiles
	.word	1717986919
	.word	-858993459
	.size	initTiles, .-initTiles
	.align	2
	.global	updateTile
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateTile, %function
updateTile:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #8
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L51
	ldm	r5, {r2, ip}
	sub	sp, sp, #20
	mov	r4, r0
	ldr	r6, .L51+4
	ldm	r0, {r0, r1}
	stm	sp, {r2, ip}
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	mov	r2, r3
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L28
	ldr	r3, [r4, #8]
	cmp	r3, #0
	moveq	r3, #1
	streq	r3, [r4, #12]
	streq	r3, [r5, #16]
.L28:
	mov	r3, #8
	ldm	r5, {ip, lr}
	ldm	r4, {r0, r1}
	mov	r2, r3
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L27
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L27
	mov	r2, #0
	ldr	r6, .L51+8
	ldr	r7, [r6]
	mov	ip, r2
	mov	r4, r2
	mov	r1, r7
	mov	lr, #1
	ldr	r3, .L51+12
	str	r2, [r5, #20]
	add	r0, r3, #6400
.L31:
	ldr	r2, [r3, #12]
	cmp	r2, #0
	movne	ip, #1
	strne	r4, [r3, #12]
	strne	lr, [r3, #8]
	add	r3, r3, #16
	addne	r1, r1, ip
	cmp	r3, r0
	bne	.L31
	cmp	ip, #0
	movne	r7, r1
	mov	r2, #0
	ldr	r3, [r6, #4]
	add	r7, r3, r7
	stm	r6, {r2, r7}
.L27:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L52:
	.align	2
.L51:
	.word	player
	.word	collision
	.word	.LANCHOR1
	.word	tiles
	.size	updateTile, .-updateTile
	.align	2
	.global	drawTile
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTile, %function
drawTile:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #12]
	cmp	r3, #0
	sub	sp, sp, #8
	ldr	r2, [r0]
	ldr	r1, [r0, #4]
	movne	ip, #253
	bne	.L58
	ldr	r3, [r0, #8]
	cmp	r3, #0
	movne	ip, #251
	moveq	ip, #250
.L58:
	mov	r3, #8
	mov	r0, r2
	str	ip, [sp]
	mov	r2, r3
	ldr	r4, .L59
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L60:
	.align	2
.L59:
	.word	drawRect4
	.size	drawTile, .-drawTile
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
	push	{r4, r5, r6, r7, lr}
	mov	r0, #250
	sub	sp, sp, #12
	ldr	r3, .L72
	mov	lr, pc
	bx	r3
	ldr	r4, .L72+4
	add	r5, r4, #6400
.L62:
	mov	r0, r4
	add	r4, r4, #16
	bl	drawTile
	cmp	r4, r5
	bne	.L62
	mov	r7, #254
	ldr	r4, .L72+8
	ldr	r6, .L72+12
	add	r5, r4, #140
.L64:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L71
.L63:
	add	r4, r4, #28
	cmp	r4, r5
	bne	.L64
	mov	r3, #8
	ldr	ip, .L72+16
	ldr	r2, .L72+20
	ldr	r4, .L72+24
	ldm	r2, {r0, r1}
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L71:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	str	r7, [sp]
	mov	lr, pc
	bx	r6
	b	.L63
.L73:
	.align	2
.L72:
	.word	fillScreen4
	.word	tiles
	.word	balls
	.word	drawRect4
	.word	pacmanBitmap
	.word	player
	.word	drawImage4
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
	@ link register save eliminated.
	mov	r2, #0
	mov	r1, #8
	ldr	r3, .L75
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	bx	lr
.L76:
	.align	2
.L75:
	.word	player
	.size	initPlayer, .-initPlayer
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
	@ link register save eliminated.
	ldr	r3, .L100
	ldr	r2, [r3, #16]
	cmp	r2, #0
	ldr	r2, .L100+4
	ldrh	r2, [r2, #48]
	bne	.L78
	tst	r2, #32
	bne	.L79
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	cmp	r2, r1
	bge	.L98
.L79:
	ldr	r2, .L100+4
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L81
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	add	ip, r2, #7
	rsb	r0, r1, #160
	cmp	ip, r0
	bge	.L81
	mov	r0, #2
	add	r2, r2, r1
	str	r2, [r3, #4]
	str	r0, [r3, #20]
	bx	lr
.L78:
	tst	r2, #32
	beq	.L99
.L83:
	ldr	r2, .L100+4
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L84
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	add	ip, r2, #7
	rsb	r0, r1, #160
	cmp	ip, r0
	bge	.L84
	ldr	r0, [r3, #20]
	cmp	r0, #2
	beq	.L84
	mov	r0, #4
	add	r2, r2, r1
	str	r2, [r3, #4]
	str	r0, [r3, #20]
	bx	lr
.L99:
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	cmp	r2, r1
	blt	.L83
	ldr	r0, [r3, #20]
	cmp	r0, #4
	beq	.L83
	mov	r0, #2
	sub	r2, r2, r1
	str	r2, [r3, #4]
	str	r0, [r3, #20]
	bx	lr
.L81:
	ldr	r2, .L100+4
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L82
	ldr	r1, [r3]
	ldr	r2, [r3, #12]
	sub	r2, r1, r2
	cmp	r2, #0
	blt	.L82
	mov	r2, #1
	ldr	r0, [r3, #8]
	sub	r1, r1, r0
	str	r1, [r3]
	str	r2, [r3, #20]
	bx	lr
.L82:
	ldr	r2, .L100+4
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bxne	lr
	ldr	r1, [r3]
	ldr	r2, [r3, #12]
	add	r2, r1, r2
	cmp	r2, #152
	movle	r0, #3
	ldrle	r2, [r3, #8]
	addle	r1, r2, r1
	strle	r1, [r3]
	strle	r0, [r3, #20]
	bx	lr
.L84:
	ldr	r2, .L100+4
	ldrh	r2, [r2, #48]
	tst	r2, #64
	bne	.L85
	ldr	r1, [r3]
	ldr	r2, [r3, #12]
	sub	r2, r1, r2
	cmp	r2, #0
	blt	.L85
	ldr	r2, [r3, #20]
	cmp	r2, #1
	beq	.L85
	mov	r2, #3
	ldr	r0, [r3, #8]
	sub	r1, r1, r0
	str	r1, [r3]
	str	r2, [r3, #20]
	bx	lr
.L85:
	ldr	r2, .L100+4
	ldrh	r2, [r2, #48]
	tst	r2, #128
	bxne	lr
	ldr	r1, [r3]
	ldr	r2, [r3, #12]
	add	r2, r1, r2
	cmp	r2, #152
	bxgt	lr
	ldr	r2, [r3, #20]
	cmp	r2, #3
	movne	r0, #1
	ldrne	r2, [r3, #8]
	addne	r1, r2, r1
	strne	r1, [r3]
	strne	r0, [r3, #20]
	bx	lr
.L98:
	mov	r0, #4
	sub	r2, r2, r1
	str	r2, [r3, #4]
	str	r0, [r3, #20]
	bx	lr
.L101:
	.align	2
.L100:
	.word	player
	.word	67109120
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
	push	{r4, r5, r6, lr}
	bl	updatePlayer
	ldr	r4, .L113
	add	r5, r4, #6400
.L103:
	mov	r0, r4
	add	r4, r4, #16
	bl	updateTile
	cmp	r4, r5
	bne	.L103
	ldr	r4, .L113+4
	add	r5, r4, #140
.L105:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L112
.L104:
	add	r4, r4, #28
	cmp	r5, r4
	bne	.L105
	pop	{r4, r5, r6, lr}
	bx	lr
.L112:
	mov	r0, r4
	bl	updateBall.part.1
	b	.L104
.L114:
	.align	2
.L113:
	.word	tiles
	.word	balls
	.size	updateGame, .-updateGame
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
	mov	r3, #8
	push	{r4, lr}
	ldr	ip, .L117
	ldr	r2, .L117+4
	sub	sp, sp, #8
	ldm	r2, {r0, r1}
	ldr	r4, .L117+8
	mov	r2, r3
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L118:
	.align	2
.L117:
	.word	pacmanBitmap
	.word	player
	.word	drawImage4
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	initBalls
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBalls, %function
initBalls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	mov	r9, #6
	mov	r8, #2
	ldr	r4, .L123
	ldr	r6, .L123+4
	ldr	r5, .L123+8
	add	r7, r4, #140
.L120:
	str	r9, [r4, #16]
	str	r9, [r4, #20]
	mov	lr, pc
	bx	r6
	smull	fp, ip, r0, r5
	asr	r2, r0, #31
	rsb	r3, r2, ip, asr #5
	add	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #4
	add	r0, r0, #8
	str	r0, [r4]
	mov	lr, pc
	bx	r6
	mov	r1, #1
	smull	fp, ip, r0, r5
	asr	r2, r0, #31
	rsb	r3, r2, ip, asr #5
	add	r3, r3, r3, lsl #3
	sub	r0, r0, r3, lsl #4
	add	r0, r0, #8
	str	r8, [r4, #8]
	str	r8, [r4, #12]
	str	r0, [r4, #4]
	str	r1, [r4, #24]
	add	r4, r4, #28
	cmp	r4, r7
	bne	.L120
	pop	{r4, r5, r6, r7, r8, r9, fp, lr}
	bx	lr
.L124:
	.align	2
.L123:
	.word	balls
	.word	rand
	.word	954437177
	.size	initBalls, .-initBalls
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
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L127
	mov	r0, #3
	ldr	r4, .L127+4
	mov	lr, pc
	bx	r4
	mov	ip, #992
	mov	r2, #31
	mvn	r1, #32768
	mov	r4, #0
	mov	lr, #31744
	mov	r0, #2
	ldr	r3, .L127+8
	strh	ip, [r3, #248]	@ movhi
	ldr	ip, .L127+12
	strh	r2, [r3, #250]	@ movhi
	strh	r1, [r3, #252]	@ movhi
	ldr	r2, .L127+16
	ldr	r1, .L127+20
	strh	r4, [r3, #244]	@ movhi
	strh	lr, [r3, #246]	@ movhi
	strh	ip, [r3, #254]	@ movhi
	str	r4, [r2, #4]
	str	r4, [r2]
	str	r0, [r1]
	bl	initTiles
	mov	r2, #8
	ldr	r3, .L127+24
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r4, [r3, #16]
	str	r4, [r3, #20]
	pop	{r4, lr}
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	b	initBalls
.L128:
	.align	2
.L127:
	.word	pacmanPal
	.word	DMANow
	.word	83886336
	.word	15855
	.word	.LANCHOR1
	.word	.LANCHOR0
	.word	player
	.size	initGame, .-initGame
	.align	2
	.global	updateBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall, %function
updateBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	b	updateBall.part.1
	.size	updateBall, .-updateBall
	.align	2
	.global	drawBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBall, %function
drawBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	bxeq	lr
	mov	ip, #254
	push	{r4, lr}
	add	r2, r0, #16
	sub	sp, sp, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r4, .L140
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L141:
	.align	2
.L140:
	.word	drawRect4
	.size	drawBall, .-drawBall
	.comm	tiles,6400,4
	.global	tempScore
	.global	score
	.global	livesRemaining
	.comm	balls,140,4
	.comm	player,24,4
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	livesRemaining, %object
	.size	livesRemaining, 4
livesRemaining:
	.word	2
	.bss
	.align	2
	.set	.LANCHOR1,. + 0
	.type	tempScore, %object
	.size	tempScore, 4
tempScore:
	.space	4
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
