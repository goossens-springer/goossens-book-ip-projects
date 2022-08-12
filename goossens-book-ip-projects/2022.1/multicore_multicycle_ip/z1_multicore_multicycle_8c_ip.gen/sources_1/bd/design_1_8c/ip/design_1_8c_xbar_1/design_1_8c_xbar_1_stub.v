// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sat May  7 08:32:45 2022
// Host        : bernard-Precision-5530 running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/bernard/book-2022.1/new_book_ip/multicore_multicycle_ip/z1_multicore_multicycle_8c_ip.gen/sources_1/bd/design_1_8c/ip/design_1_8c_xbar_1/design_1_8c_xbar_1_stub.v
// Design      : design_1_8c_xbar_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_27_axi_crossbar,Vivado 2022.1" *)
module design_1_8c_xbar_1(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[575:0],s_axi_awprot[26:0],s_axi_awvalid[8:0],s_axi_awready[8:0],s_axi_wdata[287:0],s_axi_wstrb[35:0],s_axi_wvalid[8:0],s_axi_wready[8:0],s_axi_bresp[17:0],s_axi_bvalid[8:0],s_axi_bready[8:0],s_axi_araddr[575:0],s_axi_arprot[26:0],s_axi_arvalid[8:0],s_axi_arready[8:0],s_axi_rdata[287:0],s_axi_rresp[17:0],s_axi_rvalid[8:0],s_axi_rready[8:0],m_axi_awaddr[1023:0],m_axi_awprot[47:0],m_axi_awvalid[15:0],m_axi_awready[15:0],m_axi_wdata[511:0],m_axi_wstrb[63:0],m_axi_wvalid[15:0],m_axi_wready[15:0],m_axi_bresp[31:0],m_axi_bvalid[15:0],m_axi_bready[15:0],m_axi_araddr[1023:0],m_axi_arprot[47:0],m_axi_arvalid[15:0],m_axi_arready[15:0],m_axi_rdata[511:0],m_axi_rresp[31:0],m_axi_rvalid[15:0],m_axi_rready[15:0]" */;
  input aclk;
  input aresetn;
  input [575:0]s_axi_awaddr;
  input [26:0]s_axi_awprot;
  input [8:0]s_axi_awvalid;
  output [8:0]s_axi_awready;
  input [287:0]s_axi_wdata;
  input [35:0]s_axi_wstrb;
  input [8:0]s_axi_wvalid;
  output [8:0]s_axi_wready;
  output [17:0]s_axi_bresp;
  output [8:0]s_axi_bvalid;
  input [8:0]s_axi_bready;
  input [575:0]s_axi_araddr;
  input [26:0]s_axi_arprot;
  input [8:0]s_axi_arvalid;
  output [8:0]s_axi_arready;
  output [287:0]s_axi_rdata;
  output [17:0]s_axi_rresp;
  output [8:0]s_axi_rvalid;
  input [8:0]s_axi_rready;
  output [1023:0]m_axi_awaddr;
  output [47:0]m_axi_awprot;
  output [15:0]m_axi_awvalid;
  input [15:0]m_axi_awready;
  output [511:0]m_axi_wdata;
  output [63:0]m_axi_wstrb;
  output [15:0]m_axi_wvalid;
  input [15:0]m_axi_wready;
  input [31:0]m_axi_bresp;
  input [15:0]m_axi_bvalid;
  output [15:0]m_axi_bready;
  output [1023:0]m_axi_araddr;
  output [47:0]m_axi_arprot;
  output [15:0]m_axi_arvalid;
  input [15:0]m_axi_arready;
  input [511:0]m_axi_rdata;
  input [31:0]m_axi_rresp;
  input [15:0]m_axi_rvalid;
  output [15:0]m_axi_rready;
endmodule
