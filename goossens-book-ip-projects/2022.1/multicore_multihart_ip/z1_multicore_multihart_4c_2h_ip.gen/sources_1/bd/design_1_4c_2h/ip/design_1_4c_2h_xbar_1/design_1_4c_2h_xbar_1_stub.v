// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Sun May  8 08:10:16 2022
// Host        : bernard-Precision-5530 running 64-bit Ubuntu 16.04.7 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/bernard/book-2022.1/new_book_ip/multicore_multihart_ip/z1_multicore_multihart_4c_2h_ip.gen/sources_1/bd/design_1_4c_2h/ip/design_1_4c_2h_xbar_1/design_1_4c_2h_xbar_1_stub.v
// Design      : design_1_4c_2h_xbar_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_crossbar_v2_1_27_axi_crossbar,Vivado 2022.1" *)
module design_1_4c_2h_xbar_1(aclk, aresetn, s_axi_awaddr, s_axi_awprot, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, 
  s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, m_axi_awaddr, 
  m_axi_awprot, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wvalid, 
  m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, m_axi_arprot, 
  m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axi_awaddr[319:0],s_axi_awprot[14:0],s_axi_awvalid[4:0],s_axi_awready[4:0],s_axi_wdata[159:0],s_axi_wstrb[19:0],s_axi_wvalid[4:0],s_axi_wready[4:0],s_axi_bresp[9:0],s_axi_bvalid[4:0],s_axi_bready[4:0],s_axi_araddr[319:0],s_axi_arprot[14:0],s_axi_arvalid[4:0],s_axi_arready[4:0],s_axi_rdata[159:0],s_axi_rresp[9:0],s_axi_rvalid[4:0],s_axi_rready[4:0],m_axi_awaddr[511:0],m_axi_awprot[23:0],m_axi_awvalid[7:0],m_axi_awready[7:0],m_axi_wdata[255:0],m_axi_wstrb[31:0],m_axi_wvalid[7:0],m_axi_wready[7:0],m_axi_bresp[15:0],m_axi_bvalid[7:0],m_axi_bready[7:0],m_axi_araddr[511:0],m_axi_arprot[23:0],m_axi_arvalid[7:0],m_axi_arready[7:0],m_axi_rdata[255:0],m_axi_rresp[15:0],m_axi_rvalid[7:0],m_axi_rready[7:0]" */;
  input aclk;
  input aresetn;
  input [319:0]s_axi_awaddr;
  input [14:0]s_axi_awprot;
  input [4:0]s_axi_awvalid;
  output [4:0]s_axi_awready;
  input [159:0]s_axi_wdata;
  input [19:0]s_axi_wstrb;
  input [4:0]s_axi_wvalid;
  output [4:0]s_axi_wready;
  output [9:0]s_axi_bresp;
  output [4:0]s_axi_bvalid;
  input [4:0]s_axi_bready;
  input [319:0]s_axi_araddr;
  input [14:0]s_axi_arprot;
  input [4:0]s_axi_arvalid;
  output [4:0]s_axi_arready;
  output [159:0]s_axi_rdata;
  output [9:0]s_axi_rresp;
  output [4:0]s_axi_rvalid;
  input [4:0]s_axi_rready;
  output [511:0]m_axi_awaddr;
  output [23:0]m_axi_awprot;
  output [7:0]m_axi_awvalid;
  input [7:0]m_axi_awready;
  output [255:0]m_axi_wdata;
  output [31:0]m_axi_wstrb;
  output [7:0]m_axi_wvalid;
  input [7:0]m_axi_wready;
  input [15:0]m_axi_bresp;
  input [7:0]m_axi_bvalid;
  output [7:0]m_axi_bready;
  output [511:0]m_axi_araddr;
  output [23:0]m_axi_arprot;
  output [7:0]m_axi_arvalid;
  input [7:0]m_axi_arready;
  input [255:0]m_axi_rdata;
  input [15:0]m_axi_rresp;
  input [7:0]m_axi_rvalid;
  output [7:0]m_axi_rready;
endmodule
