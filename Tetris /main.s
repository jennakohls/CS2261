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
	.global	initialize
	.syntax unified
	.arm
	.fpu softvfp
	.type	initialize, %function
initialize:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #67108864
	push	{r4, lr}
	mov	r4, #0
	ldr	r1, .L4
	ldr	r2, .L4+4
	strh	r1, [r3]	@ movhi
	ldr	r0, .L4+8
	ldr	r3, .L4+12
	str	r4, [r2]
	mov	lr, pc
	bx	r3
	ldr	r3, .L4+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	1027
	.word	seed
	.word	32736
	.word	fillScreen
	.word	state
	.size	initialize, .-initialize
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
	ldr	r3, .L8
	ldr	r0, .L8+4
	mov	lr, pc
	bx	r3
	mov	r2, #0
	ldr	r3, .L8+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L9:
	.align	2
.L8:
	.word	fillScreen
	.word	32736
	.word	state
	.size	goToStart, .-goToStart
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
	ldr	r3, .L17
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L17+4
	ldr	r2, .L17+8
	ldr	r0, [r3]
	ldrh	r2, [r2]
	add	r0, r0, #1
	tst	r2, #8
	str	r0, [r3]
	beq	.L10
	ldr	r3, .L17+12
	ldrh	r3, [r3]
	ands	r4, r3, #8
	beq	.L16
.L10:
	pop	{r4, lr}
	bx	lr
.L16:
	ldr	r3, .L17+16
	mov	lr, pc
	bx	r3
	mov	r0, r4
	ldr	r3, .L17+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L17+24
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L18:
	.align	2
.L17:
	.word	initGame
	.word	seed
	.word	oldButtons
	.word	buttons
	.word	srand
	.word	fillScreen
	.word	state
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
	ldr	r3, .L21
	ldr	r0, .L21+4
	mov	lr, pc
	bx	r3
	mov	r2, #2
	ldr	r3, .L21+8
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L22:
	.align	2
.L21:
	.word	fillScreen
	.word	15855
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
	push	{r4, lr}
	ldr	r4, .L35
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L24
	ldr	r2, .L35+4
	ldrh	r0, [r2]
	ands	r0, r0, #8
	beq	.L33
.L24:
	tst	r3, #4
	beq	.L23
	ldr	r3, .L35+4
	ldrh	r3, [r3]
	ands	r4, r3, #4
	beq	.L34
.L23:
	pop	{r4, lr}
	bx	lr
.L34:
	ldr	r3, .L35+8
	ldr	r0, .L35+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L35+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L33:
	ldr	r3, .L35+8
	mov	lr, pc
	bx	r3
	mov	r1, #1
	ldr	r2, .L35+16
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L24
.L36:
	.align	2
.L35:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	32736
	.word	state
	.size	pause, .-pause
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
	push	{r4, lr}
	ldr	r3, .L39
	mov	r0, #0
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, .L39+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L40:
	.align	2
.L39:
	.word	fillScreen
	.word	state
	.size	goToGame, .-goToGame
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
	push	{r4, lr}
	ldr	r4, .L53
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L42
	ldr	r2, .L53+4
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L51
.L42:
	tst	r3, #2
	beq	.L43
	ldr	r3, .L53+4
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L52
.L43:
	ldr	r3, .L53+8
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L53+16
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	bx	lr
.L52:
	ldr	r3, .L53+20
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L53+24
	str	r2, [r3]
	b	.L43
.L51:
	ldr	r3, .L53+20
	ldr	r0, .L53+28
	mov	lr, pc
	bx	r3
	mov	r1, #2
	ldr	r2, .L53+24
	ldrh	r3, [r4]
	str	r1, [r2]
	b	.L42
.L54:
	.align	2
.L53:
	.word	oldButtons
	.word	buttons
	.word	updateGame
	.word	waitForVBlank
	.word	drawGame
	.word	fillScreen
	.word	state
	.word	15855
	.size	game, .-game
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
	ldr	r3, .L57
	mov	r0, #31
	mov	lr, pc
	bx	r3
	mov	r2, #4
	ldr	r3, .L57+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L58:
	.align	2
.L57:
	.word	fillScreen
	.word	state
	.size	goToLose, .-goToLose
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
	ldr	r3, .L61
	mov	r0, #992
	mov	lr, pc
	bx	r3
	mov	r2, #3
	ldr	r3, .L61+4
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L62:
	.align	2
.L61:
	.word	fillScreen
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
	ldr	r3, .L73
	ldrh	r3, [r3]
	tst	r3, #8
	bxeq	lr
	ldr	r3, .L73+4
	ldrh	r3, [r3]
	push	{r4, lr}
	ands	r4, r3, #8
	beq	.L72
	pop	{r4, lr}
	bx	lr
.L72:
	ldr	r3, .L73+8
	ldr	r0, .L73+12
	mov	lr, pc
	bx	r3
	ldr	r3, .L73+16
	str	r4, [r3]
	pop	{r4, lr}
	bx	lr
.L74:
	.align	2
.L73:
	.word	oldButtons
	.word	buttons
	.word	fillScreen
	.word	32736
	.word	state
	.size	win, .-win
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
	mov	r3, #67108864
	push	{r4, r7, fp, lr}
	mov	r4, #0
	ldr	r1, .L86
	ldr	r2, .L86+4
	ldr	r6, .L86+8
	strh	r1, [r3]	@ movhi
	ldr	r0, .L86+12
	ldr	r3, .L86+16
	str	r4, [r2]
	ldr	fp, .L86+20
	mov	lr, pc
	bx	r3
	ldr	r5, .L86+24
	str	r4, [r6]
	mov	r2, r4
	ldr	r10, .L86+28
	ldr	r9, .L86+32
	ldr	r8, .L86+36
	ldr	r7, .L86+40
	ldr	r4, .L86+44
.L76:
	ldrh	r3, [fp]
.L77:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [fp]	@ movhi
	cmp	r2, #4
	ldrls	pc, [pc, r2, asl #2]
	b	.L77
.L79:
	.word	.L78
	.word	.L80
	.word	.L81
	.word	.L82
	.word	.L82
.L82:
	mov	lr, pc
	bx	r7
.L83:
	ldr	r2, [r6]
	b	.L76
.L81:
	mov	lr, pc
	bx	r9
	b	.L83
.L80:
	mov	lr, pc
	bx	r8
	b	.L83
.L78:
	mov	lr, pc
	bx	r10
	b	.L83
.L87:
	.align	2
.L86:
	.word	1027
	.word	seed
	.word	state
	.word	32736
	.word	fillScreen
	.word	buttons
	.word	oldButtons
	.word	start
	.word	pause
	.word	game
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
	.comm	seed,4,4
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	state,4,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
