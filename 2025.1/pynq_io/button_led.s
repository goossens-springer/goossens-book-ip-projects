	.file	"button_led.c"
	.option nopic
	.attribute arch, "rv32i2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.text.main,"ax",@progbits
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	li	a0,1
	sw	ra,44(sp)
	call	XGpio_LookupConfig
	lw	a2,4(a0)
	mv	a1,a0
	mv	a0,sp
	call	XGpio_CfgInitialize
	li	a0,0
	call	XGpio_LookupConfig
	lw	a2,4(a0)
	mv	a1,a0
	addi	a0,sp,16
	call	XGpio_CfgInitialize
	li	a2,15
	li	a1,1
	addi	a0,sp,16
	call	XGpio_SetDataDirection
	li	a2,0
	li	a1,1
	mv	a0,sp
	call	XGpio_SetDataDirection
.L2:
	li	a1,1
	addi	a0,sp,16
	call	XGpio_DiscreteRead
	mv	a2,a0
	li	a1,1
	mv	a0,sp
	call	XGpio_DiscreteWrite
	j	.L2
	.size	main, .-main
	.ident	"GCC: () 11.1.0"
