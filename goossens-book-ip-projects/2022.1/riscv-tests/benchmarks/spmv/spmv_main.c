#include <stdio.h>
#include "dataset_300.h"
double y[R];
void spmv(int r, const double* val, const int* idx, const double* x,
          const int* ptr, double* y){
  for (int i = 0; i < r; i++){
    int k;
    double yi0 = 0, yi1 = 0, yi2 = 0, yi3 = 0;
    for (k = ptr[i]; k < ptr[i+1]-3; k+=4){
      yi0 += val[k+0]*x[idx[k+0]];
      yi1 += val[k+1]*x[idx[k+1]];
      yi2 += val[k+2]*x[idx[k+2]];
      yi3 += val[k+3]*x[idx[k+3]];
    }
    for ( ; k < ptr[i+1]; k++)
      yi0 += val[k]*x[idx[k]];
    y[i] = (yi0+yi1)+(yi2+yi3);
  }
}
void main(){
  int i, j;
  spmv(R, val, idx, x, ptr, y);
  for (i=0; i<R/10; i++){
    for (j=0; j<10; j++)
      printf("%8d ", (int)y[10*i+j]);
    printf("\n");
  }
}
