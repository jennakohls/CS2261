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
	.global	initGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #105
	mov	r2, #0
	mov	ip, #5
	mov	r7, #2
	mov	r5, #24
	mov	r4, #6
	mov	lr, #31
	mov	r0, #110
	mov	r1, #1
	ldr	r3, .L4
	strb	r6, [r3]
	str	r7, [r3, #24]
	str	r5, [r3, #28]
	str	r4, [r3, #32]
	strh	lr, [r3, #36]	@ movhi
	str	ip, [r3, #4]
	str	ip, [r3, #12]
	str	r0, [r3, #8]
	str	r0, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #48]
	str	r2, [r3, #44]
	str	r2, [r3, #40]
	str	r2, [r3, #52]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	blocks
	.size	initGame, .-initGame
	.align	2
	.global	initBlocks
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBlocks, %function
initBlocks:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	initGame
	.size	initBlocks, .-initBlocks
	.align	2
	.global	initNewBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	initNewBlock, %function
initNewBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	ip, #110
	mov	r6, #5
	mov	r3, #0
	mov	r5, #105
	mov	r4, #24
	mov	lr, #31
	mov	r1, #1
	mov	r2, #6
	stmib	r0, {r6, ip}
	ldr	ip, .L9
	ldmib	ip, {r6, ip}
	str	r4, [r0, #28]
	str	r6, [r0, #12]
	strb	r5, [r0]
	strh	lr, [r0, #36]	@ movhi
	str	ip, [r0, #16]
	str	r1, [r0, #20]
	str	r1, [r0, #48]
	str	r2, [r0, #24]
	str	r2, [r0, #32]
	str	r3, [r0, #44]
	str	r3, [r0, #40]
	str	r3, [r0, #52]
	pop	{r4, r5, r6, lr}
	bx	lr
.L10:
	.align	2
.L9:
	.word	blocks
	.size	initNewBlock, .-initNewBlock
	.align	2
	.global	findActiveBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	findActiveBlock, %function
findActiveBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	ldr	r3, .L15
.L13:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	bxne	lr
	add	r0, r0, #1
	cmp	r0, #100
	add	r3, r3, #56
	bne	.L13
	mov	r0, #1
	bx	lr
.L16:
	.align	2
.L15:
	.word	blocks
	.size	findActiveBlock, .-findActiveBlock
	.align	2
	.global	drawIBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawIBlock, %function
drawIBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	cmp	r2, #0
	sub	sp, sp, #8
	mov	r7, r3
	bne	.L18
	mov	r4, r0
	ldr	r6, .L31
	add	r5, r1, #6
	add	r8, r0, #24
.L19:
	mov	r3, #6
	mov	r0, r4
	str	r7, [sp]
	add	r4, r4, r3
	mov	r2, r3
	mov	r1, r5
	mov	lr, pc
	bx	r6
	cmp	r8, r4
	bne	.L19
.L17:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L18:
	cmp	r2, #1
	bne	.L21
	mov	r5, r1
	ldr	r6, .L31
	add	r4, r0, #6
	add	r8, r1, #24
.L22:
	mov	r3, #6
	mov	r1, r5
	str	r7, [sp]
	add	r5, r5, r3
	mov	r2, r3
	mov	r0, r4
	mov	lr, pc
	bx	r6
	cmp	r5, r8
	bne	.L22
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L21:
	cmp	r2, #2
	bne	.L23
	mov	r4, r0
	ldr	r6, .L31
	add	r5, r1, #12
	add	r8, r0, #24
.L24:
	mov	r3, #6
	mov	r0, r4
	str	r7, [sp]
	add	r4, r4, r3
	mov	r2, r3
	mov	r1, r5
	mov	lr, pc
	bx	r6
	cmp	r8, r4
	bne	.L24
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L23:
	cmp	r2, #3
	bne	.L17
	mov	r5, r1
	ldr	r6, .L31
	add	r4, r0, #12
	add	r8, r1, #24
.L25:
	mov	r3, #6
	mov	r1, r5
	str	r7, [sp]
	add	r5, r5, r3
	mov	r2, r3
	mov	r0, r4
	mov	lr, pc
	bx	r6
	cmp	r8, r5
	bne	.L25
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L32:
	.align	2
.L31:
	.word	drawRect
	.size	drawIBlock, .-drawIBlock
	.align	2
	.global	updateActiveBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateActiveBlock, %function
updateActiveBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L64
	sub	sp, sp, #28
	mov	r5, #0
	mov	r8, r4
	mov	r3, r4
	b	.L35
.L62:
	add	r5, r5, #1
	cmp	r5, #100
	add	r3, r3, #56
	beq	.L61
.L35:
	ldr	r2, [r3, #48]
	cmp	r2, #0
	beq	.L62
.L34:
	lsl	r6, r5, #3
	ldr	r2, .L64+4
	sub	r3, r6, r5
	add	r3, r8, r3, lsl #3
	ldrh	r2, [r2]
	ldr	r1, [r3, #8]
	tst	r2, #32
	str	r1, [r3, #16]
	beq	.L36
	ldr	r0, .L64+8
	ldrh	r0, [r0]
	tst	r0, #32
	bne	.L36
	ldr	r0, [r3, #24]
	cmp	r1, r0
	subge	r1, r1, r0
	strge	r1, [r3, #8]
	blt	.L36
.L37:
	sub	r3, r6, r5
	add	r3, r8, r3, lsl #3
	ldr	r0, [r3, #4]
	ldr	r2, [r3, #20]
	ldr	r1, [r3, #28]
	add	r2, r0, r2
	add	r1, r2, r1
	cmp	r1, #159
	str	r0, [r3, #12]
	str	r2, [r3, #4]
	bgt	.L42
	ldr	r2, [r3, #8]
	ldr	r3, [r3, #32]
	add	r3, r2, r3
	cmp	r3, #239
	bgt	.L42
.L43:
	add	r3, r5, #1
	sub	r6, r6, r5
	str	r3, [sp, #16]
	lsl	r3, r3, #3
	ldr	r7, .L64+12
	ldr	r9, .L64+16
	add	r6, r8, r6, lsl #3
	str	r3, [sp, #20]
	b	.L47
.L45:
	add	r4, r4, #56
	cmp	r4, r7
	beq	.L63
.L47:
	ldr	r5, [r4, #52]
	cmp	r5, #1
	bne	.L45
	add	ip, r4, #28
	ldm	ip, {ip, lr}
	add	r2, r6, #28
	ldm	r2, {r2, r3}
	ldmib	r6, {r0, r1}
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r4, #8]
	ldr	ip, [r4, #4]
	stm	sp, {ip, lr}
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L45
	mov	fp, #5
	mov	r10, #110
	mov	lr, #105
	add	r0, sp, #16
	ldm	r0, {r0, r3}
	sub	r0, r3, r0
	add	r3, r8, r0, lsl #3
	str	fp, [r3, #4]
	str	r10, [r3, #8]
	strb	lr, [r8, r0, lsl #3]
	ldr	r0, [r8, #4]
	str	r0, [r3, #12]
	ldr	r0, [r8, #8]
	mov	r2, #0
	mov	r1, #6
	mov	ip, #24
	str	r0, [r3, #16]
	mov	r0, #31	@ movhi
	add	r4, r4, #56
	cmp	r4, r7
	str	r5, [r6, #52]
	str	r2, [r6, #48]
	str	r5, [r3, #20]
	str	ip, [r3, #28]
	strh	r0, [r3, #36]	@ movhi
	str	r2, [r3, #44]
	str	r5, [r3, #48]
	str	r2, [r3, #40]
	str	r2, [r3, #52]
	str	r1, [r3, #24]
	str	r1, [r3, #32]
	bne	.L47
.L63:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L36:
	tst	r2, #16
	beq	.L38
	ldr	r3, .L64+8
	ldrh	r3, [r3]
	tst	r3, #16
	bne	.L38
	sub	r3, r6, r5
	add	r3, r8, r3, lsl #3
	ldr	ip, [r3, #24]
	ldr	r0, [r3, #32]
	rsb	lr, ip, #240
	add	r0, r1, r0
	cmp	r0, lr
	addle	r1, r1, ip
	strle	r1, [r3, #8]
	ble	.L37
.L38:
	tst	r2, #64
	beq	.L37
	ldr	r3, .L64+8
	ldrh	r3, [r3]
	ands	r3, r3, #64
	bne	.L37
	sub	r7, r6, r5
	add	r7, r8, r7, lsl #3
	ldr	ip, [r7, #44]
	ldr	r0, [r7, #12]
	mov	r2, ip
	str	ip, [r7, #40]
	bl	drawIBlock
	ldr	r3, [r7, #44]
	add	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	bics	r2, r3, #2
	str	r3, [r7, #44]
	bne	.L41
	mov	r2, #24
	mov	r3, #6
	str	r2, [r7, #28]
	str	r3, [r7, #32]
	b	.L37
.L42:
	mov	r1, #1
	mov	r10, #105
	mov	r7, #110
	mov	r9, #5
	mov	lr, #24
	mov	ip, #31
	mov	r2, #0
	mov	r0, #6
	add	r3, r5, r1
	rsb	r3, r3, r3, lsl #3
	lsl	r3, r3, #3
	strb	r10, [r8, r3]
	add	r3, r8, r3
	str	r7, [r3, #8]
	str	r9, [r3, #4]
	str	lr, [r3, #28]
	ldr	r7, [r8, #4]
	ldr	lr, [r8, #8]
	strh	ip, [r3, #36]	@ movhi
	sub	ip, r6, r5
	add	ip, r8, ip, lsl #3
	str	r2, [ip, #48]
	str	r1, [ip, #52]
	str	r7, [r3, #12]
	str	lr, [r3, #16]
	str	r1, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #40]
	str	r1, [r3, #48]
	str	r2, [r3, #52]
	b	.L43
.L61:
	mov	r5, #1
	b	.L34
.L41:
	cmp	r2, #1
	moveq	r2, #12
	moveq	r3, #24
	streq	r2, [r7, #28]
	streq	r3, [r7, #32]
	b	.L37
.L65:
	.align	2
.L64:
	.word	blocks
	.word	oldButtons
	.word	buttons
	.word	blocks+5600
	.word	collision
	.size	updateActiveBlock, .-updateActiveBlock
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
	@ link register save eliminated.
	b	updateActiveBlock
	.size	updateGame, .-updateGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock.part.0, %function
drawBlock.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r2, [r0, #44]
	add	r0, r0, #12
	mov	r3, #0
	ldm	r0, {r0, r1}
	bl	drawIBlock
	ldrh	r3, [r4, #36]
	ldr	r2, [r4, #44]
	ldmib	r4, {r0, r1}
	pop	{r4, lr}
	b	drawIBlock
	.size	drawBlock.part.0, .-drawBlock.part.0
	.align	2
	.global	drawBlock
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBlock, %function
drawBlock:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, #105
	bxne	lr
	b	drawBlock.part.0
	.size	drawBlock, .-drawBlock
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
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r5, .L77
	ldr	r6, .L77+4
	b	.L73
.L72:
	cmp	r4, r6
	beq	.L76
.L73:
	ldrb	r3, [r5, r4]	@ zero_extendqisi2
	cmp	r3, #105
	add	r0, r5, r4
	add	r4, r4, #56
	bne	.L72
	bl	drawBlock.part.0
	cmp	r4, r6
	bne	.L73
.L76:
	pop	{r4, r5, r6, lr}
	bx	lr
.L78:
	.align	2
.L77:
	.word	blocks
	.word	5600
	.size	drawGame, .-drawGame
	.comm	blocks,5600,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
