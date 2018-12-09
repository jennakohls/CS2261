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
	.global	animateInstr
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateInstr, %function
animateInstr:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L55
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L53
	cmp	r3, #1
	beq	.L54
.L51:
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L53:
	ldr	r5, .L55+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L55+8
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #8192
	mov	r2, #100663296
	ldr	r1, .L55+12
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L55+16
	ldr	r1, .L55+20
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L51
.L54:
	ldr	r5, .L55+4
	mov	r3, #256
	mov	r2, #83886080
	ldr	r1, .L55+24
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, .L55+28
	mov	r2, #100663296
	ldr	r1, .L55+32
	mov	r0, #3
	mov	lr, pc
	bx	r5
	mov	r3, #1024
	ldr	r2, .L55+16
	ldr	r1, .L55+36
	mov	r0, #3
	mov	lr, pc
	bx	r5
	ldr	r3, [r4]
	b	.L51
.L56:
	.align	2
.L55:
	.word	instrAni
	.word	DMANow
	.word	instructionsscreen00Pal
	.word	instructionsscreen00Tiles
	.word	100726784
	.word	instructionsscreen00Map
	.word	instructionsscreen01Pal
	.word	8400
	.word	instructionsscreen01Tiles
	.word	instructionsscreen01Map
	.size	animateInstr, .-animateInstr
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
	ldr	r3, .L59
	mov	lr, pc
	bx	r3
	mov	r5, #67108864
	mov	r2, #5888
	mov	r3, #7168
	ldr	r4, .L59+4
	strh	r2, [r5]	@ movhi
	strh	r3, [r5, #12]	@ movhi
	mov	r2, #83886080
	mov	r3, #256
	ldr	r1, .L59+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+12
	mov	r2, #100663296
	ldr	r1, .L59+16
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L59+20
	ldr	r1, .L59+24
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L59+28
	mov	r3, #2624
	strh	r2, [r5, #10]	@ movhi
	ldr	r1, .L59+32
	ldr	r2, .L59+36
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L59+40
	ldr	r1, .L59+44
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+48
	ldrh	r2, [r3]
	ldr	r3, .L59+52
	strh	r2, [r5, #22]	@ movhi
	ldr	r1, .L59+56
	ldrh	r2, [r3]
	mov	r0, #3
	strh	r2, [r5, #20]	@ movhi
	mov	r3, #3152
	strh	r1, [r5, #8]	@ movhi
	ldr	r2, .L59+60
	ldr	r1, .L59+64
	mov	lr, pc
	bx	r4
	mov	r3, #1024
	ldr	r2, .L59+68
	ldr	r1, .L59+72
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #16384
	ldr	r2, .L59+76
	ldr	r1, .L59+80
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L59+84
	ldr	r1, .L59+88
	mov	r0, #3
	mov	r3, #256
	mov	lr, pc
	bx	r4
	ldr	r3, .L59+92
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L59+96
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r2, #1
	ldr	r3, .L59+100
	pop	{r4, r5, r6, lr}
	str	r2, [r3]
	bx	lr
.L60:
	.align	2
.L59:
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
	ldr	r4, .L75
	ldr	r3, .L75+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #4
	beq	.L62
	ldr	r2, .L75+8
	ldrh	r2, [r2]
	tst	r2, #4
	beq	.L73
.L62:
	tst	r3, #8
	beq	.L63
	ldr	r3, .L75+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L74
.L63:
	ldr	r3, .L75+12
	mov	lr, pc
	bx	r3
	mov	r3, #67108864
	ldr	r2, .L75+16
	ldr	r4, .L75+20
	ldrh	r2, [r2]
	strh	r2, [r3, #20]	@ movhi
	ldr	r3, [r4]
	cmp	r3, #7
	addle	r3, r3, #1
	ble	.L65
	bl	animateMenu
	mov	r3, #1
.L65:
	str	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L74:
	ldr	r3, .L75+24
	mov	lr, pc
	bx	r3
	bl	goToGame
	b	.L63
.L73:
	bl	goToInstructions
	ldrh	r3, [r4]
	b	.L62
.L76:
	.align	2
.L75:
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
	ldr	r4, .L91
	ldr	r3, .L91+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L78
	ldr	r2, .L91+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L89
.L78:
	tst	r3, #4
	beq	.L79
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L90
.L79:
	ldr	r4, .L91+12
	ldr	r3, [r4]
	cmp	r3, #7
	addle	r3, r3, #1
	ble	.L81
	bl	animateInstr
	mov	r3, #1
.L81:
	str	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L90:
	bl	goToStart
	b	.L79
.L89:
	ldr	r3, .L91+16
	mov	lr, pc
	bx	r3
	bl	goToGame
	ldrh	r3, [r4]
	b	.L78
.L92:
	.align	2
.L91:
	.word	oldButtons
	.word	hideSprites
	.word	buttons
	.word	instrAniTimer
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
	ldr	r4, .L95
	mov	r2, #83886080
	ldr	r1, .L95+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L95+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L95+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L95+16
	ldr	r1, .L95+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L95+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L95+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #2
	mov	r3, #256
	ldr	r2, .L95+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L96:
	.align	2
.L95:
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
	ldr	r4, .L109
	ldr	r3, .L109+4
	mov	lr, pc
	bx	r3
	ldrh	r3, [r4]
	tst	r3, #8
	beq	.L98
	ldr	r2, .L109+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L107
.L98:
	tst	r3, #4
	beq	.L97
	ldr	r3, .L109+8
	ldrh	r3, [r3]
	tst	r3, #4
	beq	.L108
.L97:
	pop	{r4, lr}
	bx	lr
.L108:
	pop	{r4, lr}
	b	goToStart
.L107:
	bl	goToGame
	ldrh	r3, [r4]
	b	.L98
.L110:
	.align	2
.L109:
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
	ldr	r4, .L113
	mov	r2, #83886080
	ldr	r1, .L113+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L113+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L113+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L113+16
	ldr	r1, .L113+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L113+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L113+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #3
	mov	r3, #256
	ldr	r2, .L113+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L114:
	.align	2
.L113:
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
	ldr	r3, .L122
	push	{r4, lr}
	mov	lr, pc
	bx	r3
	ldr	r3, .L122+4
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L115
	ldr	r3, .L122+8
	ldrh	r3, [r3]
	tst	r3, #8
	beq	.L121
.L115:
	pop	{r4, lr}
	bx	lr
.L121:
	pop	{r4, lr}
	b	goToStart
.L123:
	.align	2
.L122:
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
	ldr	r4, .L126
	mov	r2, #83886080
	ldr	r1, .L126+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r5, #67108864
	mov	r2, #7936
	ldr	r3, .L126+8
	strh	r2, [r5, #8]	@ movhi
	ldr	r1, .L126+12
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r4
	ldr	r2, .L126+16
	ldr	r1, .L126+20
	mov	r0, #3
	mov	r3, #1024
	mov	lr, pc
	bx	r4
	ldr	r3, .L126+24
	mov	lr, pc
	bx	r3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L126+28
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r1, #4
	mov	r3, #256
	ldr	r2, .L126+32
	str	r1, [r2]
	strh	r3, [r5]	@ movhi
	pop	{r4, r5, r6, lr}
	bx	lr
.L127:
	.align	2
.L126:
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
	ldr	r3, .L150
	mov	lr, pc
	bx	r3
	ldr	r3, .L150+4
	mov	lr, pc
	bx	r3
	ldr	r2, .L150+8
	ldr	r3, [r2]
	cmp	r3, #19
	movgt	r0, #0
	ldrgt	r1, .L150+12
	ldrgt	r3, [r1]
	ldr	r4, .L150+16
	addgt	r3, r3, #1
	addle	r3, r3, #1
	strgt	r3, [r1]
	strle	r3, [r2]
	ldrh	r3, [r4]
	strgt	r0, [r2]
	tst	r3, #8
	beq	.L131
	ldr	r2, .L150+20
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L147
.L131:
	tst	r3, #2
	bne	.L144
	ldr	r4, .L150+24
.L132:
	ldr	r3, .L150+28
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L148
.L133:
	ldr	r3, [r4, #88]
	cmp	r3, #0
	ble	.L149
.L128:
	pop	{r4, lr}
	bx	lr
.L144:
	ldr	r3, .L150+20
	ldrh	r3, [r3]
	tst	r3, #2
	ldr	r4, .L150+24
	bne	.L132
	add	r2, r4, #100
	ldm	r2, {r2, r3}
	adds	r2, r2, #1
	and	r2, r2, #1
	rsbmi	r2, r2, #0
	adds	r3, r3, #1
	and	r3, r3, #1
	rsbmi	r3, r3, #0
	str	r3, [r4, #104]
	ldr	r3, .L150+28
	ldr	r3, [r3]
	cmp	r3, #0
	str	r2, [r4, #100]
	bgt	.L133
.L148:
	ldr	r3, .L150+32
	ldr	r3, [r3, #56]
	cmp	r3, #1
	beq	.L133
	bl	goToWin
	ldr	r3, [r4, #88]
	cmp	r3, #0
	bgt	.L128
.L149:
	pop	{r4, lr}
	b	goToLose
.L147:
	bl	goToPause
	ldrh	r3, [r4]
	b	.L131
.L151:
	.align	2
.L150:
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
	ldr	r3, .L164
	mov	lr, pc
	bx	r3
	ldr	r3, .L164+4
	mov	lr, pc
	bx	r3
	ldr	r3, .L164+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L164+12
	mov	r3, #1
	ldr	r2, .L164+16
	ldr	r1, .L164+20
	ldr	r0, .L164+24
	mov	lr, pc
	bx	r4
	ldr	r6, .L164+28
	ldr	r8, .L164+32
	ldr	r5, .L164+36
	ldr	fp, .L164+40
	ldr	r10, .L164+44
	ldr	r9, .L164+48
	ldr	r7, .L164+52
	ldr	r4, .L164+56
.L153:
	ldr	r2, [r6]
	ldrh	r3, [r8]
.L154:
	strh	r3, [r5]	@ movhi
	ldrh	r3, [r4, #48]
	strh	r3, [r8]	@ movhi
	cmp	r2, #5
	ldrls	pc, [pc, r2, asl #2]
	b	.L154
.L156:
	.word	.L155
	.word	.L157
	.word	.L158
	.word	.L159
	.word	.L159
	.word	.L160
.L159:
	mov	lr, pc
	bx	r7
	b	.L153
.L158:
	mov	lr, pc
	bx	r9
	b	.L153
.L157:
	mov	lr, pc
	bx	r10
	b	.L153
.L155:
	mov	lr, pc
	bx	fp
	b	.L153
.L160:
	ldr	r3, .L164+60
	mov	lr, pc
	bx	r3
	b	.L153
.L165:
	.align	2
.L164:
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
	.comm	instrAniTimer,4,4
	.comm	instrAni,4,4
	.comm	menuAni,4,4
	.comm	menuAniTimer,4,4
	.comm	scroll,4,4
	.comm	state,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 47) 7.1.0"
