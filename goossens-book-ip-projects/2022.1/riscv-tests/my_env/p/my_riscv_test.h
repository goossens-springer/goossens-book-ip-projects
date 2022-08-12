// See LICENSE for license details.
#ifndef _ENV_PHYSICAL_SINGLE_CORE_H
#define _ENV_PHYSICAL_SINGLE_CORE_H
#define RVTEST_RV32U
#define RVTEST_RV64U
#define TESTNUM gp
#define INIT_XREG                                             \
        .text;                                                \
        li x1, 0;                                             \
        li x2, 0;                                             \
        li x3, 0;                                             \
        li x4, 0;                                             \
        li x5, 0;                                             \
        li x6, 0;                                             \
        li x7, 0;                                             \
        li x8, 0;                                             \
        li x9, 0;                                             \
        li x10, 0;                                            \
        li x11, 0;                                            \
        li x12, 0;                                            \
        li x13, 0;                                            \
        li x14, 0;                                            \
        li x15, 0;                                            \
        li x16, 0;                                            \
        li x17, 0;                                            \
        li x18, 0;                                            \
        li x19, 0;                                            \
        li x20, 0;                                            \
        li x21, 0;                                            \
        li x22, 0;                                            \
        li x23, 0;                                            \
        li x24, 0;                                            \
        li x25, 0;                                            \
        li x26, 0;                                            \
        li x27, 0;                                            \
        li x28, 0;                                            \
        li x29, 0;                                            \
        li x30, 0;                                            \
        li x31, 0;
#define RVTEST_CODE_BEGIN                                     \
        .text;                                                \
        .global  TEST_FUNC_NAME;                              \
        .global  TEST_FUNC_RET;	                              \
TEST_FUNC_NAME:
#define RVTEST_CODE_END
#define RVTEST_PASS                                           \
        .equ     result_zone,0x2000;                          \
        .text;                                                \
        li       a0,0;                                        \
        lui      t0,%hi(result_zone);                         \
        addi     t0,t0,%lo(result_zone);                      \
        lw       t1,0(t0);                                    \
        sw       a0,0(t1);                                    \
        addi     t1,t1,4;                                     \
        sw       t1,0(t0);                                    \
        jal      zero,TEST_FUNC_RET;
#define RVTEST_FAIL                                           \
        .text;                                                \
        mv       a0,TESTNUM;                                  \
        lui      t0,%hi(result_zone);                         \
        addi     t0,t0,%lo(result_zone);                      \
        lw       t1,0(t0);                                    \
        sw       a0,0(t1);                                    \
        addi     t1,t1,4;                                     \
        sw       t1,0(t0);                                    \
        jal      zero,TEST_FUNC_RET;
#define RVTEST_DATA_BEGIN                                     \
        .data;                                                \
        .align   4;
#define RVTEST_DATA_END                                       \
        .data;                                                \
        .align   4;
#endif
