#include <math.h>
#include <alloca.h>
#include "common.h"
#include "rb.h"
#define MIN(a, b) ((a) < (b) ? (a) : (b))
static void kloop(int p, t* a0, int lda, t* b0, int ldb, t* c, int ldc){
  t* c_0 = &c[ldc*0];
  t* c_1 = &c[ldc*1];
  t* c_2 = &c[ldc*2];
  t* c_3 = &c[ldc*3];
  t c_0_0 = c_0[0];
  t c_0_1 = c_0[1];
  t c_0_2 = c_0[2];
  t c_0_3 = c_0[3];
  t c_0_4 = c_0[4];
  t c_1_0 = c_1[0];
  t c_1_1 = c_1[1];
  t c_1_2 = c_1[2];
  t c_1_3 = c_1[3];
  t c_1_4 = c_1[4];
  t c_2_0 = c_2[0];
  t c_2_1 = c_2[1];
  t c_2_2 = c_2[2];
  t c_2_3 = c_2[3];
  t c_2_4 = c_2[4];
  t c_3_0 = c_3[0];
  t c_3_1 = c_3[1];
  t c_3_2 = c_3[2];
  t c_3_3 = c_3[3];
  t c_3_4 = c_3[4];
  for (t *a = a0, *b = b0; a < a0 + p/RBK*RBK; a += RBK, b += RBK*ldb){
    t* a_0 = &a[lda*0];
    t* a_1 = &a[lda*1];
    t* a_2 = &a[lda*2];
    t* a_3 = &a[lda*3];
    t* b_0 = &b[ldb*0];
    t* b_1 = &b[ldb*1];
    t* b_2 = &b[ldb*2];
    t* b_3 = &b[ldb*3];
    t* b_4 = &b[ldb*4];
    t* b_5 = &b[ldb*5];
    c_0_0 = fma(a_0[0], b_0[0], c_0_0);
    c_0_1 = fma(a_0[0], b_0[1], c_0_1);
    c_0_2 = fma(a_0[0], b_0[2], c_0_2);
    c_0_3 = fma(a_0[0], b_0[3], c_0_3);
    c_0_4 = fma(a_0[0], b_0[4], c_0_4);
    c_1_0 = fma(a_1[0], b_0[0], c_1_0);
    c_1_1 = fma(a_1[0], b_0[1], c_1_1);
    c_1_2 = fma(a_1[0], b_0[2], c_1_2);
    c_1_3 = fma(a_1[0], b_0[3], c_1_3);
    c_1_4 = fma(a_1[0], b_0[4], c_1_4);
    c_2_0 = fma(a_2[0], b_0[0], c_2_0);
    c_2_1 = fma(a_2[0], b_0[1], c_2_1);
    c_2_2 = fma(a_2[0], b_0[2], c_2_2);
    c_2_3 = fma(a_2[0], b_0[3], c_2_3);
    c_2_4 = fma(a_2[0], b_0[4], c_2_4);
    c_3_0 = fma(a_3[0], b_0[0], c_3_0);
    c_3_1 = fma(a_3[0], b_0[1], c_3_1);
    c_3_2 = fma(a_3[0], b_0[2], c_3_2);
    c_3_3 = fma(a_3[0], b_0[3], c_3_3);
    c_3_4 = fma(a_3[0], b_0[4], c_3_4);
    c_0_0 = fma(a_0[1], b_1[0], c_0_0);
    c_0_1 = fma(a_0[1], b_1[1], c_0_1);
    c_0_2 = fma(a_0[1], b_1[2], c_0_2);
    c_0_3 = fma(a_0[1], b_1[3], c_0_3);
    c_0_4 = fma(a_0[1], b_1[4], c_0_4);
    c_1_0 = fma(a_1[1], b_1[0], c_1_0);
    c_1_1 = fma(a_1[1], b_1[1], c_1_1);
    c_1_2 = fma(a_1[1], b_1[2], c_1_2);
    c_1_3 = fma(a_1[1], b_1[3], c_1_3);
    c_1_4 = fma(a_1[1], b_1[4], c_1_4);
    c_2_0 = fma(a_2[1], b_1[0], c_2_0);
    c_2_1 = fma(a_2[1], b_1[1], c_2_1);
    c_2_2 = fma(a_2[1], b_1[2], c_2_2);
    c_2_3 = fma(a_2[1], b_1[3], c_2_3);
    c_2_4 = fma(a_2[1], b_1[4], c_2_4);
    c_3_0 = fma(a_3[1], b_1[0], c_3_0);
    c_3_1 = fma(a_3[1], b_1[1], c_3_1);
    c_3_2 = fma(a_3[1], b_1[2], c_3_2);
    c_3_3 = fma(a_3[1], b_1[3], c_3_3);
    c_3_4 = fma(a_3[1], b_1[4], c_3_4);
    c_0_0 = fma(a_0[2], b_2[0], c_0_0);
    c_0_1 = fma(a_0[2], b_2[1], c_0_1);
    c_0_2 = fma(a_0[2], b_2[2], c_0_2);
    c_0_3 = fma(a_0[2], b_2[3], c_0_3);
    c_0_4 = fma(a_0[2], b_2[4], c_0_4);
    c_1_0 = fma(a_1[2], b_2[0], c_1_0);
    c_1_1 = fma(a_1[2], b_2[1], c_1_1);
    c_1_2 = fma(a_1[2], b_2[2], c_1_2);
    c_1_3 = fma(a_1[2], b_2[3], c_1_3);
    c_1_4 = fma(a_1[2], b_2[4], c_1_4);
    c_2_0 = fma(a_2[2], b_2[0], c_2_0);
    c_2_1 = fma(a_2[2], b_2[1], c_2_1);
    c_2_2 = fma(a_2[2], b_2[2], c_2_2);
    c_2_3 = fma(a_2[2], b_2[3], c_2_3);
    c_2_4 = fma(a_2[2], b_2[4], c_2_4);
    c_3_0 = fma(a_3[2], b_2[0], c_3_0);
    c_3_1 = fma(a_3[2], b_2[1], c_3_1);
    c_3_2 = fma(a_3[2], b_2[2], c_3_2);
    c_3_3 = fma(a_3[2], b_2[3], c_3_3);
    c_3_4 = fma(a_3[2], b_2[4], c_3_4);
    c_0_0 = fma(a_0[3], b_3[0], c_0_0);
    c_0_1 = fma(a_0[3], b_3[1], c_0_1);
    c_0_2 = fma(a_0[3], b_3[2], c_0_2);
    c_0_3 = fma(a_0[3], b_3[3], c_0_3);
    c_0_4 = fma(a_0[3], b_3[4], c_0_4);
    c_1_0 = fma(a_1[3], b_3[0], c_1_0);
    c_1_1 = fma(a_1[3], b_3[1], c_1_1);
    c_1_2 = fma(a_1[3], b_3[2], c_1_2);
    c_1_3 = fma(a_1[3], b_3[3], c_1_3);
    c_1_4 = fma(a_1[3], b_3[4], c_1_4);
    c_2_0 = fma(a_2[3], b_3[0], c_2_0);
    c_2_1 = fma(a_2[3], b_3[1], c_2_1);
    c_2_2 = fma(a_2[3], b_3[2], c_2_2);
    c_2_3 = fma(a_2[3], b_3[3], c_2_3);
    c_2_4 = fma(a_2[3], b_3[4], c_2_4);
    c_3_0 = fma(a_3[3], b_3[0], c_3_0);
    c_3_1 = fma(a_3[3], b_3[1], c_3_1);
    c_3_2 = fma(a_3[3], b_3[2], c_3_2);
    c_3_3 = fma(a_3[3], b_3[3], c_3_3);
    c_3_4 = fma(a_3[3], b_3[4], c_3_4);
    c_0_0 = fma(a_0[4], b_4[0], c_0_0);
    c_0_1 = fma(a_0[4], b_4[1], c_0_1);
    c_0_2 = fma(a_0[4], b_4[2], c_0_2);
    c_0_3 = fma(a_0[4], b_4[3], c_0_3);
    c_0_4 = fma(a_0[4], b_4[4], c_0_4);
    c_1_0 = fma(a_1[4], b_4[0], c_1_0);
    c_1_1 = fma(a_1[4], b_4[1], c_1_1);
    c_1_2 = fma(a_1[4], b_4[2], c_1_2);
    c_1_3 = fma(a_1[4], b_4[3], c_1_3);
    c_1_4 = fma(a_1[4], b_4[4], c_1_4);
    c_2_0 = fma(a_2[4], b_4[0], c_2_0);
    c_2_1 = fma(a_2[4], b_4[1], c_2_1);
    c_2_2 = fma(a_2[4], b_4[2], c_2_2);
    c_2_3 = fma(a_2[4], b_4[3], c_2_3);
    c_2_4 = fma(a_2[4], b_4[4], c_2_4);
    c_3_0 = fma(a_3[4], b_4[0], c_3_0);
    c_3_1 = fma(a_3[4], b_4[1], c_3_1);
    c_3_2 = fma(a_3[4], b_4[2], c_3_2);
    c_3_3 = fma(a_3[4], b_4[3], c_3_3);
    c_3_4 = fma(a_3[4], b_4[4], c_3_4);
    c_0_0 = fma(a_0[5], b_5[0], c_0_0);
    c_0_1 = fma(a_0[5], b_5[1], c_0_1);
    c_0_2 = fma(a_0[5], b_5[2], c_0_2);
    c_0_3 = fma(a_0[5], b_5[3], c_0_3);
    c_0_4 = fma(a_0[5], b_5[4], c_0_4);
    c_1_0 = fma(a_1[5], b_5[0], c_1_0);
    c_1_1 = fma(a_1[5], b_5[1], c_1_1);
    c_1_2 = fma(a_1[5], b_5[2], c_1_2);
    c_1_3 = fma(a_1[5], b_5[3], c_1_3);
    c_1_4 = fma(a_1[5], b_5[4], c_1_4);
    c_2_0 = fma(a_2[5], b_5[0], c_2_0);
    c_2_1 = fma(a_2[5], b_5[1], c_2_1);
    c_2_2 = fma(a_2[5], b_5[2], c_2_2);
    c_2_3 = fma(a_2[5], b_5[3], c_2_3);
    c_2_4 = fma(a_2[5], b_5[4], c_2_4);
    c_3_0 = fma(a_3[5], b_5[0], c_3_0);
    c_3_1 = fma(a_3[5], b_5[1], c_3_1);
    c_3_2 = fma(a_3[5], b_5[2], c_3_2);
    c_3_3 = fma(a_3[5], b_5[3], c_3_3);
    c_3_4 = fma(a_3[5], b_5[4], c_3_4);
  }
  for (t *a = a0 + p/RBK*RBK, *b = b0 + p/RBK*RBK*ldb; a < a0 + p; a++, b += ldb){
    t* a_0 = &a[lda*0];
    t* a_1 = &a[lda*1];
    t* a_2 = &a[lda*2];
    t* a_3 = &a[lda*3];
    t* b_0 = &b[ldb*0];
    c_0_0 = fma(a_0[0], b_0[0], c_0_0);
    c_0_1 = fma(a_0[0], b_0[1], c_0_1);
    c_0_2 = fma(a_0[0], b_0[2], c_0_2);
    c_0_3 = fma(a_0[0], b_0[3], c_0_3);
    c_0_4 = fma(a_0[0], b_0[4], c_0_4);
    c_1_0 = fma(a_1[0], b_0[0], c_1_0);
    c_1_1 = fma(a_1[0], b_0[1], c_1_1);
    c_1_2 = fma(a_1[0], b_0[2], c_1_2);
    c_1_3 = fma(a_1[0], b_0[3], c_1_3);
    c_1_4 = fma(a_1[0], b_0[4], c_1_4);
    c_2_0 = fma(a_2[0], b_0[0], c_2_0);
    c_2_1 = fma(a_2[0], b_0[1], c_2_1);
    c_2_2 = fma(a_2[0], b_0[2], c_2_2);
    c_2_3 = fma(a_2[0], b_0[3], c_2_3);
    c_2_4 = fma(a_2[0], b_0[4], c_2_4);
    c_3_0 = fma(a_3[0], b_0[0], c_3_0);
    c_3_1 = fma(a_3[0], b_0[1], c_3_1);
    c_3_2 = fma(a_3[0], b_0[2], c_3_2);
    c_3_3 = fma(a_3[0], b_0[3], c_3_3);
    c_3_4 = fma(a_3[0], b_0[4], c_3_4);
  }
  c_0[0] = c_0_0;
  c_0[1] = c_0_1;
  c_0[2] = c_0_2;
  c_0[3] = c_0_3;
  c_0[4] = c_0_4;
  c_1[0] = c_1_0;
  c_1[1] = c_1_1;
  c_1[2] = c_1_2;
  c_1[3] = c_1_3;
  c_1[4] = c_1_4;
  c_2[0] = c_2_0;
  c_2[1] = c_2_1;
  c_2[2] = c_2_2;
  c_2[3] = c_2_3;
  c_2[4] = c_2_4;
  c_3[0] = c_3_0;
  c_3[1] = c_3_1;
  c_3[2] = c_3_2;
  c_3[3] = c_3_3;
  c_3[4] = c_3_4;
}
static void mm_naive(int m, int n, int p,
  t* a, int lda, t* b, int ldb, t* c, int ldc){
  for (int i = 0; i < m; i++){
    for (int j = 0; j < n; j++){
      t s0 = c[i*ldc+j], s1 = 0, s2 = 0, s3 = 0;
      for (int k = 0; k < p/4*4; k+=4){
        s0 = fma(a[i*lda+k+0], b[(k+0)*ldb+j], s0);
        s1 = fma(a[i*lda+k+1], b[(k+1)*ldb+j], s1);
        s2 = fma(a[i*lda+k+2], b[(k+2)*ldb+j], s2);
        s3 = fma(a[i*lda+k+3], b[(k+3)*ldb+j], s3);
      }
      for (int k = p/4*4; k < p; k++)
        s0 = fma(a[i*lda+k], b[k*ldb+j], s0);
      c[i*ldc+j] = (s0 + s1) + (s2 + s3);
    }
  }
}
static void mm_rb(int m, int n, int p,
  t* a, int lda, t* b, int ldb, t* c, int ldc){
  int mb = m/RBM*RBM, nb = n/RBN*RBN;
  for (int i = 0; i < mb; i += RBM){
    for (int j = 0; j < nb; j += RBN)
      kloop(p, a+i*lda, lda, b+j, ldb, c+i*ldc+j, ldc);
    mm_naive(RBM, n - nb, p, a+i*lda, lda, b+nb, ldb, c+i*ldc+nb, ldc);
  }
  mm_naive(m - mb, n, p, a+mb*lda, lda, b, ldb, c+mb*ldc, ldc);
}
static void repack(t* a, int lda, const t* a0, int lda0, int m, int p){
  for (int i = 0; i < m; i++){
    for (int j = 0; j < p/8*8; j+=8){
      t t0 = a0[i*lda0+j+0];
      t t1 = a0[i*lda0+j+1];
      t t2 = a0[i*lda0+j+2];
      t t3 = a0[i*lda0+j+3];
      t t4 = a0[i*lda0+j+4];
      t t5 = a0[i*lda0+j+5];
      t t6 = a0[i*lda0+j+6];
      t t7 = a0[i*lda0+j+7];
      a[i*lda+j+0] = t0;
      a[i*lda+j+1] = t1;
      a[i*lda+j+2] = t2;
      a[i*lda+j+3] = t3;
      a[i*lda+j+4] = t4;
      a[i*lda+j+5] = t5;
      a[i*lda+j+6] = t6;
      a[i*lda+j+7] = t7;
    }
    for (int j = p/8*8; j < p; j++)
      a[i*lda+j] = a0[i*lda0+j];
  }
}
static void mm_cb(int m, int n, int p,
  t* a, int lda, t* b, int ldb, t* c, int ldc){
  int nmb = m/CBM, nnb = n/CBN, npb = p/CBK;
  int mb = nmb*CBM, nb = nnb*CBN, pb = npb*CBK;
  t* a1 = (t*)alloca_aligned(sizeof(t)*mb*pb, 8192);
  t* b1 = (t*)alloca_aligned(sizeof(t)*pb*nb, 8192);
  t* c1 = (t*)alloca_aligned(sizeof(t)*mb*nb, 8192);
  for (int i = 0; i < mb; i += CBM)
    for (int j = 0; j < pb; j += CBK)
      repack(a1 + (npb*(i/CBM) + j/CBK)*(CBM*CBK), CBK, a + i*lda + j, lda, CBM, CBK);
  for (int i = 0; i < pb; i += CBK)
    for (int j = 0; j < nb; j += CBN)
      repack(b1 + (nnb*(i/CBK) + j/CBN)*(CBK*CBN), CBN, b + i*ldb + j, ldb, CBK, CBN);
  for (int i = 0; i < mb; i += CBM)
    for (int j = 0; j < nb; j += CBN)
      repack(c1 + (nnb*(i/CBM) + j/CBN)*(CBM*CBN), CBN, c + i*ldc + j, ldc, CBM, CBN);
  for (int i = 0; i < mb; i += CBM){
    for (int j = 0; j < nb; j += CBN){
      for (int k = 0; k < pb; k += CBK){
        mm_rb(CBM, CBN, CBK,
              a1 + (npb*(i/CBM) + k/CBK)*(CBM*CBK), CBK,
              b1 + (nnb*(k/CBK) + j/CBN)*(CBK*CBN), CBN,
              c1 + (nnb*(i/CBM) + j/CBN)*(CBM*CBN), CBN);
      }
      if (pb < p){
        mm_rb(CBM, CBN, p - pb,
              a + i*lda + pb, lda,
              b + pb*ldb + j, ldb,
              c1 + (nnb*(i/CBM) + j/CBN)*(CBM*CBN), CBN);
      }
    }
    if (nb < n){
      for (int k = 0; k < p; k += CBK){
        mm_rb(CBM, n - nb, MIN(p - k, CBK),
              a + i*lda + k, lda,
              b + k*ldb + nb, ldb,
              c + i*ldc + nb, ldc);
      }
    }
  }
  if (mb < m){
    for (int j = 0; j < n; j += CBN){
      for (int k = 0; k < p; k += CBK){
        mm_rb(m - mb, MIN(n - j, CBN), MIN(p - k, CBK),
              a + mb*lda + k, lda,
              b + k*ldb + j, ldb,
              c + mb*ldc + j, ldc);
      }
    }
  }
  for (int i = 0; i < mb; i += CBM)
    for (int j = 0; j < nb; j += CBN)
      repack(c + i*ldc + j, ldc, c1 + (nnb*(i/CBM) + j/CBN)*(CBM*CBN), CBN, CBM, CBN);
}
void mm(int m, int n, int p,
  t* a, int lda, t* b, int ldb, t* c, int ldc){
  if (__builtin_expect(m <= 2*CBM && n <= 2*CBN && p <= 2*CBK, 1))
    mm_rb(m, n, p, a, lda, b, ldb, c, ldc);
  else
    mm_cb(m, n, p, a, lda, b, ldb, c, ldc);
}
