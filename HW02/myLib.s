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
	.global	setPixel
	.syntax unified
	.arm
	.fpu softvfp
	.type	setPixel, %function
setPixel:
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
	.size	setPixel, .-setPixel
	.align	2
	.global	drawRect
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawRect, %function
drawRect:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	cmp	r2, #0
	ldrh	ip, [sp, #12]
	ble	.L5
	mov	r4, #0
	ldr	lr, .L13
	rsb	r0, r0, r0, lsl #4
	ldr	lr, [lr]
	add	r0, r1, r0, lsl #4
	add	lr, lr, r0, lsl #1
	lsl	r5, r3, #1
.L7:
	cmp	r3, #0
	movgt	r1, lr
	addgt	r0, lr, r5
	ble	.L10
.L8:
	strh	ip, [r1], #2	@ movhi
	cmp	r1, r0
	bne	.L8
.L10:
	add	r4, r4, #1
	cmp	r2, r4
	add	lr, lr, #480
	bne	.L7
.L5:
	pop	{r4, r5, lr}
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
	.size	drawRect, .-drawRect
	.align	2
	.global	fillScreen
	.syntax unified
	.arm
	.fpu softvfp
	.type	fillScreen, %function
fillScreen:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L19
	ldr	r2, .L19+4
	ldr	r1, [r3]
	sub	r3, r1, #2
	add	r2, r1, r2
.L16:
	strh	r0, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L16
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0
	.word	76798
	.size	fillScreen, .-fillScreen
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
.L22:
	ldrh	r3, [r2, #6]
	cmp	r3, #160
	bhi	.L22
	mov	r2, #67108864
.L23:
	ldrh	r3, [r2, #6]
	cmp	r3, #159
	bls	.L23
	bx	lr
	.size	waitForVBlank, .-waitForVBlank
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
	ble	.L31
	add	r0, r0, r2
	sub	r0, r0, #1
	cmp	r0, lr
	bgt	.L33
.L31:
	mov	r0, #0
	ldr	lr, [sp], #4
	bx	lr
.L33:
	ldr	r2, [sp, #8]
	ldr	r0, [sp, #16]
	add	r2, r2, r0
	sub	r2, r2, #1
	cmp	r2, r1
	ble	.L31
	add	r0, r1, r3
	ldr	r3, [sp, #8]
	sub	r0, r0, #1
	cmp	r0, r3
	movle	r0, #0
	movgt	r0, #1
	ldr	lr, [sp], #4
	bx	lr
	.size	collision, .-collision
	.align	2
	.global	drawAHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawAHeart, %function
drawAHeart:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	lsl	ip, r2, #2
	lsl	lr, r2, #1
	add	r4, ip, r2
	add	r5, lr, r2
	sub	sp, sp, #44
	cmp	r5, r4
	str	ip, [sp, #8]
	str	r0, [sp]
	mov	ip, r0
	ldrh	r0, [sp, #80]
	bge	.L35
	mov	r9, r5
	ldr	r7, .L130
	add	ip, ip, r2, lsl #1
	rsb	r6, ip, ip, lsl #4
	ldr	r8, [r7]
	add	ip, r5, r1
	add	ip, ip, r6, lsl #4
	sub	r10, r2, r2, lsl #4
	add	r8, r8, ip, lsl #1
	lsl	r10, r10, #5
.L39:
	cmp	r2, #0
	ble	.L36
	add	r7, r8, r10
.L38:
	mov	ip, r7
	add	r6, r7, lr
.L37:
	strh	r0, [ip], #2	@ movhi
	cmp	ip, r6
	bne	.L37
	add	r7, r7, #480
	cmp	r7, r8
	bne	.L38
.L36:
	add	r9, r9, r2
	cmp	r9, r4
	add	r8, r8, lr
	blt	.L39
.L35:
	ldr	ip, [sp, #8]
	add	r7, ip, r2
	lsl	r9, r2, #3
	lsl	r7, r7, #1
	cmp	r9, r7
	str	r9, [sp, #16]
	bge	.L40
	ldr	ip, [sp]
	ldr	r6, .L130
	add	ip, ip, r2, lsl #1
	rsb	r8, ip, ip, lsl #4
	ldr	r6, [r6]
	add	ip, r9, r1
	add	ip, ip, r8, lsl #4
	sub	fp, r2, r2, lsl #4
	mov	r10, r9
	lsl	fp, fp, #5
	add	r9, r6, ip, lsl #1
.L44:
	cmp	r2, #0
	ble	.L41
	add	r8, r9, fp
.L43:
	mov	ip, r8
	add	r6, r8, lr
.L42:
	strh	r0, [ip], #2	@ movhi
	cmp	ip, r6
	bne	.L42
	add	r8, r8, #480
	cmp	r8, r9
	bne	.L43
.L41:
	add	r10, r10, r2
	cmp	r10, r7
	add	r9, r9, lr
	blt	.L44
.L40:
	add	r10, lr, r1
	ldr	ip, [sp]
	add	r1, lr, r10
	str	r1, [sp, #20]
	add	ip, lr, ip
	sub	r1, r1, r2
	str	r1, [sp, #24]
	add	r8, ip, r2
	add	r1, lr, r1
	cmp	r2, #0
	str	r10, [sp, #32]
	str	r1, [sp, #12]
	str	r8, [sp, #4]
	ldr	r6, [sp, #8]
	ble	.L45
	lsl	r9, r8, #4
	ldr	r1, .L130
	sub	r8, r9, r8
	rsb	ip, ip, ip, lsl #4
	lsl	ip, ip, #4
	str	r9, [sp, #36]
	lsl	r8, r8, #4
	ldr	r9, [r1]
	add	fp, r10, r8
	str	ip, [sp, #28]
	add	r10, r10, ip
	add	fp, r9, fp, lsl #1
	add	r10, r9, r10, lsl #1
.L47:
	mov	r1, r10
	add	ip, r10, lr
.L46:
	strh	r0, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L46
	add	r10, r10, #480
	cmp	r10, fp
	bne	.L47
	add	r1, sp, #24
	ldm	r1, {r1, ip}
	add	r10, r1, ip
	add	fp, r1, r8
	add	r10, r9, r10, lsl #1
	add	fp, r9, fp, lsl #1
.L49:
	mov	r1, r10
	add	ip, r10, lr
.L48:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L48
	add	r10, r10, #480
	cmp	r10, fp
	bne	.L49
	ldr	r1, [sp, #20]
	ldr	ip, [sp, #28]
	add	r8, r1, r8
	add	r1, r1, ip
	add	r10, r9, r8, lsl #1
	add	r8, r9, r1, lsl #1
.L51:
	mov	r1, r8
	add	ip, r8, lr
.L50:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L50
	add	r8, r8, #480
	cmp	r8, r10
	bne	.L51
	ldr	r1, [sp, #4]
	ldr	ip, [sp, #36]
	add	r10, r1, r2
	sub	fp, ip, r1
	ldr	r1, [sp, #24]
	lsl	fp, fp, #4
	rsb	r10, r10, r10, lsl #4
	add	r8, r1, fp
	add	r10, r1, r10, lsl #4
	add	r8, r9, r8, lsl #1
	add	r10, r9, r10, lsl #1
.L53:
	mov	r1, r8
	add	ip, r8, lr
.L52:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, ip
	bne	.L52
	add	r8, r8, #480
	cmp	r8, r10
	bne	.L53
	mov	ip, #0
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #28]
	add	r8, r3, r1
	add	r8, r9, r8, lsl #1
.L55:
	mov	r1, r8
	mov	r3, #0
.L54:
	add	r3, r3, #1
	cmp	r2, r3
	strh	r0, [r1], #2	@ movhi
	bgt	.L54
	add	ip, ip, #1
	cmp	r2, ip
	add	r8, r8, #480
	bgt	.L55
	mov	r1, #0
	ldr	r3, [sp, #32]
	add	fp, r3, fp
	add	r9, r9, fp, lsl #1
.L57:
	mov	ip, r9
	mov	r3, #0
.L56:
	add	r3, r3, #1
	cmp	r2, r3
	strh	r0, [ip], #2	@ movhi
	bgt	.L56
	add	r1, r1, #1
	cmp	r2, r1
	add	r9, r9, #480
	bgt	.L57
.L45:
	ldr	r3, [sp, #8]
	add	ip, r3, r2
	ldr	r3, [sp, #16]
	add	ip, r2, ip, lsl #1
	sub	r3, r3, r2
	cmp	r3, ip
	str	r3, [sp, #28]
	bge	.L58
	mov	r10, r3
	ldr	r1, .L130
	ldr	r3, [sp, #4]
	ldr	r8, [sp, #12]
	rsb	r3, r3, r3, lsl #4
	ldr	r1, [r1]
	add	r8, lr, r8
	add	r3, r8, r3, lsl #4
	sub	fp, r2, r2, lsl #4
	add	r9, r1, r3, lsl #1
	lsl	fp, fp, #5
.L62:
	cmp	r2, #0
	ble	.L59
	add	r8, fp, r9
.L61:
	mov	r3, r8
	add	r1, lr, r8
.L60:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L60
	add	r8, r8, #480
	cmp	r9, r8
	bne	.L61
.L59:
	add	r10, r10, r2
	cmp	r10, ip
	add	r9, r9, lr
	blt	.L62
.L58:
	ldr	r3, [sp, #8]
	cmp	ip, r3
	ble	.L63
	mov	r10, r3
	ldr	r3, [sp, #4]
	ldr	r1, .L130
	add	r3, r3, r2
	ldr	r8, [sp, #20]
	rsb	r3, r3, r3, lsl #4
	ldr	r1, [r1]
	add	r3, r8, r3, lsl #4
	sub	fp, r2, r2, lsl #4
	add	r9, r1, r3, lsl #1
	lsl	fp, fp, #5
.L67:
	cmp	r2, #0
	ble	.L64
	add	r8, fp, r9
.L66:
	mov	r3, r8
	add	r1, lr, r8
.L65:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L65
	add	r8, r8, #480
	cmp	r9, r8
	bne	.L66
.L64:
	add	r10, r10, r2
	cmp	r10, ip
	add	r9, r9, lr
	blt	.L67
.L63:
	cmp	lr, ip
	bge	.L68
	mov	r10, lr
	ldr	r3, [sp, #4]
	ldr	r1, .L130
	add	r3, r3, r2, lsl #1
	ldr	r8, [sp, #32]
	rsb	r3, r3, r3, lsl #4
	ldr	r1, [r1]
	add	r3, r8, r3, lsl #4
	sub	fp, r2, r2, lsl #4
	add	r9, r1, r3, lsl #1
	lsl	fp, fp, #5
.L72:
	cmp	r2, #0
	ble	.L69
	add	r8, fp, r9
.L71:
	mov	r3, r8
	add	r1, lr, r8
.L70:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L70
	add	r8, r8, #480
	cmp	r9, r8
	bne	.L71
.L69:
	add	r10, r10, r2
	cmp	r10, ip
	add	r9, r9, lr
	blt	.L72
.L68:
	cmp	r5, r7
	bge	.L73
	ldr	r3, [sp, #4]
	ldr	r1, .L130
	add	r3, lr, r3
	ldr	r8, [r1]
	add	r3, r3, r2
	ldr	r1, [sp, #24]
	rsb	r3, r3, r3, lsl #4
	add	r3, r1, r3, lsl #4
	sub	r9, r2, r2, lsl #4
	add	r8, r8, r3, lsl #1
	lsl	r9, r9, #5
.L77:
	cmp	r2, #0
	ble	.L74
	add	ip, r9, r8
.L76:
	mov	r3, ip
	add	r1, lr, ip
.L75:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L75
	add	ip, ip, #480
	cmp	r8, ip
	bne	.L76
.L74:
	add	r5, r5, r2
	cmp	r5, r7
	add	r8, r8, lr
	blt	.L77
.L73:
	ldr	r3, [sp, #16]
	add	r5, r3, r2
	ldr	r3, [sp, #8]
	cmp	r5, r3
	add	r3, lr, r2
	lsl	r3, r3, #1
	ble	.L78
	ldr	r1, [sp]
	add	r3, r1, r3
	ldr	r1, .L130
	add	r3, r3, r2
	ldr	r7, [r1]
	ldr	r1, [sp, #20]
	rsb	r3, r3, r3, lsl #4
	add	r3, r1, r3, lsl #4
	sub	r8, r2, r2, lsl #4
	add	r7, r7, r3, lsl #1
	lsl	r8, r8, #5
.L82:
	cmp	r2, #0
	ble	.L79
	add	ip, r8, r7
.L81:
	mov	r3, ip
	add	r1, lr, ip
.L80:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L80
	add	ip, ip, #480
	cmp	r7, ip
	bne	.L81
.L79:
	add	r6, r6, r2
	cmp	r6, r5
	add	r7, r7, lr
	blt	.L82
.L78:
	ldr	r7, [sp, #16]
	cmp	r7, r4
	ble	.L83
	ldr	r1, [sp, #28]
	ldr	r3, [sp]
	add	r3, r3, r1
	ldr	r1, .L130
	add	r3, r3, r2
	ldr	r5, [r1]
	ldr	r1, [sp, #12]
	rsb	r3, r3, r3, lsl #4
	add	r3, r1, r3, lsl #4
	sub	r6, r2, r2, lsl #4
	add	r5, r5, r3, lsl #1
	lsl	r6, r6, #5
.L87:
	cmp	r2, #0
	ble	.L84
	add	ip, r6, r5
.L86:
	mov	r3, ip
	add	r1, lr, ip
.L85:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L85
	add	ip, ip, #480
	cmp	r5, ip
	bne	.L86
.L84:
	add	r4, r4, r2
	cmp	r7, r4
	add	r5, r5, lr
	bgt	.L87
.L83:
	ldr	r1, [sp]
	ldr	r3, [sp, #16]
	add	r3, r3, r1
	ldr	r1, [sp, #12]
	cmp	r2, #0
	add	r4, r2, r1
	ble	.L34
	ldr	ip, .L130
	add	r2, r3, r2
	rsb	r1, r3, r3, lsl #4
	ldr	ip, [ip]
	rsb	r2, r2, r2, lsl #4
	add	r3, r4, r2, lsl #4
	add	r1, r4, r1, lsl #4
	add	r3, ip, r3, lsl #1
	add	ip, ip, r1, lsl #1
.L90:
	mov	r2, ip
	add	r1, ip, lr
.L89:
	strh	r0, [r2], #2	@ movhi
	cmp	r1, r2
	bne	.L89
	add	ip, ip, #480
	cmp	ip, r3
	bne	.L90
.L34:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L131:
	.align	2
.L130:
	.word	.LANCHOR0
	.size	drawAHeart, .-drawAHeart
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 47) 7.1.0"
