	.file	"xgpio.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	XGpio_CfgInitialize
	.type	XGpio_CfgInitialize, @function
XGpio_CfgInitialize:
	sw	a2,0(a0)
	lw	a5,12(a1)
	lw	a4,8(a1)
	sw	a5,12(a0)
	li	a5,286330880
	addi	a5,a5,273
	sw	a4,8(a0)
	sw	a5,4(a0)
	li	a0,0
	ret
	.size	XGpio_CfgInitialize, .-XGpio_CfgInitialize
	.align	2
	.globl	XGpio_SetDataDirection
	.type	XGpio_SetDataDirection, @function
XGpio_SetDataDirection:
	lw	a5,0(a0)
	addi	a1,a1,-1
	slli	a1,a1,3
	add	a1,a1,a5
	sw	a2,4(a1)
	ret
	.size	XGpio_SetDataDirection, .-XGpio_SetDataDirection
	.align	2
	.globl	XGpio_GetDataDirection
	.type	XGpio_GetDataDirection, @function
XGpio_GetDataDirection:
	lw	a5,0(a0)
	addi	a1,a1,-1
	slli	a1,a1,3
	add	a1,a1,a5
	lw	a0,4(a1)
	ret
	.size	XGpio_GetDataDirection, .-XGpio_GetDataDirection
	.align	2
	.globl	XGpio_DiscreteRead
	.type	XGpio_DiscreteRead, @function
XGpio_DiscreteRead:
	lw	a5,0(a0)
	addi	a1,a1,-1
	slli	a1,a1,3
	add	a1,a1,a5
	lw	a0,0(a1)
	ret
	.size	XGpio_DiscreteRead, .-XGpio_DiscreteRead
	.align	2
	.globl	XGpio_DiscreteWrite
	.type	XGpio_DiscreteWrite, @function
XGpio_DiscreteWrite:
	lw	a5,0(a0)
	addi	a1,a1,-1
	slli	a1,a1,3
	add	a1,a1,a5
	sw	a2,0(a1)
	ret
	.size	XGpio_DiscreteWrite, .-XGpio_DiscreteWrite
	.ident	"GCC: () 11.1.0"
