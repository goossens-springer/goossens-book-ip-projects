       .globl  main
main:
       li      a0,13
       li      a4,12
       li      a1,7
       li      t0,28
       li      t6,-10
       li      s2,2022
       add     a2,a1,zero
       and     a3,a2,a0
       or      a5,a3,a4
       xor     a6,a5,t0
       sub     a6,a6,a1
       sltu    a7,a6,a0
       sll     t1,a6,t0
       slt     t2,t1,t6
       sltu    t3,t1,s2
       srl     t4,t1,t0
       sra     t5,t1,t0
       ret
