       .globl  main
main:
       slli    t0,a0,3
       slli    t1,a0,1
       li      a0,0
       add     a1,t0,t1
       li      a2,0
       addi    a3,a2,40
.L1:
       addi    a1,a1,1
       sw      a1,0(a2)
       addi    a2,a2,4
       bne     a2,a3,.L1
       li      a1,0
       li      a2,0
.L2:
       lw      a4,0(a2)
       addi    a2,a2,4
       add     a0,a0,a4
       bne     a2,a3,.L2
       sw      a0,0(a2)
       ret
