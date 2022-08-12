#include <stdio.h>
#include "xfetching_ip.h"
#include "xparameters.h"
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
XFetching_ip_Config *cfg_ptr;
XFetching_ip         ip;
word_type code_ram[CODE_RAM_SIZE]={
#include "test_op_imm_0_text.hex"
};
int main(){
  cfg_ptr = XFetching_ip_LookupConfig(XPAR_XFETCHING_IP_0_DEVICE_ID);
  XFetching_ip_CfgInitialize(&ip, cfg_ptr);
  XFetching_ip_Set_start_pc(&ip, 0);
  XFetching_ip_Write_code_ram_Words(&ip, 0, code_ram, CODE_RAM_SIZE);
  XFetching_ip_Start(&ip);
  while (!XFetching_ip_IsDone(&ip));
  printf("done\n");
}
