#ifndef __PRINT
#define __PRINT
#ifndef __SYNTHESIS__
#include "simple_pipeline_ip.h"
//register names are printed as x0, x1, x2 ...
//to print symbolic register names (zero, ra, sp ...)
//uncomment next line
#define SYMB_REG
void print_reg_name(reg_num_t r);
void print_op(func3_t func3, func7_t func7);
void print_op_imm(func3_t func3, func7_t func7);
void print_msize(func3_t func3);
void print_branch(func3_t func3);
void print_reg(int *reg_file);
#endif
#endif
