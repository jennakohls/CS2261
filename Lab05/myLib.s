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
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldrb	r5, [sp, #56]	@ zero_extendqisi2
	ldrb	ip, [sp, #56]	@ zero_extendqisi2
	ldrb	lr, [sp, #56]	@ zero_extendqisi2
	lsl	ip, ip, #16
	ldrb	r4, [sp, #56]	@ zero_extendqisi2
	orr	ip, ip, r5, lsl #24
	orr	ip, ip, r4
	orr	ip, ip, lr, lsl #8
	cmp	r3, #1
	str	ip, [sp, #12]
	beq	.L41
	cmp	r3, #2
	mov	r4, r0
	mov	r8, r1
	beq	.L42
	ands	fp, r3, #1
	and	r10, r1, #1
	bne	.L43
	cmp	r10, #0
	beq	.L44
	cmp	r2, #0
	ble	.L21
	sub	r10, r3, #2
	add	r10, r10, r10, lsr #31
	add	r2, r2, r4
	sub	r5, r3, #1
	asr	r10, r10, #1
	rsb	r1, r4, r4, lsl #4
	add	r3, r8, #1
	ldr	r7, .L45
	str	r2, [sp, #4]
	orr	r10, r10, #-2130706432
	add	r5, r5, r8
	add	r6, r3, r1, lsl #4
	add	r9, sp, #12
.L29:
	mov	r0, r4
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	mov	r1, r8
	bl	setPixel4
	add	r0, r6, r6, lsr #31
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
	bic	r0, r0, #1
	add	r1, r1, r0
	str	fp, [r2, #44]
	str	r9, [r2, #36]
	str	r1, [r2, #40]
	str	r10, [r2, #44]
	mov	r0, r4
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	mov	r1, r5
	bl	setPixel4
	ldr	r3, [sp, #4]
	add	r4, r4, #1
	cmp	r4, r3
	add	r6, r6, #240
	bne	.L29
.L21:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L43:
	cmp	r10, #0
	beq	.L26
	cmp	r2, #0
	ble	.L21
	mov	r10, #0
	add	r5, r3, r3, lsr #31
	asr	r5, r5, #1
	rsb	r3, r0, r0, lsl #4
	add	fp, r1, #1
	ldr	r7, .L45
	orr	r5, r5, #-2130706432
	add	r6, r2, r0
	add	fp, fp, r3, lsl #4
	add	r9, sp, #12
.L28:
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	mov	r1, r8
	mov	r0, r4
	bl	setPixel4
	add	r1, fp, fp, lsr #31
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r4, r4, #1
	bic	r1, r1, #1
	add	r2, r2, r1
	cmp	r6, r4
	str	r10, [r3, #44]
	add	fp, fp, #240
	str	r9, [r3, #36]
	str	r2, [r3, #40]
	str	r5, [r3, #44]
	bne	.L28
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L26:
	cmp	r2, #0
	ble	.L21
	mov	fp, r4
	sub	r3, r3, #1
	add	r1, r3, r3, lsr #31
	rsb	r0, r4, r4, lsl #4
	asr	r1, r1, #1
	ldr	r7, .L45
	add	r5, r3, r8
	orr	r4, r1, #-2130706432
	add	r6, r2, fp
	add	r8, r8, r0, lsl #4
	add	r9, sp, #12
.L30:
	add	r1, r8, r8, lsr #31
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	bic	r1, r1, #1
	add	r2, r2, r1
	str	r10, [r3, #44]
	str	r9, [r3, #36]
	str	r2, [r3, #40]
	str	r4, [r3, #44]
	mov	r0, fp
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	mov	r1, r5
	add	fp, fp, #1
	bl	setPixel4
	cmp	r6, fp
	add	r8, r8, #240
	bne	.L30
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L41:
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	bl	setPixel4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L42:
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	bl	setPixel4
	ldrb	r2, [sp, #56]	@ zero_extendqisi2
	add	r1, r1, #1
	mov	r0, r4
	bl	setPixel4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L44:
	cmp	r2, #0
	ble	.L21
	ldr	r1, .L45
	add	r6, r2, r4
	add	r3, r3, r3, lsr #31
	asr	r0, r3, #1
	rsb	r2, r6, r6, lsl #4
	rsb	r4, r4, r4, lsl #4
	ldr	ip, [r1]
	ldr	r1, [r1, #4]
	add	r2, r8, r2, lsl #4
	orr	r0, r0, #-2130706432
	add	r8, r8, r4, lsl #4
	add	r9, sp, #12
.L31:
	add	r3, r8, r8, lsr #31
	bic	r3, r3, #1
	add	r8, r8, #240
	add	r3, ip, r3
	cmp	r2, r8
	str	r10, [r1, #44]
	str	r9, [r1, #36]
	str	r3, [r1, #40]
	str	r0, [r1, #44]
	bne	.L31
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r1, .L49
	add	r2, sp, #8
	strh	r0, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L49+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #8
	@ sp needed
	bx	lr
.L50:
	.align	2
.L49:
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
	ldr	r1, .L53
	add	r2, sp, #16
	orr	r3, r3, r0, lsl #8
	strh	r3, [r2, #-2]!	@ movhi
	ldm	r1, {r0, r3}
	ldr	r1, .L53+4
	str	ip, [r3, #44]
	str	r2, [r3, #36]
	str	r0, [r3, #40]
	str	r1, [r3, #44]
	add	sp, sp, #16
	@ sp needed
	bx	lr
.L54:
	.align	2
.L53:
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
	ldr	r5, .L63
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
.L57:
	str	r4, [r0, #44]
	str	ip, [r0, #36]
	str	r1, [r0, #40]
	add	r1, r1, #480
	cmp	r1, lr
	str	r2, [r0, #44]
	add	ip, ip, r3
	bne	.L57
	pop	{r4, r5, lr}
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r5, .L73
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
.L67:
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
	bne	.L67
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r2, .L76
	ldr	r1, .L76+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L77:
	.align	2
.L76:
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
	ldr	r2, .L79
	ldr	r1, .L79+4
	ldm	r2, {r2, r3}
	str	ip, [r3, #44]
	str	r0, [r3, #36]
	str	r2, [r3, #40]
	str	r1, [r3, #44]
	bx	lr
.L80:
	.align	2
.L79:
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
.L82:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L82
	mov	r2, #67108864
.L83:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L83
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
	ldrne	r2, .L90
	ldreq	r2, .L90
	ldrne	r1, .L90+4
	str	r1, [r2]
	mov	r2, #67108864
	eor	r3, r3, #16
	strh	r3, [r2]	@ movhi
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	ip, .L94
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
.L95:
	.align	2
.L94:
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
	ble	.L100
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, lr
	bgt	.L102
.L100:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L102:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #16]
	add	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	ble	.L100
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
