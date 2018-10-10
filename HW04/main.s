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
	.file	"main.c"
	.text
	.align	2
	.global	goToStart
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToStart, %function
goToStart:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #0
	ldr	r3, .L4
	mov	lr, pc
	bx	r3
	ldr	r4, .L4+4
	ldr	r3, .L4+8
	ldr	r2, .L4+12
	mov	r1, #60
	mov	r0, #80
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	fillScreen
	.word	drawString
	.word	32767
	.word	.LC0
	.word	state
	.size	goToStart, .-goToStart
	.align	2
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldr	r2, .L7
	strh	r2, [r3]	@ movhi
	b	goToStart
.L8:
	.align	2
.L7:
	.word	1027
	.size	initialize, .-initialize
	.align	2
	.global	goToGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToGame, %function
goToGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L11
	mov	r0, #0
	ldr	r3, .L11+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L11+8
	mov	r3, r5
	ldr	r2, .L11+12
	mov	r1, #5
	mov	r0, #145
	mov	lr, pc
	bx	r4
	mov	r3, r5
	ldr	r2, .L11+16
	mov	r1, #130
	mov	r0, #145
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L11+20
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	32767
	.word	fillScreen
	.word	drawString
	.word	.LC1
	.word	.LC2
	.word	state
	.size	goToGame, .-goToGame
	.align	2
	.global	start
	.syntax unified
	.arm
	.fpu softvfp
	.type	start, %function
start:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L20
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L20+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L13
	ldr	r3, .L20+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L19
.L13:
	pop	{r4, lr}
	bx	lr
.L19:
	bl	goToGame
	ldr	r3, .L20+12
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.word	initGame
	.size	start, .-start
	.align	2
	.global	goToPause
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToPause, %function
goToPause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r0, .L24
	ldr	r3, .L24+4
	mov	lr, pc
	bx	r3
	mov	r1, #10
	mov	r3, #0
	ldr	r2, .L24+8
	ldr	r4, .L24+12
	mov	r0, r1
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L24+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L25:
	.align	2
.L24:
	.word	15855
	.word	fillScreen
	.word	.LC3
	.word	drawString
	.word	state
	.size	goToPause, .-goToPause
	.align	2
	.global	pause
	.syntax unified
	.arm
	.fpu softvfp
	.type	pause, %function
pause:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L38+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L27
	ldr	r2, .L38+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L36
.L27:
	tst	r3, #4
	beq	.L26
	ldr	r3, .L38+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L37
.L26:
	pop	{r4, lr}
	bx	lr
.L37:
	pop	{r4, lr}
	b	goToStart
.L36:
	pop	{r4, lr}
	b	goToGame
.L39:
	.align	2
.L38:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	pause, .-pause
	.align	2
	.global	goToWin
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToWin, %function
goToWin:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #992
	ldr	r3, .L42
	mov	lr, pc
	bx	r3
	mov	r1, #10
	ldr	r3, .L42+4
	ldr	r2, .L42+8
	ldr	r4, .L42+12
	mov	r0, r1
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L42+16
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L43:
	.align	2
.L42:
	.word	fillScreen
	.word	32767
	.word	.LC4
	.word	drawString
	.word	state
	.size	goToWin, .-goToWin
	.align	2
	.global	win
	.syntax unified
	.arm
	.fpu softvfp
	.type	win, %function
win:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L51
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L51+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L44
	ldr	r3, .L51+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L50
.L44:
	pop	{r4, lr}
	bx	lr
.L50:
	pop	{r4, lr}
	b	goToStart
.L52:
	.align	2
.L51:
	.word	waitForVBlank
	.word	oldButtons
	.word	buttons
	.size	win, .-win
	.align	2
	.global	goToLose
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToLose, %function
goToLose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r0, #31
	ldr	r3, .L55
	mov	lr, pc
	bx	r3
	mov	r1, #10
	mov	r3, #0
	ldr	r2, .L55+4
	ldr	r4, .L55+8
	mov	r0, r1
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L55+12
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	fillScreen
	.word	.LC5
	.word	drawString
	.word	state
	.size	goToLose, .-goToLose
	.align	2
	.global	game
	.syntax unified
	.arm
	.fpu softvfp
	.type	game, %function
game:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, #0
	sub	sp, sp, #12
	ldr	r3, .L68
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+4
	ldr	r7, .L68+8
	ldr	r2, [r3]
	ldr	r4, .L68+12
	ldr	r1, .L68+16
	ldr	r0, .L68+20
	mov	lr, pc
	bx	r4
	ldr	r2, [r7]
	ldr	r1, .L68+16
	ldr	r0, .L68+24
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+28
	mov	lr, pc
	bx	r3
	ldr	r3, .L68+32
	mov	lr, pc
	bx	r3
	ldr	r5, .L68+36
	mov	r3, #16
	mov	r2, #6
	mov	r1, #47
	mov	r0, #145
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r4, .L68+40
	ldr	r3, .L68+44
	ldr	r2, .L68+20
	mov	r1, #47
	mov	r0, #145
	mov	lr, pc
	bx	r4
	mov	r3, #8
	mov	r2, #6
	mov	r1, #227
	mov	r0, #145
	str	r6, [sp]
	mov	lr, pc
	bx	r5
	ldr	r3, .L68+44
	ldr	r2, .L68+24
	mov	r1, #227
	mov	r0, #145
	mov	lr, pc
	bx	r4
	ldr	r3, .L68+48
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L58
	ldr	r3, .L68+52
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L65
.L58:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L66
	ldr	r3, .L68+56
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L67
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L67:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToWin
.L66:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToLose
.L65:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	goToPause
.L69:
	.align	2
.L68:
	.word	updateGame
	.word	score
	.word	livesRemaining
	.word	sprintf
	.word	.LC6
	.word	buffer
	.word	buffer1
	.word	waitForVBlank
	.word	drawGame
	.word	drawRect
	.word	drawString
	.word	32767
	.word	oldButtons
	.word	buttons
	.word	bricksRemaining
	.size	game, .-game
	.section	.text.startup,"ax",%progbits
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu softvfp
	.type	main, %function
main:
	@ Function supports interworking.
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #67108864
	ldr	r1, .L81
	push	{r4, r7, fp, lr}
	ldr	r3, .L81+4
	strh	r1, [r2]	@ movhi
	mov	lr, pc
	bx	r3
	ldr	r6, .L81+8
	ldr	fp, .L81+12
	ldr	r5, .L81+16
	ldr	r10, .L81+20
	ldr	r9, .L81+24
	ldr	r8, .L81+28
	ldr	r7, .L81+32
	ldr	r4, .L81+36
.L71:
	ldr	r2, [r6]
	ldrh	r3, [fp]
.L72:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L72
.L74:
	.word	.L73
	.word	.L75
	.word	.L76
	.word	.L77
	.word	.L77
.L77:
	mov	lr, pc
	bx	r7
	b	.L71
.L76:
	mov	lr, pc
	bx	r8
	b	.L71
.L75:
	mov	lr, pc
	bx	r9
	b	.L71
.L73:
	mov	lr, pc
	bx	r10
	b	.L71
.L82:
	.align	2
.L81:
	.word	1027
	.word	goToStart
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.size	main, .-main
	.text
	.align	2
	.global	lose
	.syntax unified
	.arm
	.fpu softvfp
	.type	lose, %function
lose:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	win
	.size	lose, .-lose
	.comm	buffer1,41,4
	.comm	buffer,41,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	score,4,4
	.comm	state,4,4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"PRESS START TO BEGIN\000"
	.space	3
.LC1:
	.ascii	"Score: \000"
.LC2:
	.ascii	"Lives Remaining: \000"
	.space	2
.LC3:
	.ascii	"Pause\000"
	.space	2
.LC4:
	.ascii	"You Won! :)\000"
.LC5:
	.ascii	"You Lost :(\000"
.LC6:
	.ascii	"%u\000"
	.ident	"GCC: (devkitARM release 47) 7.1.0"
