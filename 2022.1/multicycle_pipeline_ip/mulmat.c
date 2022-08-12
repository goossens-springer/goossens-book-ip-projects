#define LINE_X                         64
#define COLUMN_X                       96
#define LINE_Y                   COLUMN_X
#define COLUMN_Y                       48
#define LINE_Z                     LINE_X
#define COLUMN_Z                 COLUMN_Y
#define LOG_DATA_RAM_SIZE              16
#define DATA_RAM_SIZE (1<<LOG_DATA_RAM_SIZE)
#define SIZE_X   (LINE_X*COLUMN_X)
#define SIZE_XY  (LINE_Y*COLUMN_Y + SIZE_X)
int data_ram[DATA_RAM_SIZE];
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
void main(){
  int tmp;
  for (int i=0; i<LINE_X; i++){
    for (int j=0; j<COLUMN_Y; j++){
      tmp = 0;
      for (int k=0; k<COLUMN_X; k++)
        tmp += mul(data_ram[i*COLUMN_X+k],data_ram[SIZE_X+k*COLUMN_Y+j]);
      data_ram[SIZE_XY+i*COLUMN_Z+j]=tmp;
    }
  }
}
