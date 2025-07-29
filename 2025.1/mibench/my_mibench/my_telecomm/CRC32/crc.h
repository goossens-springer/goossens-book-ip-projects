#ifndef CRC__H
#define CRC__H
#include "sniptype.h"         /* For BYTE, WORD, DWORD      */
#define UPDC32(octet,crc) (crc_32_tab[((crc)^((BYTE)octet)) & 0xff] ^ ((crc) >> 8))
#endif /* CRC__H */
