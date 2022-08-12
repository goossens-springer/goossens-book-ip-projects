#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "fourier.h"
#define MAXSIZE   256
#define MAXWAVES    4
float RealOut[MAXSIZE];
float ImagOut[MAXSIZE];
void main() __attribute__((section(".text.main")));
void main(){
  unsigned i,j;
  float    RealIn [MAXSIZE];
  float    ImagIn [MAXSIZE];
  float    coeff  [MAXWAVES];
  float    amp    [MAXWAVES];
  int      invfft=1;
  srand(1);
  for(i=0;i<MAXWAVES;i++){
    coeff[i] = rand()%1000;
    amp  [i] = rand()%1000;
  }
  for(i=0;i<MAXSIZE;i++){
    RealIn[i]=0;
    for(j=0;j<MAXWAVES;j++){
      if (rand()%2)
        RealIn[i]+=coeff[j]*cos(amp[j]*i);
      else
        RealIn[i]+=coeff[j]*sin(amp[j]*i);
      ImagIn[i]=0;
    }
  }
  fft_float(MAXSIZE,invfft,RealIn,ImagIn,RealOut,ImagOut);
  printf("RealOut:\n");
  for (i=0;i<MAXSIZE/8;i++){
    for (j=0;j<8;j++)
      printf("%+14f ", RealOut[8*i+j]);
    printf("\n");
  }
  printf("ImagOut:\n");
  for (i=0;i<MAXSIZE/8;i++){
    for (j=0;j<8;j++)
      printf("%+14f ", ImagOut[8*i+j]);
    printf("\n");
  }
}
