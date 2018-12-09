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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L4
	mov	r2, #83886080
	ldr	r1, .L4+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L4+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L4+12
	mov	r2, #100663296
	mov	r0, #3
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
	mov	r1, #0
	mov	r3, #256
	ldr	r2, .L4+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	DMANow
	.word	startscreen00Pal
	.word	7456
	.word	startscreen00Tiles
	.word	100726784
	.word	startscreen00Map
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
	.global	animateMenu
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateMenu, %function
animateMenu:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L43
	ldr	r4, [r5]
	cmp	r4, #0
	beq	.L28
	cmp	r4, #1
	beq	.L29
	cmp	r4, #2
	beq	.L30
	cmp	r4, #3
	beq	.L31
	cmp	r4, #4
	beq	.L32
	cmp	r4, #5
	beq	.L33
	cmp	r4, #6
	beq	.L34
	cmp	r4, #7
	beq	.L35
	cmp	r4, #8
	beq	.L36
	cmp	r4, #9
	beq	.L37
	cmp	r4, #10
	beq	.L38
	cmp	r4, #11
	beq	.L39
	cmp	r4, #12
	beq	.L40
	cmp	r4, #13
	beq	.L41
	cmp	r4, #14
	beq	.L42
	cmp	r4, #15
	bne	.L12
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+12
	mov	r2, #100663296
	ldr	r1, .L43+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L28:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+32
	mov	r2, #100663296
	ldr	r1, .L43+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+40
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
.L12:
	add	r4, r4, #1
	rsbs	r3, r4, #0
	and	r3, r3, #15
	and	r4, r4, #15
	rsbpl	r4, r3, #0
	str	r4, [r5]
	pop	{r4, r5, r6, lr}
	bx	lr
.L30:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+48
	mov	r2, #100663296
	ldr	r1, .L43+52
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+56
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L29:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+60
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+64
	mov	r2, #100663296
	ldr	r1, .L43+68
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L31:
	mov	r0, r4
	ldr	r6, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+76
	mov	lr, pc
	bx	r6
	mov	r0, r4
	mov	r3, #6976
	mov	r2, #100663296
	ldr	r1, .L43+80
	mov	lr, pc
	bx	r6
	mov	r0, r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+84
	mov	lr, pc
	bx	r6
	ldr	r4, [r5]
	b	.L12
.L32:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+88
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+92
	mov	r2, #100663296
	ldr	r1, .L43+96
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+100
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L33:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+104
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+108
	mov	r2, #100663296
	ldr	r1, .L43+112
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+116
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L35:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+120
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+124
	mov	r2, #100663296
	ldr	r1, .L43+128
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+132
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L42:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+136
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+140
	mov	r2, #100663296
	ldr	r1, .L43+144
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+148
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L34:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+152
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+48
	mov	r2, #100663296
	ldr	r1, .L43+156
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+160
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L36:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+164
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+168
	mov	r2, #100663296
	ldr	r1, .L43+172
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+176
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L37:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+180
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #7168
	mov	r2, #100663296
	ldr	r1, .L43+184
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+188
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L38:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+192
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #6400
	mov	r2, #100663296
	ldr	r1, .L43+196
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+200
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L39:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+204
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+208
	mov	r2, #100663296
	ldr	r1, .L43+212
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+216
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L40:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+220
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+224
	mov	r2, #100663296
	ldr	r1, .L43+228
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+232
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L41:
	ldr	r4, .L43+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L43+236
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L43+12
	mov	r2, #100663296
	ldr	r1, .L43+240
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L43+20
	ldr	r1, .L43+244
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r4, [r5]
	b	.L12
.L44:
	.align	2
