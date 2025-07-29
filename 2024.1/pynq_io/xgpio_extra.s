	.file	"xgpio_extra.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.globl	XGpio_DiscreteSet
	.type	XGpio_DiscreteSet, @function
XGpio_DiscreteSet:
	lw	a5,0(a0)
	slli	a1,a1,3
	add	a1,a1,a5
	lw	a5,-8(a1)
	or	a2,a2,a5
	sw	a2,-8(a1)
	ret
	.size	XGpio_DiscreteSet, .-XGpio_DiscreteSet
	.align	2
	.globl	XGpio_DiscreteClear
	.type	XGpio_DiscreteClear, @function
XGpio_DiscreteClear:
	lw	a5,0(a0)
	slli	a1,a1,3
	not	a2,a2
	add	a1,a1,a5
	lw	a5,-8(a1)
	and	a2,a2,a5
	sw	a2,-8(a1)
	ret
	.size	XGpio_DiscreteClear, .-XGpio_DiscreteClear
	.ident	"GCC: () 14.2.0"
	.section	.note.GNU-stack,"",@progbits
