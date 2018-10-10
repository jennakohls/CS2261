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
	.global	drawPaddle
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPaddle, %function
drawPaddle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, lr}
	ldr	r4, .L4
	sub	sp, sp, #12
	ldr	r1, [r4, #8]
	str	r3, [sp]
	ldr	r5, .L4+4
	mov	r3, #54
	mov	r2, #4
	mov	r0, #130
	mov	lr, pc
	bx	r5
	ldrh	r3, [r4, #24]
	ldr	r1, [r4, #4]
	str	r3, [sp]
	mov	r2, #4
	mov	r3, #54
	mov	r0, #130
	mov	lr, pc
	bx	r5
	ldr	r3, [r4, #4]
	str	r3, [r4, #8]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	paddle
	.word	drawRect
	.size	drawPaddle, .-drawPaddle
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
	mov	ip, #0
	push	{r4, r5, lr}
	ldr	r4, .L8
	sub	sp, sp, #12
	add	r0, r4, #8
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #32]
	ldm	r0, {r0, r1}
	ldr	r5, .L8+4
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldrh	ip, [r4, #24]
	ldr	r3, [r4, #28]
	ldr	r2, [r4, #32]
	ldm	r4, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	ball
	.word	drawRect
	.size	drawBall, .-drawBall
	.align	2
	.global	drawBricks
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBricks, %function
drawBricks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L19
	sub	sp, sp, #12
	mov	r7, #0
	ldr	r6, .L19+4
	add	r5, r4, #1056
	b	.L12
.L11:
	ldr	r2, [r4, #4]
	ldr	r3, [r4]
	str	r2, [r4, #12]
	str	r3, [r4, #8]
	add	r4, r4, #24
	cmp	r4, r5
	beq	.L18
.L12:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L11
	add	r0, r4, #8
	ldm	r0, {r0, r1}
	mov	r3, #16
	str	r7, [sp]
	mov	r2, #9
	mov	lr, pc
	bx	r6
	ldrh	r3, [r4, #20]
	ldm	r4, {r0, r1}
	str	r3, [sp]
	mov	r2, #9
	mov	r3, #16
	mov	lr, pc
	bx	r6
	b	.L11
.L18:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	bricks
	.word	drawRect
	.size	drawBricks, .-drawBricks
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
	bl	drawPaddle
	bl	drawBall
	pop	{r4, lr}
	b	drawBricks
	.size	drawGame, .-drawGame
	.align	2
	.global	updateBricks
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBricks, %function
updateBricks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L42
	sub	sp, sp, #20
	mov	fp, #16
	ldr	r5, .L42+4
	ldr	r10, .L42+8
	ldr	r9, .L42+12
	ldr	r8, .L42+16
	add	r6, r4, #1056
	b	.L32
.L41:
	add	r3, r0, #1
	cmp	r3, #239
	movgt	r3, #0
	str	r0, [r4, #12]
	strgt	r3, [r4, #4]
	bgt	.L29
.L38:
	str	r3, [r4, #4]
.L29:
	add	r4, r4, #24
	cmp	r4, r6
	beq	.L39
.L32:
	ldr	r3, [r4, #16]
	cmp	r3, #0
	ldr	ip, [r4]
	ldr	r0, [r4, #4]
	bne	.L40
.L24:
	tst	ip, #1
	bne	.L41
	sub	r3, r0, #1
	cmp	r3, #0
	str	r0, [r4, #12]
	movle	r3, #239
	b	.L38
.L40:
	mov	r7, #9
	add	r2, r5, #28
	ldm	r2, {r2, r3}
	ldr	r1, [r5, #4]
	str	r0, [sp, #4]
	str	fp, [sp, #12]
	ldr	r0, [r5]
	str	ip, [sp]
	str	r7, [sp, #8]
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	bne	.L26
	ldr	lr, [r4, #12]
	ldr	ip, [r4, #8]
	add	r2, r5, #28
	ldm	r2, {r2, r3}
	ldm	r5, {r0, r1}
	str	fp, [sp, #12]
	str	r7, [sp, #8]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r10
	cmp	r0, #0
	ldreq	ip, [r4]
	ldreq	r0, [r4, #4]
	beq	.L24
.L26:
	mov	ip, #0
	ldm	r4, {r0, r1}
	str	ip, [sp]
	mov	r3, #16
	mov	r2, #9
	str	ip, [r4, #16]
	ldr	ip, .L42+20
	mov	lr, pc
	bx	ip
	ldr	r1, [r5, #16]
	ldr	r2, [r9]
	ldr	r3, [r8]
	rsb	r1, r1, #0
	add	r2, r2, #1
	sub	r3, r3, #1
	str	r1, [r5, #16]
	str	r2, [r9]
	str	r3, [r8]
	ldr	ip, [r4]
	ldr	r0, [r4, #4]
	b	.L24
.L39:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L43:
	.align	2
.L42:
	.word	bricks
	.word	ball
	.word	collision
	.word	score
	.word	bricksRemaining
	.word	drawRect
	.size	updateBricks, .-updateBricks
	.align	2
	.global	updatePaddle
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePaddle, %function
updatePaddle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L47
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L45
	ldr	r2, .L47+4
	ldr	r3, [r2, #4]
	ldr	r1, [r2, #20]
	subs	r3, r3, r1
	strpl	r3, [r2, #4]
.L45:
	ldr	r3, .L47
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bxne	lr
	ldr	r3, .L47+4
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #20]
	ldr	r1, [r3, #12]
	add	r2, r2, r0
	add	r1, r2, r1
	cmp	r1, #240
	strle	r2, [r3, #4]
	bx	lr
.L48:
	.align	2
.L47:
	.word	67109120
	.word	paddle
	.size	updatePaddle, .-updatePaddle
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L63
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #8]
	ldr	ip, .L63+4
	add	r3, r2, r3
	cmp	r3, #139
	sub	sp, sp, #16
	ldr	r6, [ip, #4]
	ldr	r5, [ip, #12]
	ble	.L50
	mov	r7, #110
	ldr	r0, .L63+8
	ldr	r1, [r0]
	sub	r1, r1, #1
	ldr	lr, .L63+12
	str	r1, [r0]
	add	r1, r5, r5, lsr #31
	add	r1, r6, r1, asr #1
	mov	r3, #0
	mov	r2, lr
	str	r1, [r4, #4]
	str	r7, [r4]
	b	.L53
.L51:
	add	r3, r3, #1
	cmp	r3, #44
	add	r2, r2, #24
	beq	.L62
.L53:
	ldr	r0, [r2, #16]
	cmp	r0, #0
	bne	.L51
	mov	r2, #1
	add	r3, r3, r3, lsl r2
	add	r3, lr, r3, lsl #3
	str	r2, [r3, #16]
	mov	r0, #110
	b	.L52
.L50:
	cmp	r3, #0
	rsble	r2, r2, #0
	strle	r2, [r4, #16]
	ldm	r4, {r0, r1}
.L52:
	ldr	r2, [r4, #20]
	ldr	r7, [r4, #12]
	ldr	r3, [r4, #32]
	add	lr, r7, r2
	add	r8, lr, r3
	cmp	r8, #239
	str	r5, [sp, #12]
	rsbgt	r8, r2, #0
	subgt	lr, r7, r2
	strgt	r8, [r4, #20]
	movgt	r2, r8
	cmp	lr, #0
	ldr	lr, [ip, #16]
	ldr	ip, [ip]
	rsble	r2, r2, #0
	strle	r2, [r4, #20]
	stmib	sp, {r6, lr}
	ldr	r2, [r4, #28]
	str	ip, [sp]
	ldr	r5, .L63+16
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	ldrne	r2, [r4, #16]
	ldreq	r1, [r4, #16]
	rsbne	r1, r2, #0
	ldr	r0, [r4, #20]
	ldm	r4, {r2, r3}
	add	r2, r2, r1
	add	r3, r3, r0
	strne	r1, [r4, #16]
	stm	r4, {r2, r3}
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L62:
	mov	r0, #110
	b	.L52
.L64:
	.align	2
.L63:
	.word	ball
	.word	paddle
	.word	livesRemaining
	.word	bricks
	.word	collision
	.size	updateBall, .-updateBall
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
	bl	updatePaddle
	bl	updateBall
	pop	{r4, lr}
	b	updateBricks
	.size	updateGame, .-updateGame
	.align	2
	.global	initPaddle
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPaddle, %function
initPaddle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #100
	mov	r4, #130
	mvn	lr, #32768
	mov	ip, #54
	mov	r0, #4
	mov	r1, #2
	ldr	r3, .L69
	str	r4, [r3]
	strh	lr, [r3, #24]	@ movhi
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	ip, [r3, #12]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	paddle
	.size	initPaddle, .-initPaddle
	.align	2
	.global	initBall
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBall, %function
initBall:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	ip, #110
	mvn	lr, #32768
	mov	r0, #127
	mvn	r1, #0
	mov	r2, #8
	ldr	r3, .L73
	strh	lr, [r3, #24]	@ movhi
	str	ip, [r3]
	str	ip, [r3, #8]
	str	r0, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	ldr	lr, [sp], #4
	bx	lr
.L74:
	.align	2
.L73:
	.word	ball
	.size	initBall, .-initBall
	.align	2
	.global	initBricks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBricks, %function
initBricks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r1, #0
	mov	r9, #1
	mov	r8, #31
	ldr	r2, .L79
	ldr	lr, .L79+4
	ldr	ip, .L79+8
	add	r0, r2, #1056
.L76:
	smull	r6, r7, r1, ip
	umull	r10, fp, r1, lr
	asr	r3, r1, #31
	rsb	r3, r3, r7, asr #1
	add	r4, r3, r3, lsl #2
	add	r3, r3, r4, lsl #1
	sub	r3, r1, r3
	lsr	r4, fp, #3
	lsl	r3, r3, #4
	add	r4, r4, r4, lsl #3
	add	r3, r3, #30
	add	r4, r4, #20
	str	r9, [r2, #16]
	strh	r8, [r2, #20]	@ movhi
	str	r3, [r2, #4]
	str	r3, [r2, #12]
	str	r4, [r2]
	str	r4, [r2, #8]
	add	r2, r2, #24
	cmp	r2, r0
	add	r1, r1, #2
	bne	.L76
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L80:
	.align	2
.L79:
	.word	bricks
	.word	-1171354717
	.word	780903145
	.size	initBricks, .-initBricks
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, #0
	mov	r10, #3
	mov	r9, #44
	mov	r4, #100
	mvn	lr, #32768
	mov	r8, #130
	mov	r7, #54
	mov	r6, #4
	mov	r5, #2
	mov	ip, #110
	mov	r0, #127
	mvn	r1, #0
	mov	r2, #8
	ldr	r3, .L83
	str	fp, [r3]
	ldr	r3, .L83+4
	str	r10, [r3]
	ldr	r3, .L83+8
	str	r9, [r3]
	ldr	r3, .L83+12
	str	r4, [r3, #4]
	str	r4, [r3, #8]
	str	r8, [r3]
	str	r7, [r3, #12]
	str	r6, [r3, #16]
	str	r5, [r3, #20]
	strh	lr, [r3, #24]	@ movhi
	ldr	r3, .L83+16
	strh	lr, [r3, #24]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	str	ip, [r3]
	stmib	r3, {r0, ip}
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	b	initBricks
.L84:
	.align	2
.L83:
	.word	score
	.word	livesRemaining
	.word	bricksRemaining
	.word	paddle
	.word	ball
	.size	initGame, .-initGame
	.global	BACKGROUND_COLOR
	.comm	bricksRemaining,4,4
	.comm	livesRemaining,4,4
	.comm	bricks,1056,4
	.comm	ball,36,4
	.comm	paddle,28,4
	.section	.rodata
	.align	1
	.type	BACKGROUND_COLOR, %object
	.size	BACKGROUND_COLOR, 2
BACKGROUND_COLOR:
	.space	2
	.ident	"GCC: (devkitARM release 47) 7.1.0"
