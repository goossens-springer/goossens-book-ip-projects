       .globl  main
main:
       li      a1,5
       addi    a2,a1,1
       andi    a3,a2,12
       addi    a4,a3,-1
       ori     a5,a4,5
       xori    a6,a5,12
       sltiu   a7,a6,13
       sltiu   t0,a6,11
       slli    t1,a6,0x1c
       slti    t2,t1,-10
       sltiu   t3,t1,2022
       srli    t4,t1,0x1c
       srai    t5,t1,0x1c
       ret
