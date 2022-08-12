#include "../../my_env/p/my_riscv_test.h"
        .text
        .globl   _start
        .equ     result_zone,0x2000
_start:
        lui      a0,%hi(result_zone)
        addi     a0,a0,%lo(result_zone)
        addi     a1,a0,4
        sw       a1,0(a0)
        INIT_XREG
#define TEST(n)                            \
        .global  n;                        \
        jal      zero,n;                   \
        .global  n ## _ret;                \
n ## _ret:
        TEST(addi  )
        TEST(add   )
        TEST(andi  )
        TEST(and   )
        TEST(auipc )
        TEST(beq   )
        TEST(bge   )
        TEST(bgeu  )
        TEST(blt   )
        TEST(bltu  )
        TEST(bne   )
        TEST(jalr  )
        TEST(jal   )
        TEST(lb    )
        TEST(lbu   )
        TEST(lh    )
        TEST(lhu   )
        TEST(lui   )
        TEST(lw    )
        TEST(ori   )
        TEST(or    )
        TEST(sb    )
        TEST(sh    )
        TEST(simple)
        TEST(slli  )
        TEST(sll   )
        TEST(slti  )
        TEST(sltiu )
        TEST(slt   )
        TEST(sltu  )
        TEST(srai  )
        TEST(sra   )
        TEST(srli  )
        TEST(srl   )
        TEST(sub   )
        TEST(sw    )
        TEST(xori  )
        TEST(xor   )
        li       ra,0
        ret