.L43:
	.word	menuAni
	.word	DMANow
	.word	startscreen15Pal
	.word	6256
	.word	startscreen15Tiles
	.word	100726784
	.word	startscreen15Map
	.word	startscreen00Pal
	.word	7456
	.word	startscreen00Tiles
	.word	startscreen00Map
	.word	startscreen02Pal
	.word	6944
	.word	startscreen02Tiles
	.word	startscreen02Map
	.word	startscreen01Pal
	.word	7312
	.word	startscreen01Tiles
	.word	startscreen01Map
	.word	startscreen03Pal
	.word	startscreen03Tiles
	.word	startscreen03Map
	.word	startscreen04Pal
	.word	7072
	.word	startscreen04Tiles
	.word	startscreen04Map
	.word	startscreen05Pal
	.word	7120
	.word	startscreen05Tiles
	.word	startscreen05Map
	.word	startscreen07Pal
	.word	6992
	.word	startscreen07Tiles
	.word	startscreen07Map
	.word	startscreen14Pal
	.word	6288
	.word	startscreen14Tiles
	.word	startscreen14Map
	.word	startscreen06Pal
	.word	startscreen06Tiles
	.word	startscreen06Map
	.word	startscreen08Pal
	.word	7024
	.word	startscreen08Tiles
	.word	startscreen08Map
	.word	startscreen09Pal
	.word	startscreen09Tiles
	.word	startscreen09Map
	.word	startscreen10Pal
	.word	startscreen10Tiles
	.word	startscreen10Map
	.word	startscreen11Pal
	.word	6480
	.word	startscreen11Tiles
	.word	startscreen11Map
	.word	startscreen12Pal
	.word	6304
	.word	startscreen12Tiles
	.word	startscreen12Map
	.word	startscreen13Pal
	.word	startscreen13Tiles
	.word	startscreen13Map
	.size	animateMenu, .-animateMenu
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L47
	mov	r2, #83886080
	ldr	r1, .L47+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L47+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L47+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L47+16
	ldr	r1, .L47+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L47+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L47+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #5
	mov	r3, #256
	ldr	r2, .L47+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L48:
	.align	2
