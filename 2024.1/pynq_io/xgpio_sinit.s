	.file	"xgpio_sinit.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	XGpio_LookupConfig
	.type	XGpio_LookupConfig, @function
XGpio_LookupConfig:
	lui	a4,%hi(XGpio_ConfigTable)
	addi	a3,a4,%lo(XGpio_ConfigTable)
	lhu	a2,0(a3)
	mv	a5,a0
	beq	a2,a0,.L4
	lhu	a4,16(a3)
	li	a0,0
	beq	a4,a5,.L7
	ret
.L7:
	lui	a4,%hi(XGpio_ConfigTable+16)
	addi	a0,a4,%lo(XGpio_ConfigTable+16)
	ret
.L4:
	addi	a0,a4,%lo(XGpio_ConfigTable)
	ret
	.size	XGpio_LookupConfig, .-XGpio_LookupConfig
	.align	2
	.globl	XGpio_Initialize
	.type	XGpio_Initialize, @function
XGpio_Initialize:
	lui	a4,%hi(XGpio_ConfigTable)
	addi	a5,a4,%lo(XGpio_ConfigTable)
	lhu	a3,0(a5)
	beq	a3,a1,.L11
	lhu	a4,16(a5)
	beq	a4,a1,.L12
	sw	zero,4(a0)
	li	a0,2
	ret
.L11:
	addi	a1,a4,%lo(XGpio_ConfigTable)
	li	a4,0
.L9:
	slli	a4,a4,4
	add	a5,a5,a4
	lw	a2,4(a5)
	tail	XGpio_CfgInitialize
.L12:
	lui	a4,%hi(XGpio_ConfigTable+16)
	addi	a1,a4,%lo(XGpio_ConfigTable+16)
	li	a4,1
	j	.L9
	.size	XGpio_Initialize, .-XGpio_Initialize
	.ident	"GCC: () 14.2.0"
	.section	.note.GNU-stack,"",@progbits
