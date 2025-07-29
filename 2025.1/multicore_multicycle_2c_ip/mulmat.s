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
	addi	sp,sp,-2032
	sw	s0,2028(sp)
	sw	s1,2024(sp)
	sw	s2,2020(sp)
	sw	s3,2016(sp)
	sw	s4,2012(sp)
	sw	s5,2008(sp)
	sw	s6,2004(sp)
	sw	s7,2000(sp)
	sw	s8,1996(sp)
	sw	s9,1992(sp)
	sw	s10,1988(sp)
	li	t0,-24576
	addi	t0,t0,1984
	add	sp,sp,t0
	li	a4,-12288
	li	a5,24576
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
	li	a2,24576
	add	a2,a2,sp
	bne	a5,a2,.L3
	lui	t1,%hi(ip_data_ram+21504)
	addi	t1,t1,%lo(ip_data_ram+21504)
	lui	t5,%hi(ip_data_ram)
	addi	t5,t5,%lo(ip_data_ram)
	li	a5,20480
	addi	a5,a5,1216
	add	t5,t5,a5
	li	t0,-8192
	addi	t0,t0,-1024
	li	t6,-20480
	addi	t6,t6,-1024
	li	s2,96
	li	a5,24576
	add	a5,a5,t6
	add	t4,a5,sp
	li	a5,4096
	addi	s4,a5,512
	add	s7,t4,s4
	li	s1,57344
	addi	s1,s1,-1024
	li	a4,8192
	addi	s3,a4,1024
	add	s6,t4,s3
	li	s5,-12288
	li	s0,-24576
	addi	a4,a4,1120
	add	t3,t4,a4
	li	a4,24576
	add	a4,a4,s0
	add	t2,a4,sp
	addi	a5,a5,-1024
	add	t2,t2,a5
	j	.L17
.L31:
	add	a2,a2,a4
.L9:
	srai	a5,a5,1
	slli	a4,a4,1
	beq	a5,zero,.L30
.L10:
	andi	a3,a5,1
	beq	a3,zero,.L9
	j	.L31
.L30:
	add	a6,a6,a2
	addi	a0,a0,4
	addi	a1,a1,96
	beq	a1,a7,.L32
.L11:
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a2,0
	j	.L10
.L32:
	sw	a6,0(s10)
	addi	s10,s10,4
	addi	a7,a7,4
	beq	a7,t3,.L12
.L14:
	add	a1,a7,t0
	mv	a0,s8
	li	a6,0
	j	.L11
.L12:
	addi	s8,s8,384
	addi	s9,s9,96
	li	a5,24576
	add	a5,a5,sp
	beq	s8,a5,.L13
.L8:
	add	a7,t4,s3
	mv	s10,s9
	j	.L14
.L13:
	mv	a3,t1
	li	a5,24576
	add	a5,a5,s0
	add	a4,a5,sp
	mv	a5,a4
.L16:
	addi	a4,a4,96
	mv	a2,a3
.L15:
	lw	a1,0(a5)
	sw	a1,0(a2)
	addi	a5,a5,4
	addi	a2,a2,4
	bne	a4,a5,.L15
	addi	a5,a4,-96
	add	a5,a5,s2
	addi	a3,a3,192
	bne	a5,t2,.L16
	addi	t1,t1,96
	beq	t1,t5,.L33
.L17:
	add	a3,t1,t0
	li	a5,24576
	add	a5,a5,t6
	add	a4,a5,sp
	mv	a5,a4
.L5:
	addi	a4,a4,96
	mv	a2,a3
.L4:
	lw	a1,0(a2)
	sw	a1,0(a5)
	addi	a5,a5,4
	addi	a2,a2,4
	bne	a4,a5,.L4
	addi	a5,a4,-96
	add	a5,a5,s2
	addi	a3,a3,192
	bne	a5,s7,.L5
	add	a3,t1,s1
	add	a4,t4,s4
	mv	a5,a4
.L7:
	addi	a4,a4,96
	mv	a2,a3
.L6:
	lw	a1,0(a2)
	sw	a1,0(a5)
	addi	a5,a5,4
	addi	a2,a2,4
	bne	a4,a5,.L6
	addi	a5,a4,-96
	add	a5,a5,s2
	addi	a3,a3,192
	bne	a5,s6,.L7
	li	a5,24576
	add	a5,a5,s5
	add	s8,a5,sp
	li	a5,24576
	add	a5,a5,s0
	add	s9,a5,sp
	j	.L8
.L33:
	li	t0,24576
	addi	t0,t0,-1984
	add	sp,sp,t0
	lw	s0,2028(sp)
	lw	s1,2024(sp)
	lw	s2,2020(sp)
	lw	s3,2016(sp)
	lw	s4,2012(sp)
	lw	s5,2008(sp)
	lw	s6,2004(sp)
	lw	s7,2000(sp)
	lw	s8,1996(sp)
	lw	s9,1992(sp)
	lw	s10,1988(sp)
	addi	sp,sp,2032
	jr	ra
	.size	main, .-main
	.globl	ip_data_ram
	.bss
	.align	2
	.type	ip_data_ram, @object
	.size	ip_data_ram, 65536
ip_data_ram:
	.zero	65536
	.ident	"GCC: () 11.1.0"
