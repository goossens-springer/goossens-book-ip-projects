	.file	"xgpio_g.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	XGpio_ConfigTable
	.data
	.align	2
	.type	XGpio_ConfigTable, @object
	.size	XGpio_ConfigTable, 32
XGpio_ConfigTable:
	.half	0
	.zero	2
	.word	1073872896
	.word	0
	.word	0
	.half	1
	.zero	2
	.word	1073938432
	.word	0
	.word	0
	.ident	"GCC: () 11.1.0"
