// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Wed Sep 11 21:05:11 2024
// Host        : goossens-Precision-5530 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/goossens/goossens-book-ip-projects/2024.1/rv32i_npp_bram_ip/project_1.gen/sources_1/bd/design_1/ip/design_1_rv32i_npp_ip_0_0/design_1_rv32i_npp_ip_0_0_stub.v
// Design      : design_1_rv32i_npp_ip_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "rv32i_npp_ip,Vivado 2024.1" *)
module design_1_rv32i_npp_ip_0_0(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, code_ram_Addr_A, 
  code_ram_Clk_A, code_ram_Din_A, code_ram_Dout_A, code_ram_EN_A, code_ram_Rst_A, 
  code_ram_WEN_A, data_ram_Addr_A, data_ram_Clk_A, data_ram_Din_A, data_ram_Dout_A, 
  data_ram_EN_A, data_ram_Rst_A, data_ram_WEN_A)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[4:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[4:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,code_ram_Addr_A[31:0],code_ram_Din_A[31:0],code_ram_Dout_A[31:0],code_ram_EN_A,code_ram_Rst_A,code_ram_WEN_A[3:0],data_ram_Addr_A[31:0],data_ram_Din_A[31:0],data_ram_Dout_A[31:0],data_ram_EN_A,data_ram_Rst_A,data_ram_WEN_A[3:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */
/* synthesis syn_force_seq_prim="code_ram_Clk_A" */
/* synthesis syn_force_seq_prim="data_ram_Clk_A" */;
  input [4:0]s_axi_control_ARADDR;
  output s_axi_control_ARREADY;
  input s_axi_control_ARVALID;
  input [4:0]s_axi_control_AWADDR;
  output s_axi_control_AWREADY;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output s_axi_control_BVALID;
  output [31:0]s_axi_control_RDATA;
  input s_axi_control_RREADY;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_RVALID;
  input [31:0]s_axi_control_WDATA;
  output s_axi_control_WREADY;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_WVALID;
  input ap_clk /* synthesis syn_isclock = 1 */;
  input ap_rst_n;
  output interrupt;
  output [31:0]code_ram_Addr_A;
  output code_ram_Clk_A /* synthesis syn_isclock = 1 */;
  output [31:0]code_ram_Din_A;
  input [31:0]code_ram_Dout_A;
  output code_ram_EN_A;
  output code_ram_Rst_A;
  output [3:0]code_ram_WEN_A;
  output [31:0]data_ram_Addr_A;
  output data_ram_Clk_A /* synthesis syn_isclock = 1 */;
  output [31:0]data_ram_Din_A;
  input [31:0]data_ram_Dout_A;
  output data_ram_EN_A;
  output data_ram_Rst_A;
  output [3:0]data_ram_WEN_A;
endmodule
