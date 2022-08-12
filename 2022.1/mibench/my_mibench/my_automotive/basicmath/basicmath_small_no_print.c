#include <string.h>
#include "snipmath.h"
int result[3500];
void main() __attribute__((section(".text.main")));
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
  /* solve some cubic functions */
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
}
