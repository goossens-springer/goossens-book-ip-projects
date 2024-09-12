#include <stdio.h>
#include "../../../../multihart_ip/multihart_ip.h"
#define PI     3.14159265358979323846
#define RESULT 0xb18
unsigned int data_ram[NB_HART][HART_DATA_RAM_SIZE]={
{
#include "basicmath_small_no_print_0_data.hex"
},
{
#include "basicmath_small_no_print_0_data.hex"
}
#if (NB_HART>2)
,{
#include "basicmath_small_no_print_0_data.hex"
},
{
#include "basicmath_small_no_print_0_data.hex"
}
#endif
#if (NB_HART>4)
,{
#include "basicmath_small_no_print_0_data.hex"
},
{
#include "basicmath_small_no_print_0_data.hex"
},
{
#include "basicmath_small_no_print_0_data.hex"
},
{
#include "basicmath_small_no_print_0_data.hex"
}
#endif
};
unsigned int code_ram[CODE_RAM_SIZE]={
#include "basicmath_small_no_print_0_text.hex"
};
unsigned int start_pc[NB_HART];
int main(){
  unsigned int  nbi, nbc, i, gi, solutions;
  double        d;
  double        X;
  int           i3, i4;
  unsigned long l = 0x3fed0169L, u;
  multihart_ip((1<<NB_HART)-1,//start all harts
               start_pc, code_ram, (int (*)[HART_DATA_RAM_SIZE])data_ram, &nbi, &nbc);
  for (int h=0; h<NB_HART; h++){
    printf("hart %d\n", h);
    gi = RESULT/4;
    printf("********* CUBIC FUNCTIONS ***********\n");
    printf("Solutions:");
    memcpy(&solutions, &data_ram[h][gi], sizeof(int));
    gi++;
    for(i=0;i<solutions;i++){
      memcpy(&d,&data_ram[h][gi],sizeof(double));
      gi+=2;
      printf(" %f",d);
    }
    printf("\n");
    printf("Solutions:");
    memcpy(&solutions, &data_ram[h][gi], sizeof(int));
    gi++;
    for(i=0;i<solutions;i++){
      memcpy(&d,&data_ram[h][gi],sizeof(double));
      gi+=2;
      printf(" %f",d);
    }
    printf("\n");
    printf("Solutions:");
    memcpy(&solutions, &data_ram[h][gi], sizeof(int));
    gi++;
    for(i=0;i<solutions;i++){
      memcpy(&d,&data_ram[h][gi],sizeof(double));
      gi+=2;
      printf(" %f",d);
    }
    printf("\n");
    printf("Solutions:");
    memcpy(&solutions, &data_ram[h][gi], sizeof(int));
    gi++;
    for(i=0;i<solutions;i++){
      memcpy(&d,&data_ram[h][gi],sizeof(double));
      gi+=2;
      printf(" %f",d);
    }
    printf("\n");
    for(i3=0; i3<20; i3++) {
      for(i4=0; i4<10; i4++) {
        printf("Solutions:");
        memcpy(&solutions, &data_ram[h][gi], sizeof(int));
        gi++;
        for(i=0;i<solutions;i++){
          memcpy(&d,&data_ram[h][gi],sizeof(double));
          gi+=2;
          printf(" %f",d);
        }
        printf("\n");
      }
    }
    printf("********* INTEGER SQR ROOTS ***********\n");
    for (i = 0; i < 100; ++i){
      memcpy(&u,&data_ram[h][gi],sizeof(unsigned long));
      gi+=2;
      printf("sqrt(%3d) = %2d\n", i, u);
    }
    memcpy(&u,&data_ram[h][gi],sizeof(unsigned long));
    gi+=2;
    printf("\nsqrt(%lX) = %X\n", l, u);
    printf("********* ANGLE CONVERSION ***********\n");
    for (i=0, X = 0.0; X <= 360.0; i++, X += 1.0){
      memcpy(&d,&data_ram[h][gi],sizeof(double));
      gi+=2;
      printf("%3.0f degrees = %.12f radians\n", X, d);
    }
    puts("");
    for (i=0, X = 0.0; X <= (2 * PI + 1e-6); i++, X += (PI / 180)){
      memcpy(&d,&data_ram[h][gi],sizeof(double));
      gi+=2;
      printf("%.12f radians = %3.0f degrees\n", X, d);
    }
  }
  printf("%d fetched and decoded instructions\
 in %d cycles (ipc = %2.2f)\n", nbi, nbc, ((float)nbi)/nbc);
  return 0;
}
