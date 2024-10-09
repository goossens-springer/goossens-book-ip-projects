       .globl  main
main:
       li      a0,0
       li      a1,0
       li      a2,10
.L1:
       addi    a1,a1,1
       add     a0,a0,a1
       bne     a1,a2,.L1
       ret
