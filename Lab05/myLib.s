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
	.file	"myLib.c"
	.text
	.align	2
	.global	setPixel3
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel3, %function
setPixel3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L3
	rsb	r0, r0, r0, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r3, [r3]
	lsl	r1, r1, #1
	strh	r2, [r3, r1]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.size	setPixel3, .-setPixel3
	.align	2
	.global	setPixel4
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel4, %function
setPixel4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L9
	rsb	r0, r0, r0, lsl #4
	add	r0, r1, r0, lsl #4
	ldr	ip, .L9+4
	str	lr, [sp, #-4]!
	add	r0, r0, r0, lsr #31
	ldr	lr, [r3]
	and	ip, ip, r0
	ldrsh	r3, [lr, ip]
	tst	r1, #1
	andne	r3, r3, #255
	biceq	r3, r3, #255
	orrne	r2, r3, r2, lsl #8
	orreq	r2, r3, r2
	strh	r2, [lr, ip]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L10:
	.align	2
.L9:
	.word	.LANCHOR0
	.word	131070
	.size	setPixel4, .-setPixel4
	.align	2
	.global	drawRect3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect3, %function
drawRect3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, lr}
	mov	lr, #0
	ldr	r4, .L19
	add	r2, r0, r2
	rsb	ip, r2, r2, lsl #4
	rsb	r0, r0, r0, lsl #4
	ldr	r2, [r4]
	add	ip, r1, ip, lsl #4
	add	r1, r1, r0, lsl #4
	ldr	r0, [r4, #4]
	orr	r3, r3, #-2130706432
	add	ip, r2, ip, lsl #1
	add	r1, r2, r1, lsl #1
.L13:
	add	r2, sp, #8
	str	lr, [r0, #44]
	str	r2, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #480
	cmp	r1, ip
	str	r3, [r0, #44]
	bne	.L13
	pop	{r4, lr}
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.size	drawRect3, .-drawRect3
	.align	2
	.global	drawRect4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect4, %function
drawRect4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r3
	mov	r9, r1
	sub	sp, sp, #36
	ldrb	lr, [sp, #72]	@ zero_extendqisi2
	ldrb	r3, [sp, #72]	@ zero_extendqisi2
	ldrb	r1, [sp, #72]	@ zero_extendqisi2
	lsl	r3, r3, #16
	ldrb	ip, [sp, #72]	@ zero_extendqisi2
	orr	r3, r3, lr, lsl #24
	orr	r3, r3, ip
	orr	r3, r3, r1, lsl #8
	ands	fp, r5, #1
	str	r3, [sp, #28]
	mov	r4, r0
	mov	r8, r2
	and	r3, r9, #1
	beq	.L22
	cmp	r3, #0
	beq	.L23
	cmp	r2, #0
	ble	.L21
	lsr	r3, r5, #31
	add	r2, r3, r5
	asr	r2, r2, #1
	str	r3, [sp, #4]
	lsl	r3, r0, #4
	sub	r1, r3, r0
	str	r3, [sp, #8]
	orr	r3, r2, #-2130706432
	add	r2, r8, r0
	str	r5, [sp, #16]
	mov	fp, r0
	mov	r4, r3
	mov	r5, r2
	add	r10, r9, #1
	ldr	r6, .L40
	str	r0, [sp, #12]
	add	r10, r10, r1, lsl #4
	add	r7, sp, #28
.L25:
	mov	r0, fp
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	mov	r1, r9
	bl	setPixel4
	mov	r3, #0
	add	r0, r10, r10, lsr #31
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	add	fp, fp, #1
	bic	r0, r0, #1
	add	r1, r1, r0
	cmp	r5, fp
	str	r3, [r2, #44]
	add	r10, r10, #240
	str	r7, [r2, #36]
	str	r1, [r2, #40]
	str	r4, [r2, #44]
	bne	.L25
	add	r4, sp, #12
	ldm	r4, {r4, r5}
	b	.L26
.L22:
	cmp	r3, #0
	bne	.L39
	cmp	r2, #0
	ble	.L21
	lsr	r3, r5, #31
	str	r3, [sp, #4]
	lsl	r3, r0, #4
	str	r3, [sp, #8]
	ldr	r6, .L40
	add	r7, sp, #28
.L26:
	mov	r2, #0
	mov	r1, r2
	ldr	r3, [sp, #4]
	add	r5, r3, r5
	ldr	r3, [sp, #8]
	asr	r5, r5, #1
	sub	r4, r3, r4
	ldr	ip, [r6]
	ldr	r0, [r6, #4]
	orr	r5, r5, #-2130706432
	add	r9, r9, r4, lsl #4
.L29:
	add	r3, r9, r9, lsr #31
	add	r2, r2, #1
	bic	r3, r3, #1
	add	r3, ip, r3
	cmp	r8, r2
	str	r1, [r0, #44]
	add	r9, r9, #240
	str	r7, [r0, #36]
	str	r3, [r0, #40]
	str	r5, [r0, #44]
	bgt	.L29
.L21:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L39:
	cmp	r2, #0
	ble	.L21
	sub	r10, r5, #2
	add	r1, r5, r9
	add	r10, r10, r10, lsr #31
	asr	r10, r10, #1
	rsb	r2, r4, r4, lsl #4
	add	r3, r9, #1
	ldr	r6, .L40
	str	r1, [sp, #4]
	add	r8, r8, r4
	orr	r10, r10, #-2130706432
	add	r5, r3, r2, lsl #4
	add	r7, sp, #28
.L28:
	mov	r0, r4
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	mov	r1, r9
	bl	setPixel4
	add	r0, r5, r5, lsr #31
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	bic	r0, r0, #1
	add	r1, r1, r0
	str	fp, [r2, #44]
	str	r7, [r2, #36]
	str	r1, [r2, #40]
	str	r10, [r2, #44]
	mov	r0, r4
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	ldr	r1, [sp, #4]
	add	r4, r4, #1
	bl	setPixel4
	cmp	r4, r8
	add	r5, r5, #240
	bne	.L28
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	cmp	r2, #0
	ble	.L21
	sub	r2, r5, #1
	add	r2, r2, r2, lsr #31
	asr	r2, r2, #1
	str	r3, [sp, #4]
	lsl	r3, r4, #4
	sub	r10, r3, r4
	str	r3, [sp, #8]
	add	r1, r8, r4
	orr	r3, r2, #-2130706432
	add	r2, r5, r9
	mov	fp, r4
	add	r10, r9, r10, lsl #4
	str	r4, [sp, #12]
	str	r9, [sp, #16]
	str	r5, [sp, #20]
	mov	r4, r1
	mov	r9, r3
	mov	r5, r2
	ldr	r6, .L40
	add	r7, sp, #28
.L27:
	add	r0, r10, r10, lsr #31
	ldr	r1, [r6]
	ldr	r2, [r6, #4]
	bic	r0, r0, #1
	ldr	r3, [sp, #4]
	add	r1, r1, r0
	str	r3, [r2, #44]
	str	r7, [r2, #36]
	str	r1, [r2, #40]
	str	r9, [r2, #44]
	mov	r0, fp
	ldrb	r2, [sp, #72]	@ zero_extendqisi2
	mov	r1, r5
	add	fp, fp, #1
	bl	setPixel4
	cmp	r4, fp
	add	r10, r10, #240
	bne	.L27
	ldr	r5, [sp, #20]
	add	r4, sp, #12
	lsr	r3, r5, #31
	ldm	r4, {r4, r9}
	str	r3, [sp, #4]
	b	.L26
.L41:
	.align	2
.L40:
	.word	.LANCHOR0
	.size	drawRect4, .-drawRect4
	.align	2
	.global	fillScreen3
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen3, %function
fillScreen3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #8
	ldr	r1, .L44
	add	r2, sp, #8
	strh	r0, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L44+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L45:
	.align	2
.L44:
	.word	.LANCHOR0
	.word	-2130668032
	.size	fillScreen3, .-fillScreen3
	.align	2
	.global	fillScreen4
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen4, %function
fillScreen4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	sub	sp, sp, #16
	strb	r0, [sp, #7]
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	ldr	r1, .L48
	add	r2, sp, #16
	orr	r3, r3, r0, lsl #8
	strh	r3, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L48+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L49:
	.align	2
.L48:
	.word	.LANCHOR0
	.word	-2130687232
	.size	fillScreen4, .-fillScreen4
	.align	2
	.global	drawImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage3, %function
drawImage3:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, lr}
	mov	r4, #0
	ldr	r5, .L58
	add	r2, r0, r2
	rsb	lr, r2, r2, lsl #4
	rsb	r0, r0, r0, lsl #4
	ldr	r2, [r5]
	add	lr, r1, lr, lsl #4
	ldr	ip, [sp, #12]
	add	r1, r1, r0, lsl #4
	ldr	r0, [r5, #4]
	add	lr, r2, lr, lsl #1
	add	r1, r2, r1, lsl #1
	orr	r2, r3, #-2147483648
	lsl	r3, r3, #1
.L52:
	str	r4, [r0, #44]
	str	ip, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #480
	cmp	r1, lr
	str	r2, [r0, #44]
	add	ip, ip, r3
	bne	.L52
	pop	{r4, r5, lr}
	bx	lr
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.size	drawImage3, .-drawImage3
	.align	2
	.global	drawImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawImage4, %function
drawImage4:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	bxle	lr
	push	{r4, r5, r6, lr}
	mov	r4, #0
	ldr	r5, .L68
	add	lr, r0, r2
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	rsb	r0, r0, r0, lsl #4
	rsb	lr, lr, lr, lsl #4
	ldr	ip, [sp, #16]
	ldr	r6, [r5]
	ldr	r2, [r5, #4]
	add	lr, r1, lr, lsl #4
	orr	r5, r3, #-2147483648
	add	r1, r1, r0, lsl #4
	lsl	r0, r3, #1
.L62:
	add	r3, r1, r1, lsr #31
	bic	r3, r3, #1
	add	r1, r1, #240
	add	r3, r6, r3
	cmp	r1, lr
	str	r4, [r2, #44]
	str	ip, [r2, #36]
	str	r3, [r2, #40]
	add	ip, ip, r0
	str	r5, [r2, #44]
	bne	.L62
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	.LANCHOR0
	.size	drawImage4, .-drawImage4
	.align	2
	.global	drawFullscreenImage3
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage3, %function
drawFullscreenImage3:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L71
	ldr	r1, .L71+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L72:
	.align	2
.L71:
	.word	.LANCHOR0
	.word	-2147445248
	.size	drawFullscreenImage3, .-drawFullscreenImage3
	.align	2
	.global	drawFullscreenImage4
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFullscreenImage4, %function
drawFullscreenImage4:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, #0
	ldr	r2, .L74
	ldr	r1, .L74+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L75:
	.align	2
.L74:
	.word	.LANCHOR0
	.word	-2147464448
	.size	drawFullscreenImage4, .-drawFullscreenImage4
	.align	2
	.global	waitForVBlank
	.syntax unified
	.arm
	.fpu softvfp
	.type	waitForVBlank, %function
waitForVBlank:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #67108864
.L77:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L77
	mov	r2, #67108864
.L78:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L78
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
	.align	2
	.global	flipPage
	.syntax unified
	.arm
	.fpu softvfp
	.type	flipPage, %function
flipPage:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	ldrh	r3, [r3]
	tst	r3, #16
	moveq	r1, #100663296
	ldrne	r2, .L85
	ldreq	r2, .L85
	ldrne	r1, .L85+4
	str	r1, [r2]
	mov	r2, #67108864
	eor	r3, r3, #16
	strh	r3, [r2]	@ movhi
	bx	lr
.L86:
	.align	2
.L85:
	.word	.LANCHOR0
	.word	100704256
	.size	flipPage, .-flipPage
	.align	2
	.global	DMANow
	.syntax unified
	.arm
	.fpu softvfp
	.type	DMANow, %function
DMANow:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #0
	ldr	ip, .L89
	add	r0, r0, r0, lsl #1
	ldr	lr, [ip, #4]
	lsl	r0, r0, #2
	add	ip, lr, r0
	orr	r3, r3, #-2147483648
	str	r4, [ip, #8]
	str	r1, [lr, r0]
	str	r2, [ip, #4]
	pop	{r4, lr}
	str	r3, [ip, #8]
	bx	lr
.L90:
	.align	2
.L89:
	.word	.LANCHOR0
	.size	DMANow, .-DMANow
	.align	2
	.global	collision
	.syntax unified
	.arm
	.fpu softvfp
	.type	collision, %function
collision:
	@ Function supports interworking.
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	ldr	lr, [sp, #4]
	ldr	ip, [sp, #12]
	add	ip, lr, ip
	sub	ip, ip, #1
	cmp	ip, r0
	ble	.L95
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, lr
	bgt	.L97
.L95:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L97:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #16]
	add	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	ble	.L95
	add	r0, r1, r3
	ldr	r3, [sp, #8]
	sub	r0, r0, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.global	dma
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.type	dma, %object
	.size	dma, 4
dma:
	.word	67109040
	.ident	"GCC: (devkitARM release 47) 7.1.0"
