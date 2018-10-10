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
	.type	drawHeart.part.0, %function
drawHeart.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldrh	ip, [r0, #14]
	ldr	lr, [r0]
	sub	sp, sp, #8
	ldrh	r3, [r0, #12]
	ldmib	r0, {r1, r2}
	ldr	r4, .L4
	mov	r0, lr
	str	ip, [sp]
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	drawAHeart
	.size	drawHeart.part.0, .-drawHeart.part.0
	.set	updateHeart.part.1,drawHeart.part.0
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBall.part.3, %function
updateBall.part.3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cmp	r0, #0
	sub	sp, sp, #20
	ldr	r1, [r4, #4]
	ble	.L7
	ldr	r2, [r4, #24]
	add	r3, r0, r2
	cmp	r3, #160
	bgt	.L7
.L8:
	ldr	r3, .L20
	ldr	ip, [r3, #24]
	ldr	r5, [r3, #20]
	ldr	lr, [r4, #16]
	str	ip, [sp, #12]
	add	r0, r0, lr
	ldm	r3, {ip, lr}
	str	r5, [sp, #8]
	ldr	r5, .L20+4
	ldr	r3, [r4, #28]
	stm	sp, {ip, lr}
	str	r0, [r4]
	mov	lr, pc
	bx	r5
	cmp	r0, #0
	beq	.L6
	mov	r3, #0
	ldr	r2, .L20+8
	ldr	r1, [r2, #16]
	cmp	r1, r3
	str	r3, [r4, #36]
	beq	.L10
	ldr	r3, [r2, #36]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r2, #56]
	cmp	r3, #0
	moveq	r1, #2
	beq	.L10
.L11:
	ldr	r2, .L20+12
	ldr	r3, [r2]
	sub	r3, r3, #1
	str	r3, [r2]
.L6:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L7:
	mov	r3, #0
	str	r1, [r4, #12]
	str	r3, [r4]
	str	r0, [r4, #8]
	ldr	r3, .L20+16
	mov	lr, pc
	bx	r3
	ldr	r1, .L20+20
	smull	r2, r3, r0, r1
	asr	r1, r0, #31
	add	r3, r0, r3
	rsb	r1, r1, r3, asr #7
	rsb	r1, r1, r1, lsl #4
	sub	r1, r0, r1, lsl #4
	str	r1, [r4, #4]
	ldr	r0, [r4]
	ldr	r2, [r4, #24]
	b	.L8
.L12:
	mov	r1, #1
.L10:
	mov	r3, #0
	add	r1, r1, r1, lsl #2
	lsl	r1, r1, #2
	add	r4, r2, r1
	ldr	r0, [r2, r1]
	ldr	r5, .L20+24
	ldmib	r4, {r1, r2}
	str	r3, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #16]
	b	.L11
.L21:
	.align	2
.L20:
	.word	player
	.word	collision
	.word	hearts
	.word	heartsRemaining
	.word	rand
	.word	-2004318071
	.word	drawAHeart
	.size	updateBall.part.3, .-updateBall.part.3
	.align	2
	.global	drawBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBar, %function
drawBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #31
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #240
	mov	r2, #3
	mov	r1, #0
	mov	r0, #120
	ldr	r4, .L24
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L25:
	.align	2
.L24:
	.word	drawRect
	.size	drawBar, .-drawBar
	.align	2
	.global	initHearts
	.syntax unified
	.arm
	.fpu softvfp
	.type	initHearts, %function
initHearts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #8
	mov	r0, #2
	mov	r2, #0
	push	{r4, lr}
	mov	ip, #210
	mov	r4, #160
	mov	lr, #185
	ldr	r3, .L28
	str	r1, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #40]
	ldr	r1, .L28+4
	str	r0, [r3, #8]
	str	r0, [r3, #28]
	str	r0, [r3, #48]
	str	r1, [r3, #12]
	str	r1, [r3, #32]
	str	r1, [r3, #52]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r4, [r3, #4]
	str	lr, [r3, #24]
	str	ip, [r3, #44]
	pop	{r4, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	hearts
	.word	2064383
	.size	initHearts, .-initHearts
	.align	2
	.global	drawHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bxne	lr
	b	drawHeart.part.0
	.size	drawHeart, .-drawHeart
	.align	2
	.global	updateHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateHeart, %function
updateHeart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #16]
	cmp	r3, #0
	bxne	lr
	b	updateHeart.part.1
	.size	updateHeart, .-updateHeart
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
	mov	r1, #140
	mov	r4, #1
	mov	lr, #10
	mov	r2, #118
	mov	ip, #5
	mov	r0, #992
	ldr	r3, .L36
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r1, [r3]
	str	r1, [r3, #8]
	str	ip, [r3, #24]
	strh	r0, [r3, #28]	@ movhi
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	pop	{r4, lr}
	bx	lr
.L37:
	.align	2
.L36:
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
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L39
	ldr	r3, .L42+4
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #16]
	cmp	r2, r1
	bge	.L41
.L39:
	ldr	r3, .L42
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bxne	lr
	ldr	r3, .L42+4
	ldr	r1, [r3, #4]
	ldr	r0, [r3, #16]
	ldr	r2, [r3, #24]
	rsb	ip, r0, #240
	add	r2, r1, r2
	cmp	r2, ip
	addle	r1, r1, r0
	strle	r1, [r3, #4]
	bx	lr
.L41:
	sub	r2, r2, r1
	str	r2, [r3, #4]
	bx	lr
.L43:
	.align	2
.L42:
	.word	67109120
	.word	player
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
	ldr	r4, .L59
	add	r5, r4, #352
	b	.L46
.L45:
	add	r4, r4, #44
	cmp	r4, r5
	beq	.L55
.L46:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L45
	mov	r0, r4
	add	r4, r4, #44
	bl	updateBall.part.3
	cmp	r4, r5
	bne	.L46
.L55:
	ldr	r4, .L59+4
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L57
.L48:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L58
.L49:
	pop	{r4, r5, r6, lr}
	b	updatePlayer
.L56:
	mov	r0, r4
	bl	updateHeart.part.1
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L48
.L57:
	ldr	r0, .L59+8
	bl	updateHeart.part.1
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L49
.L58:
	ldr	r0, .L59+12
	bl	updateHeart.part.1
	pop	{r4, r5, r6, lr}
	b	updatePlayer
.L60:
	.align	2
.L59:
	.word	balls
	.word	hearts
	.word	hearts+20
	.word	hearts+40
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
	mov	ip, #0
	push	{r4, r5, lr}
	ldr	r4, .L63
	sub	sp, sp, #12
	add	r2, r4, #20
	add	r0, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L63+4
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldrh	ip, [r4, #28]
	add	r2, r4, #20
	ldm	r2, {r2, r3}
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
.L64:
	.align	2
.L63:
	.word	player
	.word	drawRect
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #10
	ldr	r4, .L69
	ldr	r5, .L69+4
	ldr	r8, .L69+8
	ldr	r7, .L69+12
	add	r6, r4, #352
.L66:
	str	r9, [r4, #24]
	str	r9, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	r10, fp, r0, r8
	asr	r2, r0, #31
	rsb	r3, r2, fp, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r10, #2
	mov	r1, #1
	mov	lr, #31744
	mov	ip, #0
	smull	r2, r3, r0, r7
	add	r2, r0, r3
	asr	r3, r0, #31
	rsb	r3, r3, r2, asr #7
	rsb	r3, r3, r3, lsl #4
	ldr	r2, [r4]
	sub	r3, r0, r3, lsl #4
	str	r3, [r4, #4]
	str	r3, [r4, #12]
	str	r10, [r4, #16]
	str	r1, [r4, #20]
	str	r1, [r4, #36]
	strh	lr, [r4, #32]	@ movhi
	str	ip, [r4, #40]
	str	r2, [r4, #8]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L66
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L70:
	.align	2
.L69:
	.word	balls
	.word	rand
	.word	1374389535
	.word	-2004318071
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
	push	{r4, r5, r6, lr}
	mov	r1, #140
	mov	r2, #118
	mov	lr, #10
	mov	ip, #5
	mov	r0, #992
	mov	r4, #1
	ldr	r3, .L73
	mov	r5, #3
	str	r1, [r3]
	str	r1, [r3, #8]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #24]
	strh	r0, [r3, #28]	@ movhi
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	bl	initBalls
	mov	r1, #8
	mov	r0, #2
	mov	r2, #0
	mov	r4, #160
	mov	lr, #185
	mov	ip, #210
	ldr	r3, .L73+4
	str	r5, [r3]
	ldr	r3, .L73+8
	str	r1, [r3]
	str	r1, [r3, #20]
	str	r1, [r3, #40]
	ldr	r1, .L73+12
	str	r0, [r3, #8]
	str	r0, [r3, #28]
	str	r0, [r3, #48]
	str	r1, [r3, #12]
	str	r1, [r3, #32]
	str	r1, [r3, #52]
	str	r2, [r3, #16]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r4, [r3, #4]
	str	lr, [r3, #24]
	str	ip, [r3, #44]
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	player
	.word	heartsRemaining
	.word	hearts
	.word	2064383
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
	ldr	r3, [r0, #36]
	cmp	r3, #0
	bxeq	lr
	b	updateBall.part.3
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r4, r0
	bne	.L81
	ldr	ip, [r0, #40]
	cmp	ip, #0
	beq	.L82
.L79:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L82:
	add	r2, r0, #24
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L83
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L79
.L81:
	mov	ip, #0
	add	r2, r0, #24
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L83
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	ldrh	ip, [r4, #32]
	add	r2, r4, #24
	ldm	r2, {r2, r3}
	ldm	r4, {r0, r1}
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	b	.L79
.L84:
	.align	2
.L83:
	.word	drawRect
	.size	drawBall, .-drawBall
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
	push	{r4, r5, lr}
	sub	sp, sp, #12
	bl	drawPlayer
	mov	r2, #31
	ldr	r4, .L95
	str	r2, [sp]
	mov	r3, #240
	mov	r2, #3
	mov	r1, #0
	mov	r0, #120
	mov	lr, pc
	bx	r4
	ldr	r4, .L95+4
	add	r5, r4, #352
.L86:
	mov	r0, r4
	add	r4, r4, #44
	bl	drawBall
	cmp	r4, r5
	bne	.L86
	ldr	r4, .L95+8
	ldr	r3, [r4, #16]
	cmp	r3, #0
	beq	.L92
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L93
.L88:
	ldr	r3, [r4, #56]
	cmp	r3, #0
	beq	.L94
.L85:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L92:
	mov	r0, r4
	bl	drawHeart.part.0
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L88
.L93:
	ldr	r0, .L95+12
	bl	drawHeart.part.0
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L85
.L94:
	ldr	r0, .L95+16
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawHeart.part.0
.L96:
	.align	2
.L95:
	.word	drawRect
	.word	balls
	.word	hearts
	.word	hearts+20
	.word	hearts+40
	.size	drawGame, .-drawGame
	.comm	heartsRemaining,4,4
	.comm	hearts,60,4
	.comm	balls,352,4
	.comm	player,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
