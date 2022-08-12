       .globl  main
main:
       lui     a1,0x1
       auipc   a2,0x1
       sub     a2,a2,a1
       addi    a2,a2,20
       jr      a2
       li      a1,3
.L1:
       li      a3,100
       ret
