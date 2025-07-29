	.file	"mulmat.c"
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
	addi	sp,sp,-1520
	sw	s0,1516(sp)
	sw	s1,1512(sp)
	sw	s2,1508(sp)
	sw	s3,1504(sp)
	sw	s4,1500(sp)
	sw	s5,1496(sp)
	sw	s6,1492(sp)
	sw	s7,1488(sp)
	sw	s8,1484(sp)
	sw	s9,1480(sp)
	sw	s10,1476(sp)
	li	t0,-4096
	add	sp,sp,t0
	li	a4,-4096
	addi	a4,a4,1024
	li	a5,4096
	addi	a5,a5,1472
	add	a5,a5,a4
	add	a4,a5,sp
	lui	a3,%hi(ip_data_ram)
	addi	a3,a3,%lo(ip_data_ram)
	mv	a5,a4
	li	a1,384
.L3:
	addi	a4,a4,384
	mv	a2,a3
.L2:
	lw	a0,0(a2)
	sw	a0,0(a5)
	addi	a5,a5,4
	addi	a2,a2,4
	bne	a4,a5,.L2
	addi	a5,a4,-384
	add	a5,a5,a1
	addi	a3,a3,384
	li	a2,4096
	addi	a2,a2,1472
	add	a2,a2,sp
	bne	a5,a2,.L3
	lui	t5,%hi(ip_data_ram+5376)
	addi	t5,t5,%lo(ip_data_ram+5376)
	li	s0,0
	li	a5,-4096
	addi	t4,a5,-1280
	li	a3,4096
	addi	a4,a3,1472
	add	a4,a4,t4
	add	t4,a4,sp
	addi	s2,a5,1792
	li	a4,4096
	addi	t2,a4,-1504
	add	t2,t4,t2
	li	s1,24
	li	s6,16384
	addi	t0,a5,-1472
	addi	s5,a4,-1792
	addi	a4,a4,-1768
	add	t3,t4,a4
	addi	a5,a5,1024
	addi	a4,a3,1472
	add	a4,a4,a5
	add	t1,a4,sp
	li	s4,8
	addi	a5,a3,1472
	add	a5,a5,t0
	add	t6,a5,sp
	addi	t6,t6,192
	li	s3,48
	j	.L16
.L29:
	add	a2,a2,a4
.L8:
	srai	a5,a5,1
	slli	a4,a4,1
	beq	a5,zero,.L28
.L9:
	andi	a3,a5,1
	beq	a3,zero,.L8
	j	.L29
.L28:
	add	a6,a6,a2
	addi	a0,a0,4
	addi	a1,a1,24
	beq	a1,a7,.L30
.L10:
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a2,0
	j	.L9
.L30:
	sw	a6,0(s9)
	addi	s9,s9,4
	addi	a7,a7,4
	beq	a7,t3,.L11
.L13:
	add	a1,a7,s2
	mv	a0,s10
	li	a6,0
	j	.L10
.L11:
	addi	s7,s7,1
	addi	s8,s8,24
	beq	s7,s4,.L12
.L7:
	add	a7,t4,s5
	slli	a5,s7,1
	add	a5,a5,s7
	slli	a5,a5,7
	add	s10,a5,t1
	mv	s9,s8
	j	.L13
.L12:
	mv	a2,t5
	li	a5,4096
	addi	a5,a5,1472
	add	a5,a5,t0
	add	a4,a5,sp
	mv	a5,a4
.L15:
	addi	a4,a4,24
	mv	a3,a2
.L14:
	lw	a1,0(a5)
	sw	a1,0(a3)
	addi	a5,a5,4
	addi	a3,a3,4
	bne	a4,a5,.L14
	addi	a5,a4,-24
	add	a5,a5,s1
	addi	a2,a2,192
	bne	a5,t6,.L15
	addi	t5,t5,24
	addi	s0,s0,6
	beq	s0,s3,.L31
.L16:
	addi	a1,t4,288
	add	a0,t5,s2
.L6:
	addi	a5,a1,-288
	mv	a6,a0
	mv	a2,a5
.L5:
	addi	a2,a2,24
	mv	a4,a6
.L4:
	lw	a3,0(a4)
	sw	a3,0(a5)
	addi	a5,a5,4
	addi	a4,a4,4
	bne	a2,a5,.L4
	addi	a5,a2,-24
	add	a5,a5,s1
	addi	a6,a6,192
	bne	a5,a1,.L5
	addi	a1,a1,288
	add	a0,a0,s6
	bne	a1,t2,.L6
	li	a5,4096
	addi	a5,a5,1472
	add	a5,a5,t0
	add	s8,a5,sp
	li	s7,0
	j	.L7
.L31:
	li	t0,4096
	add	sp,sp,t0
	lw	s0,1516(sp)
	lw	s1,1512(sp)
	lw	s2,1508(sp)
	lw	s3,1504(sp)
	lw	s4,1500(sp)
	lw	s5,1496(sp)
	lw	s6,1492(sp)
	lw	s7,1488(sp)
	lw	s8,1484(sp)
	lw	s9,1480(sp)
	lw	s10,1476(sp)
	addi	sp,sp,1520
	jr	ra
	.size	main, .-main
	.globl	ip_data_ram
	.bss
	.align	2
	.type	ip_data_ram, @object
	.size	ip_data_ram, 16384
ip_data_ram:
	.zero	16384
	.ident	"GCC: () 11.1.0"
