// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read/COR)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read/COR)
//           bit 7  - auto_restart (Read/Write)
//           bit 9  - interrupt (Read)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0 - enable ap_done interrupt (Read/Write)
//           bit 1 - enable ap_ready interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/TOW)
//           bit 0 - ap_done (Read/TOW)
//           bit 1 - ap_ready (Read/TOW)
//           others - reserved
// 0x00010 : Data signal of running_hart_set
//           bit 31~0 - running_hart_set[31:0] (Read/Write)
// 0x00014 : reserved
// 0x00030 : Data signal of nb_instruction
//           bit 31~0 - nb_instruction[31:0] (Read)
// 0x00034 : Control signal of nb_instruction
//           bit 0  - nb_instruction_ap_vld (Read/COR)
//           others - reserved
// 0x00040 : Data signal of nb_cycle
//           bit 31~0 - nb_cycle[31:0] (Read)
// 0x00044 : Control signal of nb_cycle
//           bit 0  - nb_cycle_ap_vld (Read/COR)
//           others - reserved
// 0x00020 ~
// 0x0002f : Memory 'start_pc' (4 * 32b)
//           Word n : bit [31:0] - start_pc[n]
// 0x20000 ~
// 0x3ffff : Memory 'code_ram' (32768 * 32b)
//           Word n : bit [31:0] - code_ram[n]
// 0x40000 ~
// 0x5ffff : Memory 'data_ram' (32768 * 32b)
//           Word n : bit [31:0] - data_ram[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL               0x00000
#define CONTROL_ADDR_GIE                   0x00004
#define CONTROL_ADDR_IER                   0x00008
#define CONTROL_ADDR_ISR                   0x0000c
#define CONTROL_ADDR_RUNNING_HART_SET_DATA 0x00010
#define CONTROL_BITS_RUNNING_HART_SET_DATA 32
#define CONTROL_ADDR_NB_INSTRUCTION_DATA   0x00030
#define CONTROL_BITS_NB_INSTRUCTION_DATA   32
#define CONTROL_ADDR_NB_INSTRUCTION_CTRL   0x00034
#define CONTROL_ADDR_NB_CYCLE_DATA         0x00040
#define CONTROL_BITS_NB_CYCLE_DATA         32
#define CONTROL_ADDR_NB_CYCLE_CTRL         0x00044
#define CONTROL_ADDR_START_PC_BASE         0x00020
#define CONTROL_ADDR_START_PC_HIGH         0x0002f
#define CONTROL_WIDTH_START_PC             32
#define CONTROL_DEPTH_START_PC             4
#define CONTROL_ADDR_CODE_RAM_BASE         0x20000
#define CONTROL_ADDR_CODE_RAM_HIGH         0x3ffff
#define CONTROL_WIDTH_CODE_RAM             32
#define CONTROL_DEPTH_CODE_RAM             32768
#define CONTROL_ADDR_DATA_RAM_BASE         0x40000
#define CONTROL_ADDR_DATA_RAM_HIGH         0x5ffff
#define CONTROL_WIDTH_DATA_RAM             32
#define CONTROL_DEPTH_DATA_RAM             32768
