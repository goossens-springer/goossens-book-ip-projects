#include <stdio.h>
#include <stdlib.h>
#include "ap_int.h"
#define SAMPLES 600
void fir(
  ap_int<8>   x,
  ap_int<20> *y);
int main () {
  FILE      *fin;
  FILE      *fout;
  ap_int<20> y;
  ap_int<8>  x;
  int        signal;
  fin  = fopen("/home/goossens/workspace_fir/workspace_fir_pipeline/fir_pipeline/input.dat","r");
  fout = fopen("/home/goossens/workspace_fir/workspace_fir_pipeline/fir_pipeline/output.dat","w");
  for (unsigned int i = 0; i < SAMPLES; i++) {
    fscanf(fin, "%d", &signal);
    x = (ap_int<8>)signal;
    fir(x, &y);
    fprintf(fout,"%d\n", (int)y);
  }
  fclose(fout);
  fclose(fin);
  printf ("Comparing against output data \n");
  if (system("diff -w /home/goossens/workspace_fir/workspace_fir_pipeline/fir_pipeline/output.dat /home/goossens/workspace_fir/workspace_fir_pipeline/fir_pipeline/out.gold.dat")) {
    fprintf(stdout, "*******************************************\n");
    fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
    fprintf(stdout, "*******************************************\n");
    return 1;
  }
  else {
    fprintf(stdout, "*******************************************\n");
    fprintf(stdout, "PASS: The output matches the golden output!\n");
    fprintf(stdout, "*******************************************\n");
    return 0;
  }
}