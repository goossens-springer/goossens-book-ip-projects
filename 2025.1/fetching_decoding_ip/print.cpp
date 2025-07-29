#ifndef __SYNTHESIS__
#include <stdio.h>
#include "fetching_decoding_ip.h"
void print_type(type_t type){
  switch(type){
    case UNDEFINED_TYPE:
      printf("UNDEFINED_TYPE"); break;
    case R_TYPE:
      printf("R_TYPE");         break;
    case I_TYPE:
      printf("I_TYPE");         break;
    case S_TYPE:
      printf("S_TYPE");         break;
    case B_TYPE:
      printf("B_TYPE");         break;
    case U_TYPE:
      printf("U_TYPE");         break;
    case J_TYPE:
      printf("J_TYPE");         break;
    case OTHER_TYPE:
      printf("OTHER_TYPE");     break;
  }
}
void print_decode(decoded_instruction_t d_i){
  printf("opcode:     %2x\n",  (unsigned int)d_i.opcode);
  printf("rd:         %2x\n",  (unsigned int)d_i.rd);
  printf("func3:       %1x\n", (unsigned int)d_i.func3);
  printf("rs1:        %2x\n",  (unsigned int)d_i.rs1);
  printf("rs2:        %2x\n",  (unsigned int)d_i.rs2);
  printf("func7:      %2x\n",  (unsigned int)d_i.func7);
  print_type(d_i.type);
  printf("\n");
}
void print_opcode(opcode_t opcode){
  switch(opcode){
    case 0b00000: printf("LOAD");           break;
    case 0b00001: printf("LOAD-FP");        break;
    case 0b00010: printf("CUSTOM-0");       break;
    case 0b00011: printf("MISC-MEM");       break;
    case 0b00100: printf("OP-IMM");         break;
    case 0b00101: printf("AUIPC");          break;
    case 0b00110: printf("OP-IMM-32");      break;
    case 0b00111: printf("RV48-0");         break;
    case 0b01000: printf("STORE");          break;
    case 0b01001: printf("STORE-FP");       break;
    case 0b01010: printf("CUSTOM-1");       break;
    case 0b01011: printf("AMO");            break;
    case 0b01100: printf("OP");             break;
    case 0b01101: printf("LUI");            break;
    case 0b01110: printf("OP-32");          break;
    case 0b01111: printf("RV64");           break;
    case 0b10000: printf("MADD");           break;
    case 0b10001: printf("MSUB");           break;
    case 0b10010: printf("NMSUB");          break;
    case 0b10011: printf("NMADD");          break;
    case 0b10100: printf("OP-FP");          break;
    case 0b10101: printf("RESERVED-0");     break;
    case 0b10110: printf("CUSTOM-2-RV128"); break;
    case 0b10111: printf("RV48-1");         break;
    case 0b11000: printf("BRANCH");         break;
    case 0b11001: printf("JALR");           break;
    case 0b11010: printf("RESERVED-1");     break;
    case 0b11011: printf("JAL");            break;
    case 0b11100: printf("SYSTEM");         break;
    case 0b11101: printf("RESERVED-2");     break;
    case 0b11110: printf("CUSTOM-3-RV128"); break;
    case 0b11111: printf("RV80");           break;
  }
}
#endif
