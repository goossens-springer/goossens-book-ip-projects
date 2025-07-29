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
	li	t0,-8192
	addi	t0,t0,-1344
	add	sp,sp,t0
	li	a4,-4096
	addi	a4,a4,-2048
	li	a5,12288
	addi	a5,a5,-768
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
	li	a2,12288
	addi	a2,a2,-768
	add	a2,a2,sp
	bne	a5,a2,.L3
	lui	t5,%hi(ip_data_ram+10752)
	addi	t5,t5,%lo(ip_data_ram+10752)
	li	s1,0
	li	t1,-12288
	addi	t6,t1,1536
	li	a3,12288
	addi	a5,a3,-768
	add	a5,a5,t6
	add	t6,a5,sp
	li	a5,-4096
	addi	s2,a5,-512
	li	a4,4096
	addi	t0,a4,512
	add	t0,t6,t0
	li	s0,48
	li	s3,32768
	addi	t1,t1,768
	addi	a4,a4,560
	add	t4,t6,a4
	addi	a5,a5,-2048
	addi	a4,a3,-768
	add	a4,a4,a5
	add	t3,a4,sp
	addi	a5,a3,-768
	add	a5,a5,t1
	add	t2,a5,sp
	addi	t2,t2,768
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
	addi	a1,a1,48
	beq	a1,a7,.L30
.L10:
	lw	a4,0(a0)
	lw	a5,0(a1)
	li	a2,0
	j	.L9
.L30:
	sw	a6,0(s6)
	addi	s6,s6,4
	addi	a7,a7,4
	beq	a7,t4,.L11
.L13:
	add	a1,a7,s2
	mv	a0,s8
	li	a6,0
	j	.L10
.L11:
	addi	s5,s5,1
	addi	s4,s4,48
	beq	s4,s7,.L12
.L7:
	slli	a5,s5,1
	add	a5,a5,s5
	slli	a5,a5,7
	add	s8,a5,t3
	mv	a7,t0
	mv	s6,s4
	j	.L13
.L12:
	mv	a3,t5
	li	a5,12288
	addi	a5,a5,-768
	add	a5,a5,t1
	add	a4,a5,sp
	mv	a5,a4
.L15:
	addi	a4,a4,48
	mv	a2,a3
.L14:
	lw	a1,0(a5)
	sw	a1,0(a2)
	addi	a5,a5,4
	addi	a2,a2,4
	bne	a4,a5,.L14
	addi	a5,a4,-48
	add	a5,a5,s0
	addi	a3,a3,192
	bne	a5,t2,.L15
	addi	t5,t5,48
	addi	s1,s1,12
	beq	s1,s0,.L31
.L16:
	add	a1,t5,s2
	mv	a4,t6
.L6:
	mv	a5,a4
	mv	a0,a1
	mv	a2,a4
	addi	a4,a4,1152
.L5:
	addi	a2,a2,48
	mv	a3,a0
.L4:
	lw	a6,0(a3)
	sw	a6,0(a5)
	addi	a5,a5,4
	addi	a3,a3,4
	bne	a2,a5,.L4
	addi	a5,a2,-48
	add	a5,a5,s0
	addi	a0,a0,192
	bne	a5,a4,.L5
	add	a1,a1,s3
	bne	t0,a4,.L6
	li	a5,12288
	addi	a5,a5,-768
	add	a5,a5,t1
	add	s4,a5,sp
	addi	s7,s4,768
	li	s5,0
	j	.L7
.L31:
	li	t0,8192
	addi	t0,t0,1344
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
	addi	sp,sp,2032
	jr	ra
	.size	main, .-main
	.globl	ip_data_ram
	.bss
	.align	2
	.type	ip_data_ram, @object
	.size	ip_data_ram, 32768
ip_data_ram:
	.zero	32768
	.ident	"GCC: () 11.1.0"
