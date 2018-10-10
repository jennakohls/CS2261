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
	.type	updateBullet.part.0, %function
updateBullet.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L8
	ldr	r1, [r3, #40]
	ldr	r2, [r0]
	ldr	r3, [r0, #20]
	cmp	r1, #0
	add	r3, r2, r3
	bne	.L6
	cmp	r3, #0
	ble	.L3
	ldr	r3, [r0, #16]
	add	r2, r3, r2
	str	r2, [r0]
	bx	lr
.L6:
	ldr	r1, [r0, #16]
	add	r3, r1, r3
	cmp	r3, #135
	ble	.L7
.L3:
	mov	r3, #0
	str	r3, [r0, #32]
	bx	lr
.L7:
	sub	r2, r2, r1
	str	r2, [r0]
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	updateBullet.part.0, .-updateBullet.part.0
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
	ldr	lr, [r0]
	cmp	lr, #0
	mov	r5, r0
	ldr	r2, [r0, #24]
	sub	sp, sp, #20
	ldr	r0, [r0, #16]
	ble	.L11
	add	r3, lr, r2
	cmp	r3, #120
	bgt	.L11
.L12:
	ldr	ip, [r5, #4]
	cmp	ip, #0
	ldr	r3, [r5, #28]
	ldr	r1, [r5, #20]
	ble	.L13
	add	r4, ip, r3
	cmp	r4, #239
	bgt	.L13
.L14:
	mov	r9, #0
	add	r0, lr, r0
	add	r1, ip, r1
	ldr	r4, .L29
	stm	r5, {r0, r1}
	ldr	r7, .L29+4
	ldr	r8, .L29+8
	add	r6, r4, #200
.L17:
	ldr	ip, [r4, #32]
	cmp	ip, #0
	bne	.L28
.L15:
	add	r4, r4, #40
	cmp	r6, r4
	bne	.L17
	ldr	ip, .L29+12
	add	r4, ip, #24
	ldm	r4, {r4, lr}
	str	lr, [sp, #12]
	ldm	ip, {ip, lr}
	str	r4, [sp, #8]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	movne	r2, #1
	ldrne	r3, .L29+16
	strne	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L13:
	rsb	r1, r1, #0
	str	r1, [r5, #20]
	b	.L14
.L11:
	rsb	r0, r0, #0
	str	r0, [r5, #16]
	b	.L12
.L28:
	add	ip, r4, #20
	ldm	ip, {ip, lr}
	str	lr, [sp, #12]
	ldr	lr, [r4, #4]
	str	ip, [sp, #8]
	ldr	ip, [r4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	ldrne	r3, [r8]
	strne	r9, [r4, #32]
	addne	r3, r3, #1
	add	r2, r5, #24
	strne	r3, [r8]
	strne	r9, [r5, #36]
	ldm	r5, {r0, r1}
	ldm	r2, {r2, r3}
	b	.L15
.L30:
	.align	2
.L29:
	.word	bullets
	.word	collision
	.word	score
	.word	player
	.word	dead
	.size	updateBall.part.1, .-updateBall.part.1
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
	mov	r2, #31744
	push	{r4, lr}
	sub	sp, sp, #8
	str	r2, [sp]
	mov	r3, #240
	mov	r2, #3
	mov	r1, #0
	mov	r0, #135
	ldr	r4, .L33
	mov	lr, pc
	bx	r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L34:
	.align	2
.L33:
	.word	drawRect
	.size	drawBar, .-drawBar
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
	mov	ip, #80
	push	{r4, lr}
	mov	r0, #120
	mov	r4, #20
	mov	lr, #0
	mov	r1, #1
	mov	r2, #5
	ldr	r3, .L37
	str	ip, [r3]
	str	ip, [r3, #8]
	ldr	ip, .L37+4
	str	r4, [r3, #36]
	str	lr, [r3, #40]
	strh	ip, [r3, #32]	@ movhi
	str	r0, [r3, #4]
	str	r0, [r3, #12]
	str	r1, [r3, #20]
	str	r1, [r3, #16]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	pop	{r4, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	player
	.word	31775
	.size	initPlayer, .-initPlayer
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
	ldr	r4, .L41
	sub	sp, sp, #12
	add	r2, r4, #24
	add	r0, r4, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L41+4
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
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	player
	.word	drawRect
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
	push	{r4, r5, r6, lr}
	mov	r0, #1
	mov	r6, #2
	mvn	r1, #1
	mov	r2, #0
	mvn	r5, #32768
	ldr	ip, .L47
	ldr	r3, .L47+4
	ldm	ip, {r4, lr}
	add	ip, r3, #200
.L44:
	str	r6, [r3, #20]
	str	r0, [r3, #24]
	str	r1, [r3, #16]
	strh	r5, [r3, #28]	@ movhi
	str	r2, [r3, #32]
	str	r0, [r3, #36]
	stm	r3, {r1, r2, r4, lr}
	add	r3, r3, #40
	cmp	r3, ip
	bne	.L44
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	player
	.word	bullets
	.size	initBullets, .-initBullets
	.align	2
	.global	fireBullet
	.syntax unified
	.arm
	.fpu softvfp
	.type	fireBullet, %function
fireBullet:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L60
	mov	r2, r0
	ldr	r1, [r2, #32]
	cmp	r1, #0
	mov	r3, #0
	beq	.L59
.L50:
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #40
	bxeq	lr
	ldr	r1, [r2, #32]
	cmp	r1, #0
	bne	.L50
.L59:
	push	{r4, r5, r6, lr}
	mov	r4, #1
	ldr	r5, .L60+4
	add	r3, r3, r3, lsl #2
	lsl	r3, r3, #3
	ldr	r2, [r5, #28]
	ldr	r6, [r5]
	add	ip, r0, r3
	add	lr, r2, r2, lsr #31
	str	r6, [r0, r3]
	ldr	r2, [r5, #4]
	ldr	r3, [ip, #24]
	add	r2, r2, lr, asr r4
	add	r3, r3, r3, lsr #31
	sub	r3, r2, r3, asr r4
	str	r4, [ip, #32]
	str	r1, [ip, #36]
	str	r3, [ip, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L61:
	.align	2
.L60:
	.word	bullets
	.word	player
	.size	fireBullet, .-fireBullet
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
	ldr	r3, .L81
	ldrh	r3, [r3, #48]
	tst	r3, #32
	push	{r4, lr}
	ldr	r4, .L81+4
	bne	.L63
	ldr	r3, [r4, #4]
	ldr	r2, [r4, #20]
	cmp	r3, r2
	subge	r3, r3, r2
	strge	r3, [r4, #4]
.L63:
	ldr	r3, .L81
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L64
	ldr	r2, [r4, #4]
	ldr	r1, [r4, #20]
	ldr	r3, [r4, #28]
	rsb	r0, r1, #240
	add	r3, r2, r3
	cmp	r3, r0
	addle	r2, r2, r1
	strle	r2, [r4, #4]
.L64:
	ldr	r3, .L81
	ldrh	r3, [r3, #48]
	tst	r3, #128
	bne	.L65
	ldr	r2, [r4]
	ldr	r1, [r4, #16]
	ldr	r3, [r4, #24]
	rsb	r0, r1, #135
	add	r3, r2, r3
	cmp	r3, r0
	addle	r2, r2, r1
	strle	r2, [r4]
.L65:
	ldr	r3, .L81
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L66
	ldr	r3, [r4]
	ldr	r2, [r4, #16]
	cmp	r3, r2
	subge	r3, r3, r2
	strge	r3, [r4]
.L66:
	ldr	r3, .L81+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L67
	ldr	r2, .L81+12
	ldrh	r2, [r2]
	tst	r2, #2
	beq	.L80
.L67:
	tst	r3, #1
	ldr	r3, [r4, #36]
	beq	.L79
	ldr	r2, .L81+12
	ldrh	r2, [r2]
	tst	r2, #1
	bne	.L79
	cmp	r3, #19
	bgt	.L71
.L79:
	add	r3, r3, #1
	str	r3, [r4, #36]
	pop	{r4, lr}
	bx	lr
.L80:
	ldr	r2, [r4, #40]
	rsbs	r2, r2, #1
	movcc	r2, #0
	str	r2, [r4, #40]
	b	.L67
.L71:
	bl	fireBullet
	mov	r3, #1
	str	r3, [r4, #36]
	pop	{r4, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	67109120
	.word	player
	.word	oldButtons
	.word	buttons
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
	ldr	r4, .L99
	add	r5, r4, #200
.L85:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L97
.L84:
	add	r4, r4, #40
	cmp	r4, r5
	bne	.L85
	ldr	r4, .L99+4
	add	r5, r4, #220
.L87:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L98
.L86:
	add	r4, r4, #44
	cmp	r5, r4
	bne	.L87
	pop	{r4, r5, r6, lr}
	bx	lr
.L98:
	mov	r0, r4
	bl	updateBall.part.1
	b	.L86
.L97:
	mov	r0, r4
	bl	updateBullet.part.0
	b	.L84
.L100:
	.align	2
.L99:
	.word	bullets
	.word	balls
	.size	updateGame, .-updateGame
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
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bxeq	lr
	b	updateBullet.part.0
	.size	updateBullet, .-updateBullet
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #32]
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r4, r0
	bne	.L107
	ldr	ip, [r0, #36]
	cmp	ip, #0
	beq	.L108
.L105:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L108:
	add	r2, r0, #20
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L109
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #36]
	b	.L105
.L107:
	mov	ip, #0
	add	r2, r0, #20
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L109
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
	b	.L105
.L110:
	.align	2
.L109:
	.word	drawRect
	.size	drawBullet, .-drawBullet
	.align	2
	.global	initBalls
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBalls, %function
initBalls:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, #7
	ldr	r4, .L115
	ldr	r5, .L115+4
	ldr	r9, .L115+8
	ldr	r8, .L115+12
	ldr	r7, .L115+16
	sub	sp, sp, #12
	add	r6, r4, #220
.L112:
	str	r10, [r4, #24]
	str	r10, [r4, #28]
	mov	lr, pc
	bx	r5
	smull	fp, ip, r0, r8
	asr	r2, r0, #31
	rsb	r3, r2, ip, asr #2
	rsb	r2, r3, r3, lsl #3
	rsb	r3, r3, r2, lsl #3
	sub	r3, r0, r3, lsl #1
	str	r3, [r4]
	mov	lr, pc
	bx	r5
	mov	r1, #1
	mvn	lr, #64512
	mov	ip, #0
	smull	r2, r3, r0, r7
	stm	sp, {r2-r3}
	ldr	r3, [sp, #4]
	asr	r2, r0, #31
	rsb	r3, r2, r3, asr #6
	add	r3, r3, r3, lsl #6
	sub	r0, r0, r3, lsl r1
	ldm	r9, {r2, r3}
	add	r0, r0, #10
	str	r0, [r4, #4]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	r1, [r4, #36]
	strh	lr, [r4, #32]	@ movhi
	str	ip, [r4, #40]
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	r4, r4, #44
	cmp	r4, r6
	bne	.L112
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L116:
	.align	2
.L115:
	.word	balls
	.word	rand
	.word	player
	.word	156180629
	.word	2114445439
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #120
	mov	r9, #0
	mov	r8, #80
	mov	r3, #1
	mov	r10, #5
	mov	fp, #20
	mov	r5, r7
	mov	r4, r9
	mov	lr, #2
	mvn	r1, #1
	mvn	ip, #32768
	ldr	r2, .L121
	mov	r6, r8
	str	r8, [r2]
	str	r8, [r2, #8]
	str	r3, [r2, #20]
	str	r3, [r2, #16]
	mov	r0, r3
	ldr	r8, .L121+4
	ldr	r3, .L121+8
	str	fp, [r2, #36]
	strh	r8, [r2, #32]	@ movhi
	str	r7, [r2, #4]
	str	r7, [r2, #12]
	str	r10, [r2, #24]
	str	r10, [r2, #28]
	str	r9, [r2, #40]
	add	r2, r3, #200
.L118:
	str	lr, [r3, #20]
	str	r0, [r3, #24]
	str	r5, [r3, #12]
	str	r1, [r3, #16]
	strh	ip, [r3, #28]	@ movhi
	str	r4, [r3, #32]
	str	r0, [r3, #36]
	stm	r3, {r1, r4, r6}
	add	r3, r3, #40
	cmp	r3, r2
	bne	.L118
	bl	initBalls
	ldr	r3, .L121+12
	str	r4, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L122:
	.align	2
.L121:
	.word	player
	.word	31775
	.word	bullets
	.word	score
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
	push	{r4, r5, lr}
	ldr	r3, [r0, #36]
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r4, r0
	bne	.L129
	ldr	ip, [r0, #40]
	cmp	ip, #0
	beq	.L130
.L127:
	ldm	r4, {r2, r3}
	str	r2, [r4, #8]
	str	r3, [r4, #12]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	bx	lr
.L130:
	add	r2, r0, #24
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L131
	str	ip, [sp]
	mov	lr, pc
	bx	r5
	mov	r3, #1
	str	r3, [r4, #40]
	b	.L127
.L129:
	mov	ip, #0
	add	r2, r0, #24
	add	r0, r0, #8
	ldm	r2, {r2, r3}
	ldm	r0, {r0, r1}
	ldr	r5, .L131
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
	b	.L127
.L132:
	.align	2
.L131:
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
	mov	r3, #31744
	ldr	r5, .L135
	mov	r2, #3
	mov	r1, #0
	str	r3, [sp]
	mov	r0, #135
	mov	r3, #240
	ldr	r4, .L135+4
	mov	lr, pc
	bx	r4
	mov	r0, r5
	bl	drawBullet
	add	r0, r5, #40
	bl	drawBullet
	add	r0, r5, #80
	ldr	r4, .L135+8
	bl	drawBullet
	add	r0, r5, #120
	bl	drawBullet
	add	r0, r5, #160
	bl	drawBullet
	mov	r0, r4
	bl	drawBall
	add	r0, r4, #44
	bl	drawBall
	add	r0, r4, #88
	bl	drawBall
	add	r0, r4, #132
	bl	drawBall
	add	r0, r4, #176
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	drawBall
.L136:
	.align	2
.L135:
	.word	bullets
	.word	drawRect
	.word	balls
	.size	drawGame, .-drawGame
	.comm	dead,4,4
	.comm	score,4,4
	.comm	balls,220,4
	.comm	bullets,200,4
	.comm	player,44,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
