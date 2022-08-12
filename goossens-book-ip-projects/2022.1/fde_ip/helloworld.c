#include <stdio.h>
#include "xfde_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
XFde_ip_Config *cfg_ptr;
XFde_ip         ip;
word_type code_ram[CODE_RAM_SIZE]={
#include "test_op_imm_0_text.hex"
};
int main(){
  cfg_ptr = XFde_ip_LookupConfig(XPAR_XFDE_IP_0_DEVICE_ID);
  XFde_ip_CfgInitialize(&ip, cfg_ptr);
  XFde_ip_Set_start_pc(&ip, 0);
  XFde_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XFde_ip_Start(&ip);
  while (!XFde_ip_IsDone(&ip));
  printf("%d fetched, decoded and executed instructions\n",
    (int)XFde_ip_Get_nb_instruction(&ip));
}
