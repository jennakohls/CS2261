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
	.global	drawHeart
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHeart, %function
drawHeart:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	lsl	ip, r2, #1
	lsl	lr, r2, #2
	add	r7, ip, r2
	add	r6, lr, r2
	sub	sp, sp, #76
	cmp	r7, r6
	str	r0, [sp]
	str	lr, [sp, #28]
	ldrh	r0, [sp, #112]
	bge	.L181
	mov	r10, r7
	ldr	lr, [sp]
	ldr	r5, .L182
	add	r4, lr, r2
	rsb	r8, r4, r4, lsl #4
	add	lr, r7, r1
	ldr	r5, [r5]
	add	lr, lr, r8, lsl #4
	sub	fp, r2, r2, lsl #4
	add	r9, r5, lr, lsl #1
	lsl	fp, fp, #5
.L20:
	cmp	r2, #0
	ble	.L17
	add	r8, r9, fp
.L19:
	mov	lr, r8
	add	r5, r8, ip
.L18:
	strh	r3, [lr], #2	@ movhi
	cmp	lr, r5
	bne	.L18
	add	r8, r8, #480
	cmp	r8, r9
	bne	.L19
.L17:
	add	r10, r10, r2
	cmp	r10, r6
	add	r9, r9, ip
	blt	.L20
.L16:
	ldr	lr, [sp, #28]
	add	lr, lr, r2
	lsl	r5, lr, #1
	lsl	lr, r2, #3
	cmp	lr, r5
	mov	r8, lr
	str	lr, [sp, #8]
	str	r5, [sp, #24]
	bge	.L21
	ldr	r5, .L182
	add	r8, r8, r1
	mov	r10, lr
	ldr	r5, [r5]
	rsb	lr, r4, r4, lsl #4
	add	lr, r8, lr, lsl #4
	sub	fp, r2, r2, lsl #4
	str	r1, [sp, #4]
	ldr	r1, [sp, #24]
	add	r9, r5, lr, lsl #1
	lsl	fp, fp, #5
.L25:
	cmp	r2, #0
	ble	.L22
	add	r8, r9, fp
.L24:
	mov	lr, r8
	add	r5, r8, ip
.L23:
	strh	r3, [lr], #2	@ movhi
	cmp	lr, r5
	bne	.L23
	add	r8, r8, #480
	cmp	r8, r9
	bne	.L24
.L22:
	add	r10, r10, r2
	cmp	r10, r1
	add	r9, r9, ip
	blt	.L25
	ldr	r1, [sp, #4]
.L21:
	ldr	r9, [sp, #28]
	ldr	lr, [sp, #8]
	add	r8, r9, r2
	sub	r5, lr, r2
	add	fp, r2, r8, lsl #1
	str	r8, [sp, #64]
	add	lr, ip, r2
	ldr	r8, [sp]
	lsl	lr, lr, #1
	str	r5, [sp, #20]
	add	r5, r1, r5
	add	r8, r8, r9
	str	r5, [sp, #32]
	str	lr, [sp, #60]
	sub	r5, r5, ip
	add	lr, r1, lr
	str	r5, [sp, #36]
	str	lr, [sp, #4]
	add	r5, r1, fp
	sub	lr, r8, r2
	str	r5, [sp, #48]
	str	lr, [sp, #44]
	add	r9, ip, r1
	add	r5, r4, r2
	add	lr, r2, r1
	cmp	r2, #0
	str	r8, [sp, #56]
	str	r9, [sp, #16]
	str	r5, [sp, #12]
	str	lr, [sp, #40]
	ble	.L26
	lsl	r8, r5, #4
	ldr	lr, .L182
	sub	r5, r8, r5
	rsb	r4, r4, r4, lsl #4
	lsl	r5, r5, #4
	str	r8, [sp, #68]
	lsl	r4, r4, #4
	ldr	r8, [lr]
	add	r10, r9, r5
	str	r5, [sp, #52]
	add	r9, r9, r4
	add	r10, r8, r10, lsl #1
	add	r9, r8, r9, lsl #1
.L28:
	mov	lr, r9
	add	r5, r9, ip
.L27:
	strh	r3, [lr], #2	@ movhi
	cmp	lr, r5
	bne	.L27
	add	r9, r9, #480
	cmp	r9, r10
	bne	.L28
	ldr	lr, [sp, #36]
	ldr	r5, [sp, #52]
	add	r9, lr, r4
	add	r10, lr, r5
	add	r9, r8, r9, lsl #1
	add	r10, r8, r10, lsl #1
.L30:
	mov	lr, r9
	add	r5, r9, ip
.L29:
	strh	r3, [lr], #2	@ movhi
	cmp	lr, r5
	bne	.L29
	add	r9, r9, #480
	cmp	r9, r10
	bne	.L30
	ldr	lr, [sp, #32]
	ldr	r5, [sp, #52]
	add	r9, lr, r4
	add	r10, lr, r5
	add	r9, r8, r9, lsl #1
	add	r10, r8, r10, lsl #1
.L32:
	mov	lr, r9
	add	r5, r9, ip
.L31:
	strh	r3, [lr], #2	@ movhi
	cmp	lr, r5
	bne	.L31
	add	r9, r9, #480
	cmp	r9, r10
	bne	.L32
	ldr	lr, [sp, #24]
	add	r1, r1, lr
	ldr	lr, [sp, #52]
	add	r4, r1, r4
	add	r1, r1, lr
	add	r4, r8, r4, lsl #1
	add	r5, r8, r1, lsl #1
.L35:
	mov	r1, r4
	add	lr, r4, ip
.L34:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, lr
	bne	.L34
	add	r4, r4, #480
	cmp	r4, r5
	bne	.L35
	mov	r9, #0
	ldr	r1, [sp, #68]
	ldr	lr, [sp, #12]
	sub	lr, r1, lr
	ldr	r1, [sp, #40]
	lsl	lr, lr, #4
	add	r5, r1, lr
	add	r5, r8, r5, lsl #1
.L37:
	mov	r4, r5
	mov	r1, #0
.L36:
	add	r1, r1, #1
	cmp	r2, r1
	strh	r3, [r4], #2	@ movhi
	bgt	.L36
	add	r9, r9, #1
	cmp	r2, r9
	add	r5, r5, #480
	bgt	.L37
	mov	r9, #0
	ldr	r1, [sp, #44]
	rsb	r1, r1, r1, lsl #4
	lsl	r10, r1, #4
	ldr	r1, [sp, #40]
	add	r5, r1, r10
	add	r5, r8, r5, lsl #1
.L39:
	mov	r4, r5
	mov	r1, #0
.L38:
	add	r1, r1, #1
	cmp	r2, r1
	strh	r3, [r4], #2	@ movhi
	bgt	.L38
	add	r9, r9, #1
	cmp	r2, r9
	add	r5, r5, #480
	bgt	.L39
	mov	r9, #0
	ldr	r1, [sp, #56]
	ldr	r4, [sp, #40]
	rsb	r1, r1, r1, lsl #4
	lsl	r1, r1, #4
	add	r5, r4, r1
	str	r1, [sp, #52]
	add	r5, r8, r5, lsl #1
.L41:
	mov	r4, r5
	mov	r1, #0
.L40:
	add	r1, r1, #1
	cmp	r2, r1
	strh	r3, [r4], #2	@ movhi
	bgt	.L40
	add	r9, r9, #1
	cmp	r2, r9
	add	r5, r5, #480
	bgt	.L41
	mov	r9, #0
	ldr	r1, [sp, #4]
	add	r5, r1, lr
	add	r5, r8, r5, lsl #1
.L43:
	mov	r4, r5
	mov	r1, #0
.L42:
	add	r1, r1, #1
	cmp	r2, r1
	strh	r3, [r4], #2	@ movhi
	bgt	.L42
	add	r9, r9, #1
	cmp	r2, r9
	add	r5, r5, #480
	bgt	.L43
	mov	r4, #0
	ldr	r1, [sp, #48]
	add	lr, r1, lr
	add	r5, r8, lr, lsl #1
.L45:
	mov	lr, r5
	mov	r1, #0
.L44:
	add	r1, r1, #1
	cmp	r2, r1
	strh	r3, [lr], #2	@ movhi
	bgt	.L44
	add	r4, r4, #1
	cmp	r2, r4
	add	r5, r5, #480
	bgt	.L45
	mov	r5, #0
	ldr	r1, [sp, #48]
	add	r4, r1, r10
	add	r4, r8, r4, lsl #1
.L47:
	mov	lr, r4
	mov	r1, #0
.L46:
	add	r1, r1, #1
	cmp	r2, r1
	strh	r3, [lr], #2	@ movhi
	bgt	.L46
	add	r5, r5, #1
	cmp	r2, r5
	add	r4, r4, #480
	bgt	.L47
	mov	r4, #0
	add	r1, sp, #48
	ldm	r1, {r1, lr}
	add	r1, r1, lr
	add	r8, r8, r1, lsl #1
.L49:
	mov	lr, r8
	mov	r1, #0
.L48:
	add	r1, r1, #1
	cmp	r2, r1
	strh	r3, [lr], #2	@ movhi
	bgt	.L48
	add	r4, r4, #1
	cmp	r2, r4
	add	r8, r8, #480
	bgt	.L49
.L26:
	ldr	r4, [sp, #20]
	cmp	ip, r4
	bge	.L50
	str	r0, [sp, #40]
	mov	r8, ip
	mov	r0, r4
	ldr	lr, [sp]
	add	r1, ip, r7
	add	r1, r1, lr
	ldr	lr, .L182
	lsl	r9, r2, #4
	ldr	r5, [sp, #16]
	add	r1, r1, r2
	sub	r10, r9, r2
	rsb	r1, r1, r1, lsl #4
	ldr	lr, [lr]
	add	r1, r5, r1, lsl #4
	add	r10, r2, r10, lsl #4
	sub	r9, r2, r9
	add	r5, lr, r1, lsl #1
	lsl	r10, r10, #1
	lsl	r9, r9, #5
.L54:
	cmp	r2, #0
	ble	.L51
	add	r4, r9, r5
.L53:
	mov	r1, r4
	add	lr, ip, r4
.L52:
	strh	r3, [r1], #2	@ movhi
	cmp	lr, r1
	bne	.L52
	add	r4, r4, #480
	cmp	r5, r4
	bne	.L53
.L51:
	add	r8, r8, r2
	cmp	r8, r0
	add	r5, r5, r10
	blt	.L54
	ldr	r0, [sp, #40]
.L50:
	add	r10, ip, r2
	ldr	r8, [sp, #20]
	lsl	r1, r10, #2
	ldr	lr, [sp, #8]
	cmp	r1, r8
	str	r1, [sp, #40]
	add	r10, lr, r2
	ble	.L55
	ldr	r4, [sp]
	ldr	lr, .L182
	add	r1, r10, r4
	ldr	r4, [sp, #32]
	ldr	lr, [lr]
	sub	r9, r2, r2, lsl #4
	rsb	r1, r1, r1, lsl #4
	add	r1, r4, r1, lsl #4
	add	r4, r2, r9, lsl #4
	add	r5, lr, r1, lsl #1
	lsl	lr, r4, #1
	str	r6, [sp, #52]
	mov	r6, lr
	str	r10, [sp, #48]
	ldr	r10, [sp, #40]
	lsl	r9, r9, #5
.L59:
	cmp	r2, #0
	ble	.L56
	add	r4, r9, r5
.L58:
	mov	r1, r4
	add	lr, ip, r4
.L57:
	strh	r3, [r1], #2	@ movhi
	cmp	r1, lr
	bne	.L57
	add	r4, r4, #480
	cmp	r5, r4
	bne	.L58
.L56:
	add	r8, r8, r2
	cmp	r8, r10
	add	r5, r5, r6
	blt	.L59
	ldr	r10, [sp, #48]
	ldr	r6, [sp, #52]
.L55:
	cmp	r7, r6
	bge	.L60
	mov	r5, r7
	ldr	r1, .L182
	ldr	r3, [sp, #12]
	ldr	lr, [sp, #4]
	rsb	r3, r3, r3, lsl #4
	ldr	r1, [r1]
	sub	lr, lr, r7
	add	r3, lr, r3, lsl #4
	sub	r8, r2, r2, lsl #4
	add	r4, r1, r3, lsl #1
	lsl	r8, r8, #5
.L64:
	cmp	r2, #0
	ble	.L61
	add	lr, r8, r4
.L63:
	mov	r3, lr
	add	r1, ip, lr
.L62:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L62
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L63
.L61:
	add	r5, r5, r2
	cmp	r5, r6
	add	r4, r4, ip
	blt	.L64
.L60:
	ldr	r3, [sp, #8]
	ldr	r9, [sp, #24]
	cmp	r3, r9
	bge	.L65
	mov	r5, r3
	ldr	r1, .L182
	ldr	r3, [sp, #12]
	ldr	lr, [sp, #4]
	rsb	r3, r3, r3, lsl #4
	ldr	r1, [r1]
	add	lr, ip, lr
	add	r3, lr, r3, lsl #4
	sub	r8, r2, r2, lsl #4
	add	r4, r1, r3, lsl #1
	lsl	r8, r8, #5
.L69:
	cmp	r2, #0
	ble	.L66
	add	lr, r8, r4
.L68:
	mov	r3, lr
	add	r1, ip, lr
.L67:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L67
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L68
.L66:
	add	r5, r5, r2
	cmp	r5, r9
	add	r4, r4, ip
	blt	.L69
.L65:
	cmp	r2, #0
	ble	.L70
	ldr	r1, [sp, #12]
	ldr	r3, .L182
	add	r5, r1, r2
	ldr	r9, [r3]
	rsb	r5, r5, r5, lsl #4
	ldr	r3, [sp, #16]
	rsb	lr, r1, r1, lsl #4
	lsl	r5, r5, #4
	lsl	lr, lr, #4
	add	r8, r3, r5
	add	r4, r3, lr
	add	r8, r9, r8, lsl #1
	add	r4, r9, r4, lsl #1
.L72:
	mov	r3, r4
	add	r1, ip, r4
.L71:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L71
	add	r4, r4, #480
	cmp	r8, r4
	bne	.L72
	ldr	r3, [sp, #36]
	add	lr, lr, r3
	add	r4, r3, r5
	add	lr, r9, lr, lsl #1
	add	r4, r9, r4, lsl #1
.L74:
	mov	r3, lr
	add	r1, ip, lr
.L73:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L73
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L74
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #16]
	add	lr, r3, r2
	rsb	lr, lr, lr, lsl #4
	rsb	r3, r3, r3, lsl #4
	add	lr, r1, lr, lsl #4
	add	r3, r1, r3, lsl #4
	add	lr, r9, lr, lsl #1
	add	r9, r9, r3, lsl #1
.L76:
	mov	r3, r9
	add	r1, ip, r9
.L75:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L75
	add	r9, r9, #480
	cmp	lr, r9
	bne	.L76
.L70:
	ldr	r3, [sp, #20]
	cmp	r3, fp
	bge	.L77
	mov	r5, r3
	ldr	r3, [sp, #12]
	ldr	r1, .L182
	add	r3, r3, r2
	ldr	lr, [sp, #32]
	rsb	r3, r3, r3, lsl #4
	ldr	r1, [r1]
	add	r3, lr, r3, lsl #4
	sub	r8, r2, r2, lsl #4
	add	r4, r1, r3, lsl #1
	lsl	r8, r8, #5
.L81:
	cmp	r2, #0
	ble	.L78
	add	lr, r8, r4
.L80:
	mov	r3, lr
	add	r1, ip, lr
.L79:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L79
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L80
.L78:
	add	r5, r5, r2
	cmp	r5, fp
	add	r4, r4, ip
	blt	.L81
.L77:
	ldr	r3, [sp, #28]
	cmp	r3, fp
	bge	.L82
	mov	r5, r3
	ldr	r3, [sp, #44]
	add	r3, r3, r2
	rsb	lr, r3, r3, lsl #4
	ldr	r1, .L182
	ldr	r3, [sp, #4]
	ldr	r1, [r1]
	sub	r3, r3, ip
	add	r3, r3, lr, lsl #4
	sub	r8, r2, r2, lsl #4
	add	r4, r1, r3, lsl #1
	lsl	r8, r8, #5
.L86:
	cmp	r2, #0
	ble	.L83
	add	lr, r8, r4
.L85:
	mov	r3, lr
	add	r1, ip, lr
.L84:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L84
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L85
.L83:
	add	r5, r5, r2
	cmp	r5, fp
	add	r4, r4, ip
	blt	.L86
.L82:
	cmp	ip, fp
	bge	.L87
	mov	r5, ip
	ldr	r3, [sp, #56]
	ldr	r1, .L182
	add	r3, r3, r2
	ldr	lr, [sp, #16]
	rsb	r3, r3, r3, lsl #4
	ldr	r1, [r1]
	add	r3, lr, r3, lsl #4
	sub	r8, r2, r2, lsl #4
	add	r4, r1, r3, lsl #1
	lsl	r8, r8, #5
.L91:
	cmp	r2, #0
	ble	.L88
	add	lr, r8, r4
.L90:
	mov	r3, lr
	add	r1, ip, lr
.L89:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L89
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L90
.L88:
	add	r5, r5, r2
	cmp	r5, fp
	add	r4, r4, ip
	blt	.L91
.L87:
	ldr	r8, [sp, #24]
	cmp	r7, r8
	bge	.L92
	ldr	r3, [sp]
	ldr	lr, .L182
	add	r3, r3, r6
	ldr	r1, [sp, #4]
	add	r3, r3, r2
	rsb	r3, r3, r3, lsl #4
	sub	r1, r1, r7
	ldr	r4, [lr]
	add	r3, r1, r3, lsl #4
	sub	r5, r2, r2, lsl #4
	add	r4, r4, r3, lsl #1
	lsl	r5, r5, #5
.L96:
	cmp	r2, #0
	ble	.L93
	add	lr, r5, r4
.L95:
	mov	r3, lr
	add	r1, ip, lr
.L94:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L94
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L95
.L93:
	add	r7, r7, r2
	cmp	r7, r8
	add	r4, r4, ip
	blt	.L96
.L92:
	ldr	r3, [sp, #28]
	cmp	r10, r3
	ble	.L97
	ldr	r1, [sp, #60]
	ldr	r3, [sp]
	ldr	lr, .L182
	add	r3, r3, r1
	ldr	r1, [sp, #4]
	add	r3, r3, r2
	rsb	r3, r3, r3, lsl #4
	sub	r1, r1, ip
	ldr	r4, [lr]
	add	r3, r1, r3, lsl #4
	sub	r5, r2, r2, lsl #4
	ldr	r7, [sp, #64]
	add	r4, r4, r3, lsl #1
	lsl	r5, r5, #5
.L101:
	cmp	r2, #0
	ble	.L98
	add	lr, r5, r4
.L100:
	mov	r3, lr
	add	r1, ip, lr
.L99:
	strh	r0, [r3], #2	@ movhi
	cmp	r1, r3
	bne	.L99
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L100
.L98:
	cmp	r10, r7
	add	r4, r4, ip
	addgt	r7, r7, r2
	bgt	.L101
.L97:
	ldr	r7, [sp, #8]
	cmp	r7, r6
	ble	.L102
	ldr	r1, [sp, #20]
	ldr	r3, [sp]
	add	r3, r3, r1
	ldr	r1, .L182
	add	r3, r3, r2
	ldr	r4, [r1]
	ldr	r1, [sp, #36]
	rsb	r3, r3, r3, lsl #4
	add	r3, r1, r3, lsl #4
	sub	r5, r2, r2, lsl #4
	add	r4, r4, r3, lsl #1
	lsl	r5, r5, #5
.L106:
	cmp	r2, #0
	ble	.L103
	add	lr, r5, r4
.L105:
	mov	r3, lr
	add	r1, ip, lr
.L104:
	strh	r0, [r3], #2	@ movhi
	cmp	r3, r1
	bne	.L104
	add	lr, lr, #480
	cmp	r4, lr
	bne	.L105
.L103:
	add	r6, r6, r2
	cmp	r7, r6
	add	r4, r4, ip
	bgt	.L106
.L102:
	ldr	r3, [sp, #8]
	ldr	r1, [sp]
	cmp	r2, #0
	add	r3, r3, r1
	ble	.L15
	ldr	r1, .L182
	add	r2, r3, r2
	ldr	r4, [sp, #4]
	ldr	r1, [r1]
	rsb	r2, r2, r2, lsl #4
	rsb	r3, r3, r3, lsl #4
	add	lr, r4, r2, lsl #4
	add	r3, r4, r3, lsl #4
	add	lr, r1, lr, lsl #1
	add	r1, r1, r3, lsl #1
.L109:
	mov	r3, r1
	add	r2, r1, ip
.L108:
	strh	r0, [r3], #2	@ movhi
	cmp	r2, r3
	bne	.L108
	add	r1, r1, #480
	cmp	lr, r1
	bne	.L109
.L15:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L181:
	ldr	lr, [sp]
	add	r4, lr, r2
	b	.L16
.L183:
	.align	2
.L182:
	.word	.LANCHOR0
	.size	drawHeart, .-drawHeart
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
	ldr	r3, .L188
	ldr	r2, .L188+4
	ldr	r1, [r3]
	sub	r3, r1, #2
	add	r2, r1, r2
.L185:
	strh	r0, [r3, #2]!	@ movhi
	cmp	r3, r2
	bne	.L185
	bx	lr
.L189:
	.align	2
.L188:
	.word	.LANCHOR0
	.word	76798
	.size	fillScreen, .-fillScreen
	.align	2
	.global	delay
	.syntax unified
	.arm
	.fpu softvfp
	.type	delay, %function
delay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	rsb	r3, r0, r0, lsl #5
	add	r0, r0, r3, lsl #2
	lsl	r0, r0, #3
	sub	sp, sp, #8
	cmp	r0, r2
	str	r2, [sp, #4]
	ble	.L190
.L192:
	ldr	r3, [sp, #4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r2, r0
	str	r3, [sp, #4]
	bne	.L192
.L190:
	add	sp, sp, #8
	@ sp needed
	bx	lr
	.size	delay, .-delay
	.global	videoBuffer
	.data
	.align	2
	.set	.LANCHOR0,. + 0
	.type	videoBuffer, %object
	.size	videoBuffer, 4
videoBuffer:
	.word	100663296
	.ident	"GCC: (devkitARM release 47) 7.1.0"
