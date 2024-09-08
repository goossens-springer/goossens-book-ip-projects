       .globl  main
main:
       mv      t0,ra
here0:
       auipc   a0,0
here1:
       auipc   a1,0
       li      a2,0
       li      a4,0
       j       .L1
.L1:
       addi    a2,a2,1
       jal     f
       li      a3,3
       jalr    52(a1)
       jr      44(a0)
       addi    a4,a4,1
there:
       addi    a4,a4,1
       mv      ra,t0
       ret
f:
       addi    a2,a2,1
       ret
