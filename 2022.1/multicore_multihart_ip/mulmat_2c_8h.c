#define LOG_NB_IP               1
#define LOG_NB_HART_PER_IP      3
#define LOG_NB_HART            (LOG_NB_HART_PER_IP+LOG_NB_IP)
#define NB_HART                (1<<LOG_NB_HART)
#define LOG_DATA_RAM_SIZE      16
#define LOG_IP_DATA_RAM_SIZE   (LOG_DATA_RAM_SIZE-LOG_NB_IP)//in words
#define IP_DATA_RAM_SIZE       (1<<LOG_IP_DATA_RAM_SIZE)
#define LINE_X                         64
#define COLUMN_X                       96
#define LINE_Y                   COLUMN_X
#define COLUMN_Y                       48
#define LINE_Z                     LINE_X
#define COLUMN_Z                 COLUMN_Y
#define LINE_BX             (LINE_X/NB_HART)
#define COLUMN_BX                COLUMN_X
#define LINE_BY                    LINE_Y
#define COLUMN_BY         (COLUMN_Y/NB_HART)
#define LINE_BZ                   LINE_BX
#define COLUMN_BZ               COLUMN_BY
#define SIZE_X   (LINE_X*COLUMN_X/NB_HART)
#define SIZE_XY  (LINE_Y*COLUMN_Y/NB_HART + SIZE_X)
int ip_data_ram[IP_DATA_RAM_SIZE];
void main() __attribute__((section(".text.main")));
static int mul(int a, int b){
  int p=0;
  do{
    if (b&1) p+=a;
    b>>=1;
    a<<=1;
  } while (b!=0);
  return p;
}
static void read_block(int block[], int lb, int cb, int offset, int cm){
 int *ab, *ag, *ab_last1, *ab_last2, *old_ag;
 ab=block;
 ag=ip_data_ram+offset;
 old_ag=ag;
 ab_last1=ab;
 ab_last2=ab+cb*lb;
 do{
  ab_last1+=cb;
  do{
   *ab=*ag;
   ab++;
   ag++;
  } while (ab!=ab_last1);
  ag=old_ag+cm;
  old_ag=ag;
 } while (ab!=ab_last2);
}
static void write_block(int block[], int lb, int cb, int offset, int cm){
 int *ab, *ag, *ab_last1, *ab_last2, *old_ag;
 ab=block;
 ag=ip_data_ram+offset;
 old_ag=ag;
 ab_last1=ab;
 ab_last2=ab+cb*lb;
 do{
  ab_last1+=cb;
  do{
   *ag=*ab;
   ab++;
   ag++;
  } while (ab!=ab_last1);
  ag=old_ag+cm;
  old_ag=ag;
 } while (ab!=ab_last2);
} 
void main(){
 int offset_block_y, offset_block_z;
 int tmp;
 int block_x[LINE_BX][COLUMN_BX];
 int block_y[LINE_BY][COLUMN_BY];
 int block_z[LINE_BZ][COLUMN_BZ];
 read_block (((int*)block_x),LINE_BX,COLUMN_BX,0,COLUMN_X);
 for (int k=0; k<NB_HART; k++){
  offset_block_y=k*COLUMN_BY;
  for (int c=0; c<NB_HART; c++){
    read_block(((int*)block_y)+c*LINE_BY/NB_HART*COLUMN_BY,LINE_BY/NB_HART,COLUMN_BY,c*IP_DATA_RAM_SIZE+SIZE_X+offset_block_y,COLUMN_Y);
  }
  for (int i=0; i<LINE_BX; i++){
    for (int j=0; j<COLUMN_BY; j++){
      tmp = 0;
      for (int k=0; k<COLUMN_BX; k++)
        tmp += mul(block_x[i][k],block_y[k][j]);
      block_z[i][j]=tmp;
    }
  }
  offset_block_z=k*COLUMN_BZ;
  write_block(((int*)block_z),LINE_BZ,COLUMN_BZ,SIZE_XY+offset_block_z,COLUMN_Z);
 }
}
