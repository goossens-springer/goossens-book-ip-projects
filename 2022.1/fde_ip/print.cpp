#include "debug_fde_ip.h"
#ifndef __SYNTHESIS__
#include <stdio.h>
#include "fde_ip.h"
#include "immediate.h"
#include "print.h" //for SYMB_REG

static void print_type(type_t type){
  switch(type){
    case UNDEFINED_TYPE:
      printf("UNDEFINED_TYPE");
      break;
    case R_TYPE:
      printf("R_TYPE");
      break;
    case I_TYPE:
      printf("I_TYPE");
      break;
    case S_TYPE:
      printf("S_TYPE");
      break;
    case B_TYPE:
      printf("B_TYPE");
      break;
    case U_TYPE:
      printf("U_TYPE");
      break;
    case J_TYPE:
      printf("J_TYPE");
      break;
    case OTHER_TYPE:
      printf("OTHER_TYPE");
      break;
  }
}
void print_reg_name(reg_num_t r){
#ifdef SYMB_REG
  switch(r){
    case  0: printf("zero"); break;
    case  1: printf("ra");   break;
    case  2: printf("sp");   break;
    case  3: printf("gp");   break;
    case  4: printf("tp");   break;
    case  5: printf("t0");   break;
    case  6: printf("t1");   break;
    case  7: printf("t2");   break;
    case  8: printf("s0");   break;
    case  9: printf("s1");   break;
    case 10: printf("a0");   break;
    case 11: printf("a1");   break;
    case 12: printf("a2");   break;
    case 13: printf("a3");   break;
    case 14: printf("a4");   break;
    case 15: printf("a5");   break;
    case 16: printf("a6");   break;
    case 17: printf("a7");   break;
    case 18: printf("s2");   break;
    case 19: printf("s3");   break;
    case 20: printf("s4");   break;
    case 21: printf("s5");   break;
    case 22: printf("s6");   break;
    case 23: printf("s7");   break;
    case 24: printf("s8");   break;
    case 25: printf("s9");   break;
    case 26: printf("s10");  break;
    case 27: printf("s11");  break;
    case 28: printf("t3");   break;
    case 29: printf("t4");   break;
    case 30: printf("t5");   break;
    case 31: printf("t6");   break;
  }
#else
  switch(r){
    case  0: printf("x0");  break;
    case  1: printf("x1");  break;
    case  2: printf("x2");  break;
    case  3: printf("x3");  break;
    case  4: printf("x4");  break;
    case  5: printf("x5");  break;
    case  6: printf("x6");  break;
    case  7: printf("x7");  break;
    case  8: printf("x8");  break;
    case  9: printf("x9");  break;
    case 10: printf("x10"); break;
    case 11: printf("x11"); break;
    case 12: printf("x12"); break;
    case 13: printf("x13"); break;
    case 14: printf("x14"); break;
    case 15: printf("x15"); break;
    case 16: printf("x16"); break;
    case 17: printf("x17"); break;
    case 18: printf("x18"); break;
    case 19: printf("x19"); break;
    case 20: printf("x20"); break;
    case 21: printf("x21"); break;
    case 22: printf("x22"); break;
    case 23: printf("x23"); break;
    case 24: printf("x24"); break;
    case 25: printf("x25"); break;
    case 26: printf("x26"); break;
    case 27: printf("x27"); break;
    case 28: printf("x28"); break;
    case 29: printf("x29"); break;
    case 30: printf("x30"); break;
    case 31: printf("x31"); break;
  }
#endif
}
void print_op(func3_t func3, func7_t func7){
  bit_t f7_6 = (func7)>>5;
  switch(func3){
    case ADD : if (f7_6) printf("sub");
               else printf("add");
               break;
    case SLL : printf("sll");
               break;
    case SLT : printf("slt");
               break;
    case SLTU: printf("sltu");
               break;
    case XOR : printf("xor");
               break;
    case SRL : if (f7_6) printf("sra");
               else printf("srl");
               break;
    case OR  : printf("or");
               break;
    case AND : printf("and");
               break;
  }
}
void print_op_imm(func3_t func3, func7_t func7){
  bit_t f7_6 = func7>>5;
  switch(func3){
    case ADDI : printf("addi");
                break;
    case SLLI : printf("slli");
                break;
    case SLTI : printf("slti");
                break;
    case SLTIU: printf("sltiu");
                break;
    case XORI : printf("xori");
                break;
    case SRLI : if (f7_6) printf("srai");
                else printf("srli");
                break;
    case ORI  : printf("ori");
                break;
    case ANDI : printf("andi");
                break;
  }
}
void print_msize(func3_t func3){
  switch(func3){
    case 0: printf("b"); break;
    case 1: printf("h"); break;
    case 2: printf("w"); break;
    case 3: break;
    case 4: printf("bu"); break;
    case 5: printf("hu"); break;
    case 6:
    case 7: break;
  }
}
void print_branch(func3_t func3){
  switch(func3){
    case BEQ : printf("beq");  break;
    case BNE : printf("bne");  break;
    case    2:
    case    3:                 break;
    case BLT : printf("blt");  break;
    case BGE : printf("bge");  break;
    case BLTU: printf("bltu"); break;
    case BGEU: printf("bgeu"); break;
  }
}
void print_reg(int *reg_file){
  unsigned int i;
  for (i=1; i<NB_REGISTER; i++){
    print_reg_name(i);
    printf(" ");
#ifdef SYMB_REG
    if (i!=26 && i!=27) printf(" ");
#else
    if (i<10) printf(" ");
#endif
    printf("= %16d (%8x)\n", reg_file[i],
               (unsigned int)reg_file[i]);
  }
}
#endif
