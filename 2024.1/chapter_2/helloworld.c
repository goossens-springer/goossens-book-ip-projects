#include <stdio.h>
#include "xmy_adder_ip.h"
#include "xparameters.h"
XMy_adder_ip_Config *cfg_ptr;
XMy_adder_ip ip;
int main(){
  cfg_ptr = XMy_adder_ip_LookupConfig(XPAR_XMY_ADDER_IP_0_BASEADDR);
  XMy_adder_ip_CfgInitialize(&ip, cfg_ptr);
  XMy_adder_ip_Set_a(&ip, 10000);
  XMy_adder_ip_Set_b(&ip, 20000);
  XMy_adder_ip_Start(&ip);
  while (!XMy_adder_ip_IsDone(&ip));
  printf("%d + %d is %d\n",
    (int)XMy_adder_ip_Get_a(&ip),
    (int)XMy_adder_ip_Get_b(&ip),
    (int)XMy_adder_ip_Get_c(&ip));
  return 0;
}
