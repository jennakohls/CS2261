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
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r3, .L4+8
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L4+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L4+16
	ldr	r1, .L4+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L4+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L4+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #0
	ldr	r3, .L4+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startscreenPal
	.word	8416
	.word	startscreenTiles
	.word	100726784
	.word	startscreenMap
	.word	hideSprites
	.word	shadowOAM
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
	mov	r2, #67108864
	mov	r1, #4352
	push	{r4, lr}
	mov	r3, #16384
	strh	r1, [r2]	@ movhi
	ldr	r4, .L8
	ldr	r2, .L8+4
	ldr	r1, .L8+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #256
	ldr	r2, .L8+12
	ldr	r1, .L8+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L8+20
	mov	lr, pc
	bx	r3
	pop	{r4, lr}
	b	goToStart
.L9:
	.align	2
.L8:
	.word	DMANow
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.size	initialize, .-initialize
	.align	2
	.global	goToInstructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	goToInstructions, %function
goToInstructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, #256
	ldr	r4, .L12
	mov	r2, #83886080
	ldr	r1, .L12+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r3, .L12+8
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L12+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L12+16
	ldr	r1, .L12+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L12+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L12+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #5
	ldr	r3, .L12+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L13:
	.align	2
.L12:
	.word	DMANow
	.word	instructionsscreenPal
	.word	9040
	.word	instructionsscreenTiles
	.word	100726784
	.word	instructionsscreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToInstructions, .-goToInstructions
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
	ldr	r3, .L16
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #7168
	ldr	r4, .L16+4
	strh	r2, [r5, #12]	@ movhi
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L16+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+12
	mov	r2, #100663296
	ldr	r1, .L16+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+20
	ldr	r1, .L16+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L16+28
	mov	r3, #2624
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L16+32
	ldr	r2, .L16+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+40
	ldr	r1, .L16+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+48
	ldrh	r2, [r3]
	ldr	r3, .L16+52
	strh	r2, [r5, #22]	@ movhi
	ldr	r1, .L16+56
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #3152
	strh	r1, [r5, #8]	@ movhi
	ldr	r2, .L16+60
	ldr	r1, .L16+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L16+68
	ldr	r1, .L16+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L16+76
	ldr	r1, .L16+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L16+84
	ldr	r1, .L16+88
	mov	r0, #3
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L16+92
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L16+96
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #5888
	mov	r2, #1
	ldr	r3, .L16+100
	strh	r1, [r5]	@ movhi
	str	r2, [r3]
	pop	{r4, r5, r6, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	waitForVBlank
	.word	DMANow
	.word	pond0Pal
	.word	6768
	.word	pond0Tiles
	.word	100720640
	.word	pond0Map
	.word	7428
	.word	pond1Tiles
	.word	100679680
	.word	100722688
	.word	pond1Map
	.word	vOff
	.word	hOff
	.word	7688
	.word	100696064
	.word	pond3Tiles
	.word	100724736
	.word	pond3Map
	.word	100728832
	.word	spritesheetTiles
	.word	83886592
	.word	spritesheetPal
	.word	hideSprites
	.word	shadowOAM
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
	push	{r4, lr}
	ldr	r4, .L30
	ldr	r3, .L30+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L19
	ldr	r2, .L30+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L28
.L19:
	tst	r3, #8
	beq	.L20
	ldr	r3, .L30+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L29
.L20:
	ldr	r3, .L30+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L30+16
	ldrh	r2, [r2]
	pop	{r4, lr}
	strh	r2, [r3, #20]	@ movhi
	bx	lr
.L29:
	ldr	r3, .L30+20
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L20
.L28:
	bl	goToInstructions
	ldrh	r3, [r4]
	b	.L19
.L31:
	.align	2
.L30:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	waitForVBlank
	.word	hOff
	.word	initGame
	.size	start, .-start
	.align	2
	.global	instructions
	.syntax unified
	.arm
	.fpu softvfp
	.type	instructions, %function
instructions:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L44
	ldr	r3, .L44+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L33
	ldr	r2, .L44+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L42
.L33:
	tst	r3, #4
	beq	.L32
	ldr	r3, .L44+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L43
.L32:
	pop	{r4, lr}
	bx	lr
.L43:
	pop	{r4, lr}
	b	goToStart
.L42:
	ldr	r3, .L44+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L33
.L45:
	.align	2
.L44:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	initGame
	.size	instructions, .-instructions
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
	mov	r3, #256
	ldr	r4, .L48
	mov	r2, #83886080
	ldr	r1, .L48+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r3, .L48+8
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L48+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L48+16
	ldr	r1, .L48+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L48+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L48+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #2
	ldr	r3, .L48+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L49:
	.align	2
.L48:
	.word	DMANow
	.word	pausescreenPal
	.word	8304
	.word	pausescreenTiles
	.word	100726784
	.word	pausescreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToPause, .-goToPause
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
	ldr	r3, .L59
	mov	lr, pc
	bx	r3
	ldr	r3, .L59+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L59+8
	ldr	r3, [r2]
	cmp	r3, #19
	movgt	r0, #0
	ldrgt	r1, .L59+12
	ldrgt	r3, [r1]
	addle	r3, r3, #1
	addgt	r3, r3, #1
	strgt	r3, [r1]
	strle	r3, [r2]
	ldr	r3, .L59+16
	ldrh	r3, [r3]
	strgt	r0, [r2]
	tst	r3, #8
	beq	.L50
	ldr	r3, .L59+20
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L58
.L50:
	pop	{r4, lr}
	bx	lr
.L58:
	pop	{r4, lr}
	b	goToPause
.L60:
	.align	2
.L59:
	.word	updateGame
	.word	drawGame
	.word	scroll
	.word	hOff
	.word	oldButtons
	.word	buttons
	.size	game, .-game
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
	ldr	r4, .L73
	ldr	r3, .L73+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L62
	ldr	r2, .L73+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L71
.L62:
	tst	r3, #4
	beq	.L61
	ldr	r3, .L73+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L72
.L61:
	pop	{r4, lr}
	bx	lr
.L72:
	pop	{r4, lr}
	b	goToStart
.L71:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L62
.L74:
	.align	2
.L73:
	.word	oldButtons
	.word	hideSprites
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
	mov	r3, #256
	ldr	r4, .L77
	mov	r2, #83886080
	ldr	r1, .L77+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r3, .L77+8
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L77+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L77+16
	ldr	r1, .L77+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L77+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L77+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #3
	ldr	r3, .L77+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L78:
	.align	2
.L77:
	.word	DMANow
	.word	winscreenPal
	.word	8112
	.word	winscreenTiles
	.word	100726784
	.word	winscreenMap
	.word	hideSprites
	.word	shadowOAM
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
	ldr	r3, .L86
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L86+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L79
	ldr	r3, .L86+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L85
.L79:
	pop	{r4, lr}
	bx	lr
.L85:
	pop	{r4, lr}
	b	goToStart
.L87:
	.align	2
.L86:
	.word	hideSprites
	.word	oldButtons
	.word	buttons
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L100
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L100+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L100+12
	mov	r3, #1
	ldr	r2, .L100+16
	ldr	r1, .L100+20
	ldr	r0, .L100+24
	mov	lr, pc
	bx	r4
	ldr	r6, .L100+28
	ldr	r8, .L100+32
	ldr	r5, .L100+36
	ldr	fp, .L100+40
	ldr	r10, .L100+44
	ldr	r9, .L100+48
	ldr	r7, .L100+52
	ldr	r4, .L100+56
.L89:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L90:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L90
.L92:
	.word	.L91
	.word	.L93
	.word	.L94
	.word	.L95
	.word	.L95
	.word	.L96
.L95:
	mov	lr, pc
	bx	r7
	b	.L89
.L94:
	mov	lr, pc
	bx	r9
	b	.L89
.L93:
	mov	lr, pc
	bx	r10
	b	.L89
.L91:
	mov	lr, pc
	bx	fp
	b	.L89
.L96:
	ldr	r3, .L100+60
	mov	lr, pc
	bx	r3
	b	.L89
.L101:
	.align	2
.L100:
	.word	setupSounds
	.word	setupInterrupts
	.word	initialize
	.word	playSoundA
	.word	11025
	.word	1335128
	.word	calmstreams
	.word	state
	.word	buttons
	.word	oldButtons
	.word	start
	.word	game
	.word	pause
	.word	win
	.word	67109120
	.word	instructions
	.size	main, .-main
	.text
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
	mov	r3, #256
	ldr	r4, .L104
	mov	r2, #83886080
	ldr	r1, .L104+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	mov	r1, #7936
	ldr	r3, .L104+8
	strh	r1, [r2, #8]	@ movhi
	mov	r0, #3
	mov	r2, #100663296
	ldr	r1, .L104+12
	mov	lr, pc
	bx	r4
	ldr	r2, .L104+16
	ldr	r1, .L104+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L104+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L104+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #4
	ldr	r3, .L104+32
	pop	{r4, lr}
	str	r2, [r3]
	bx	lr
.L105:
	.align	2
.L104:
	.word	DMANow
	.word	losescreenPal
	.word	8160
	.word	losescreenTiles
	.word	100726784
	.word	losescreenMap
	.word	hideSprites
	.word	shadowOAM
	.word	state
	.size	goToLose, .-goToLose
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
	.comm	oldButtons,2,2
	.comm	buttons,2,2
	.comm	scroll,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
