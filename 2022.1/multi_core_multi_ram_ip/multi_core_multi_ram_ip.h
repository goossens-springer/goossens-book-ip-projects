#include "ap_int.h"
#define LOG_NB_RAM         1  //2^LOG_NB_RAM ram blocks
#define LOG_NB_IP          LOG_NB_RAM
#define LOG_RAM_SIZE       16 //2^LOG_RAM_SIZE words
#define NB_RAM             (1<<LOG_NB_RAM)
#define RAM_SIZE           (1<<LOG_RAM_SIZE)
#define LOG_LOCAL_RAM_SIZE (LOG_RAM_SIZE - LOG_NB_RAM)
#define LOCAL_RAM_SIZE     (1<<LOG_LOCAL_RAM_SIZE)
typedef ap_uint<LOG_NB_IP+1> ip_num_p1_t;
typedef ap_uint<LOG_NB_IP>   ip_num_t;
