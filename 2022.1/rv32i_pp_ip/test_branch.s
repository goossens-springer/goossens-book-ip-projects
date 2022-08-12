       .globl  main
main:
       li      a0,-8
       li      a1,5
       beq     a0,a1,.L1
       li      a2,1
.L1:
       bne     a0,a1,.L2
       li      a2,2
.L2:
       blt     a0,a1,.L3
       li      a3,1
.L3:
       bge     a0,a1,.L4
       li      a3,2
.L4:
       bltu    a0,a1,.L5
       li      a4,1
.L5:
       bgeu    a0,a1,.L6
       li      a4,2
.L6:
       ret