.L47:
	.word	DMANow
	.word	instructionsscreenPal
	.word	8736
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
	ldr	r3, .L51
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #5888
	mov	r3, #7168
	ldr	r4, .L51+4
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	ldr	r1, .L51+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L51+12
	mov	r2, #100663296
	ldr	r1, .L51+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L51+20
	ldr	r1, .L51+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L51+28
	mov	r3, #2624
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L51+32
	ldr	r2, .L51+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L51+40
	ldr	r1, .L51+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L51+48
	ldrh	r2, [r3]
	ldr	r3, .L51+52
	strh	r2, [r5, #22]	@ movhi
	ldr	r1, .L51+56
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #3152
	strh	r1, [r5, #8]	@ movhi
	ldr	r2, .L51+60
	ldr	r1, .L51+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L51+68
	ldr	r1, .L51+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L51+76
	ldr	r1, .L51+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L51+84
	ldr	r1, .L51+88
	mov	r0, #3
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L51+92
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L51+96
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L51+100
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L52:
	.align	2
.L51:
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
	ldr	r4, .L67
	ldr	r3, .L67+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L54
	ldr	r2, .L67+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L65
.L54:
	tst	r3, #8
	beq	.L55
	ldr	r3, .L67+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L66
.L55:
	ldr	r3, .L67+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L67+16
	ldr	r4, .L67+20
	ldrh	r2, [r2]
	strh	r2, [r3, #20]	@ movhi
	ldr	r3, [r4]
	cmp	r3, #7
	addle	r3, r3, #1
	ble	.L57
	bl	animateMenu
	mov	r3, #1
.L57:
	str	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L66:
	ldr	r3, .L67+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L55
.L65:
	bl	goToInstructions
	ldrh	r3, [r4]
	b	.L54
.L68:
	.align	2
.L67:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	waitForVBlank
	.word	hOff
	.word	menuAniTimer
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
	ldr	r4, .L81
	ldr	r3, .L81+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L70
	ldr	r2, .L81+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L79
.L70:
	tst	r3, #4
	beq	.L69
	ldr	r3, .L81+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L80
.L69:
	pop	{r4, lr}
	bx	lr
.L80:
	pop	{r4, lr}
	b	goToStart
.L79:
	ldr	r3, .L81+12
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L70
.L82:
	.align	2
.L81:
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L85
	mov	r2, #83886080
	ldr	r1, .L85+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L85+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L85+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L85+16
	ldr	r1, .L85+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L85+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L85+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #2
	mov	r3, #256
	ldr	r2, .L85+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L86:
	.align	2
.L85:
	.word	DMANow
	.word	pausescreenPal
	.word	7600
	.word	pausescreenTiles
	.word	100726784
	.word	pausescreenMap
	.word	hideSprites
	.word	shadowOAM
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
	ldr	r4, .L99
	ldr	r3, .L99+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L88
	ldr	r2, .L99+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L97
.L88:
	tst	r3, #4
	beq	.L87
	ldr	r3, .L99+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L98
.L87:
	pop	{r4, lr}
	bx	lr
.L98:
	pop	{r4, lr}
	b	goToStart
.L97:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L88
.L100:
	.align	2
.L99:
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L103
	mov	r2, #83886080
	ldr	r1, .L103+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L103+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L103+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L103+16
	ldr	r1, .L103+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L103+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L103+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #3
	mov	r3, #256
	ldr	r2, .L103+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L104:
	.align	2
.L103:
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
	ldr	r3, .L112
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L112+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L105
	ldr	r3, .L112+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L111
.L105:
	pop	{r4, lr}
	bx	lr
.L111:
	pop	{r4, lr}
	b	goToStart
.L113:
	.align	2
.L112:
	.word	hideSprites
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
	push	{r4, r5, r6, lr}
	mov	r3, #256
	ldr	r4, .L116
	mov	r2, #83886080
	ldr	r1, .L116+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L116+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L116+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L116+16
	ldr	r1, .L116+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L116+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L116+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #4
	mov	r3, #256
	ldr	r2, .L116+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L117:
	.align	2
.L116:
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
	ldr	r3, .L140
	mov	lr, pc
	bx	r3
	ldr	r3, .L140+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L140+8
	ldr	r3, [r2]
	cmp	r3, #19
	movgt	r0, #0
	ldrgt	r1, .L140+12
	ldrgt	r3, [r1]
	ldr	r4, .L140+16
	addgt	r3, r3, #1
	addle	r3, r3, #1
	strgt	r3, [r1]
	strle	r3, [r2]
	ldrh	r3, [r4]
	strgt	r0, [r2]
	tst	r3, #8
	beq	.L121
	ldr	r2, .L140+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L137
.L121:
	tst	r3, #2
	bne	.L134
	ldr	r4, .L140+24
.L122:
	ldr	r3, .L140+28
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L138
.L123:
	ldr	r3, [r4, #88]
	cmp	r3, #0
	ble	.L139
.L118:
	pop	{r4, lr}
	bx	lr
.L134:
	ldr	r3, .L140+20
	ldrh	r3, [r3]
	tst	r3, #2
	ldr	r4, .L140+24
	bne	.L122
	add	r2, r4, #100
	ldm	r2, {r2, r3}
	adds	r2, r2, #1
	and	r2, r2, #1
	rsbmi	r2, r2, #0
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #104]
	ldr	r3, .L140+28
	ldr	r3, [r3]
	cmp	r3, #0
	str	r2, [r4, #100]
	bgt	.L123
.L138:
	ldr	r3, .L140+32
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L123
	bl	goToWin
	ldr	r3, [r4, #88]
	cmp	r3, #0
	bgt	.L118
.L139:
	pop	{r4, lr}
	b	goToLose
.L137:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L121
.L141:
	.align	2
.L140:
	.word	updateGame
	.word	drawGame
	.word	scroll
	.word	hOff
	.word	oldButtons
	.word	buttons
	.word	player
	.word	enemyHealth
	.word	enemy
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
	push	{r4, r7, fp, lr}
	ldr	r3, .L154
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L154+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L154+12
	mov	r3, #1
	ldr	r2, .L154+16
	ldr	r1, .L154+20
	ldr	r0, .L154+24
	mov	lr, pc
	bx	r4
	ldr	r6, .L154+28
	ldr	r8, .L154+32
	ldr	r5, .L154+36
	ldr	fp, .L154+40
	ldr	r10, .L154+44
	ldr	r9, .L154+48
	ldr	r7, .L154+52
	ldr	r4, .L154+56
.L143:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L144:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L144
.L146:
	.word	.L145
	.word	.L147
	.word	.L148
	.word	.L149
	.word	.L149
	.word	.L150
.L149:
	mov	lr, pc
	bx	r7
	b	.L143
.L148:
	mov	lr, pc
	bx	r9
	b	.L143
.L147:
	mov	lr, pc
	bx	r10
	b	.L143
.L145:
	mov	lr, pc
	bx	fp
	b	.L143
.L150:
	ldr	r3, .L154+60
	mov	lr, pc
	bx	r3
	b	.L143
.L155:
	.align	2
.L154:
	.word	setupSounds
	.word	setupInterrupts
	.word	initialize
	.word	playSoundA
	.word	11025
	.word	1334528
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
	.comm	menuAni,4,4
	.comm	menuAniTimer,4,4
	.comm	scroll,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
