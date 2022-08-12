#include <stdio.h>
#include "xrv32i_pp_ip.h"
#include "xparameters.h"
#define PI 3.14159265358979323846
#define LOG_CODE_RAM_SIZE 16
//size in words
#define CODE_RAM_SIZE     (1<<LOG_CODE_RAM_SIZE)
#define LOG_DATA_RAM_SIZE 16
//size in words
#define DATA_RAM_SIZE     (1<<LOG_DATA_RAM_SIZE)
XRv32i_pp_ip_Config *cfg_ptr;
XRv32i_pp_ip         ip;
word_type data_ram[DATA_RAM_SIZE]={
#include "basicmath_small_no_print_0_data.hex"
};
word_type code_ram[CODE_RAM_SIZE]={
#include "basicmath_small_no_print_0_text.hex"
};
int main(){
  unsigned int  nbi, nbc;
  unsigned int  i, gi, solutions;
  double        d;
  double        X;
  int           i3, i4;
  unsigned long l = 0x3fed0169L, u;
  cfg_ptr = XRv32i_pp_ip_LookupConfig
    (XPAR_XRV32I_PP_IP_0_DEVICE_ID);
  XRv32i_pp_ip_CfgInitialize(&ip, cfg_ptr);
  XRv32i_pp_ip_Set_start_pc(&ip, 0);
  XRv32i_pp_ip_Write_code_ram_Words
    (&ip, 0, code_ram, CODE_RAM_SIZE);
  XRv32i_pp_ip_Write_data_ram_Words
    (&ip, 0, data_ram, DATA_RAM_SIZE);
  XRv32i_pp_ip_Start(&ip);
  while (!XRv32i_pp_ip_IsDone(&ip));
  gi = 0xb18/4;
  printf("********* CUBIC FUNCTIONS ***********\n");
  printf("Solutions:");
  XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
  gi++;
  for(i=0;i<solutions;i++){
    XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  for(i3=0; i3<20; i3++) {
    for(i4=0; i4<10; i4++) {
      printf("Solutions:");
      XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&solutions, 1);
      gi++;
      for(i=0;i<solutions;i++){
   	    XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
        gi+=2;
        printf(" %f",d);
      }
      printf("\n");
    }
  }
  printf("********* INTEGER SQR ROOTS ***********\n");
  for (i = 0; i < 100; ++i)
  //for (i = 0; i < 1001; ++i)
    {
     XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&u, 2);
     gi+=2;
     printf("sqrt(%3d) = %2ld\n", i, u);
    }
  XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&u, 2);
  gi+=2;
  printf("\nsqrt(%lX) = %lX\n", l, u);
  printf("********* ANGLE CONVERSION ***********\n");
  for (i=0, X = 0.0; X <= 360.0; i++, X += 1.0){
    XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf("%3.0f degrees = %.12f radians\n", X, d);
  }
  puts("");
  for (i=0, X = 0.0; X <= (2 * PI + 1e-6); i++, X += (PI / 180)){
    XRv32i_pp_ip_Read_data_ram_Words(&ip, gi, (word_type*)&d, 2);
    gi+=2;
    printf("%.12f radians = %3.0f degrees\n", X, d);
  }
  nbi = (unsigned int)XRv32i_pp_ip_Get_nb_instruction(&ip);
  nbc = (unsigned int)XRv32i_pp_ip_Get_nb_cycle(&ip);
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
