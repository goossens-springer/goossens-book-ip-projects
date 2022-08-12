#include <stdio.h>
#include <string.h>
#include "snipmath.h"
/* The printf's may be removed to isolate just the math calculations */
int result[3500];
void main(){
  double  a1 = 1.0, b1 = -10.5, c1 = 32.0, d1 = -30.0;
  double  a2 = 1.0, b2 = -4.5,  c2 = 17.0, d2 = -30.0;
  double  a3 = 1.0, b3 = -3.5,  c3 = 22.0, d3 = -31.0;
  double  a4 = 1.0, b4 = -13.7, c4 = 1.0,  d4 = -35.0;
  double  x[3], d, r;
  double  X;
  int     solutions;
  int     i, i3, i4, gi = 0;
  unsigned long l = 0x3fed0169L, u;
  struct  int_sqrt q;
  long    n = 0;
  /* solve soem cubic functions */
  /* should get 3 solutions: 2, 6 & 2.5   */
  SolveCubic(a1, b1, c1, d1, &solutions, x);
  memcpy(&result[gi],&solutions,sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&result[gi],&x[i],sizeof(double));
    gi+=2;
  }
  /* should get 1 solution: 2.5           */
  SolveCubic(a2, b2, c2, d2, &solutions, x);  
  memcpy(&result[gi],&solutions,sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&result[gi],&x[i],sizeof(double));
    gi+=2;
  }
  SolveCubic(a3, b3, c3, d3, &solutions, x);
  memcpy(&result[gi],&solutions,sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&result[gi],&x[i],sizeof(double));
    gi+=2;
  }
  SolveCubic(a4, b4, c4, d4, &solutions, x);
  memcpy(&result[gi],&solutions,sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&result[gi],&x[i],sizeof(double));
    gi+=2;
  }
  /* Now solve some random equations */
  a1=1;
  b1=10;
  c1=5;
  for(i3=0, c1=5; c1<15; i3++, c1+=0.5) {
    for(i4=0, d1=-1; d1>-11; i4++, d1--) {
      SolveCubic(a1, b1, c1, d1, &solutions, x);  
      memcpy(&result[gi],&solutions,sizeof(int));
      gi++;
      for(i=0;i<solutions;i++){
        memcpy(&result[gi],&x[i],sizeof(double));
        gi+=2;
      }
    }
  }
  /* perform some integer square roots */
  //for (i = 0; i < 1001; ++i)
  for (i = 0; i < 100; ++i)
    {
      usqrt(i, &q);
      memcpy(&result[gi],&q.sqrt,sizeof(unsigned long));
      gi+=2;
    }
  usqrt(l, &q);
  memcpy(&result[gi],&q.sqrt,sizeof(unsigned long));
  gi+=2;
  /* convert some rads to degrees */
  for (X = 0.0; X <= 360.0; X += 1.0){
    d = deg2rad(X);
    memcpy(&result[gi],&d,sizeof(double));
    gi+=2;
  }
  for (X = 0.0; X <= (2 * PI + 1e-6); X += (PI / 180)){
    r = rad2deg(X);
    memcpy(&result[gi],&r,sizeof(double));
    gi+=2;
  }
  gi = 0;
  printf("********* CUBIC FUNCTIONS ***********\n");
  printf("Solutions:");
  memcpy(&solutions, &result[gi], sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&d,&result[gi],sizeof(double));
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  memcpy(&solutions, &result[gi], sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&d,&result[gi],sizeof(double));
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  memcpy(&solutions, &result[gi], sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&d,&result[gi],sizeof(double));
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  printf("Solutions:");
  memcpy(&solutions, &result[gi], sizeof(int));
  gi++;
  for(i=0;i<solutions;i++){
    memcpy(&d,&result[gi],sizeof(double));
    gi+=2;
    printf(" %f",d);
  }
  printf("\n");
  for(i3=0; i3<20; i3++) {
    for(i4=0; i4<10; i4++) {
      printf("Solutions:");
      memcpy(&solutions, &result[gi], sizeof(int));
      gi++;
      for(i=0;i<solutions;i++){
        memcpy(&d,&result[gi],sizeof(double));
        gi+=2;
        printf(" %f",d);
      }
      printf("\n");
    }
  }
  printf("********* INTEGER SQR ROOTS ***********\n");
  for (i = 0; i < 100; ++i)
    {
     memcpy(&u,&result[gi],sizeof(unsigned long));
     gi+=2;
     printf("sqrt(%3d) = %2d\n", i, u);
    }
  memcpy(&u,&result[gi],sizeof(unsigned long));
  gi+=2;
  printf("\nsqrt(%lX) = %X\n", l, u);

  printf("********* ANGLE CONVERSION ***********\n");
  for (i=0, X = 0.0; X <= 360.0; i++, X += 1.0){
    memcpy(&d,&result[gi],sizeof(double));
    gi+=2;
    printf("%3.0f degrees = %.12f radians\n", X, d);
  }
  puts("");
  for (i=0, X = 0.0; X <= (2 * PI + 1e-6); i++, X += (PI / 180)){
    memcpy(&d,&result[gi],sizeof(double));
    gi+=2;
    printf("%.12f radians = %3.0f degrees\n", X, d);
  }
}
