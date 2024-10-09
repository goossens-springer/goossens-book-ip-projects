       .equ    LOG_NB_IP,1
       .equ    LOG_NB_HART,2
       .equ    LOG_DATA_RAM_SIZE,(16+2)
       .equ    NB_HART,(1<<LOG_NB_HART)
       .equ    LOG_IP_DATA_RAM_SIZE,(LOG_DATA_RAM_SIZE-LOG_NB_IP)
       .equ    LOG_HART_DATA_RAM_SIZE,(LOG_IP_DATA_RAM_SIZE-LOG_NB_HART)
       .equ    HART_DATA_RAM_SIZE,(1<<LOG_HART_DATA_RAM_SIZE)
       .globl  other_hart_start
       .globl  main
main:
       li      a0,0
       li      a1,0
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
       li      a2,40
       sw      a0,0(a2)
       li      a1,1
       li      a2,NB_HART
       slli    a2,a2,LOG_NB_IP
       li      a4,HART_DATA_RAM_SIZE
       mv      a5,a4
.L3:   lw      a3,40(a4)
       beq     a3,zero,.L3
       add     a0,a0,a3
       add     a4,a4,a5
       addi    a1,a1,1
       bne     a1,a2,.L3
       li      a2,44
       sw      a0,0(a2)
       ret
other_hart_start:
       slli    t0,a1,3
       slli    t1,a1,1
       add     a1,t0,t1
       slli    t0,a0,3
       slli    t1,a0,1
       add     a2,t0,t1
       slli    a2,a2,LOG_NB_HART
       li      a0,0
       add     a1,a1,a2
       li      a2,0
       addi    a3,a2,40
.L4:
       addi    a1,a1,1
       sw      a1,0(a2)
       addi    a2,a2,4
       bne     a2,a3,.L4
       li      a1,0
       li      a2,0
.L5:
       lw      a4,0(a2)
       addi    a2,a2,4
       add     a0,a0,a4
       bne     a2,a3,.L5
       li      a2,40
       sw      a0,0(a2)
       ret
