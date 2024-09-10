// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Tue Sep 10 19:36:33 2024
// Host        : goossens-Precision-5530 running 64-bit Ubuntu 22.04.4 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/goossens/goossens-book-ip-projects/2024.1/multicore_multicycle_8c_ip/project_1.gen/sources_1/bd/design_1/ip/design_1_multicycle_pipeline_0_7/design_1_multicycle_pipeline_0_7_stub.v
// Design      : design_1_multicycle_pipeline_0_7
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "multicycle_pipeline_ip,Vivado 2024.1" *)
module design_1_multicycle_pipeline_0_7(s_axi_control_ARADDR, 
  s_axi_control_ARREADY, s_axi_control_ARVALID, s_axi_control_AWADDR, 
  s_axi_control_AWREADY, s_axi_control_AWVALID, s_axi_control_BREADY, 
  s_axi_control_BRESP, s_axi_control_BVALID, s_axi_control_RDATA, s_axi_control_RREADY, 
  s_axi_control_RRESP, s_axi_control_RVALID, s_axi_control_WDATA, s_axi_control_WREADY, 
  s_axi_control_WSTRB, s_axi_control_WVALID, ap_clk, ap_rst_n, interrupt, m_axi_gmem_ARADDR, 
  m_axi_gmem_ARBURST, m_axi_gmem_ARCACHE, m_axi_gmem_ARID, m_axi_gmem_ARLEN, 
  m_axi_gmem_ARLOCK, m_axi_gmem_ARPROT, m_axi_gmem_ARQOS, m_axi_gmem_ARREADY, 
  m_axi_gmem_ARREGION, m_axi_gmem_ARSIZE, m_axi_gmem_ARVALID, m_axi_gmem_AWADDR, 
  m_axi_gmem_AWBURST, m_axi_gmem_AWCACHE, m_axi_gmem_AWID, m_axi_gmem_AWLEN, 
  m_axi_gmem_AWLOCK, m_axi_gmem_AWPROT, m_axi_gmem_AWQOS, m_axi_gmem_AWREADY, 
  m_axi_gmem_AWREGION, m_axi_gmem_AWSIZE, m_axi_gmem_AWVALID, m_axi_gmem_BID, 
  m_axi_gmem_BREADY, m_axi_gmem_BRESP, m_axi_gmem_BVALID, m_axi_gmem_RDATA, m_axi_gmem_RID, 
  m_axi_gmem_RLAST, m_axi_gmem_RREADY, m_axi_gmem_RRESP, m_axi_gmem_RVALID, 
  m_axi_gmem_WDATA, m_axi_gmem_WID, m_axi_gmem_WLAST, m_axi_gmem_WREADY, m_axi_gmem_WSTRB, 
  m_axi_gmem_WVALID, ip_data_ram_Addr_A, ip_data_ram_Clk_A, ip_data_ram_Din_A, 
  ip_data_ram_Dout_A, ip_data_ram_EN_A, ip_data_ram_Rst_A, ip_data_ram_WEN_A)
/* synthesis syn_black_box black_box_pad_pin="s_axi_control_ARADDR[14:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[14:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_rst_n,interrupt,m_axi_gmem_ARADDR[63:0],m_axi_gmem_ARBURST[1:0],m_axi_gmem_ARCACHE[3:0],m_axi_gmem_ARID[0:0],m_axi_gmem_ARLEN[7:0],m_axi_gmem_ARLOCK[1:0],m_axi_gmem_ARPROT[2:0],m_axi_gmem_ARQOS[3:0],m_axi_gmem_ARREADY,m_axi_gmem_ARREGION[3:0],m_axi_gmem_ARSIZE[2:0],m_axi_gmem_ARVALID,m_axi_gmem_AWADDR[63:0],m_axi_gmem_AWBURST[1:0],m_axi_gmem_AWCACHE[3:0],m_axi_gmem_AWID[0:0],m_axi_gmem_AWLEN[7:0],m_axi_gmem_AWLOCK[1:0],m_axi_gmem_AWPROT[2:0],m_axi_gmem_AWQOS[3:0],m_axi_gmem_AWREADY,m_axi_gmem_AWREGION[3:0],m_axi_gmem_AWSIZE[2:0],m_axi_gmem_AWVALID,m_axi_gmem_BID[0:0],m_axi_gmem_BREADY,m_axi_gmem_BRESP[1:0],m_axi_gmem_BVALID,m_axi_gmem_RDATA[31:0],m_axi_gmem_RID[0:0],m_axi_gmem_RLAST,m_axi_gmem_RREADY,m_axi_gmem_RRESP[1:0],m_axi_gmem_RVALID,m_axi_gmem_WDATA[31:0],m_axi_gmem_WID[0:0],m_axi_gmem_WLAST,m_axi_gmem_WREADY,m_axi_gmem_WSTRB[3:0],m_axi_gmem_WVALID,ip_data_ram_Addr_A[31:0],ip_data_ram_Din_A[31:0],ip_data_ram_Dout_A[31:0],ip_data_ram_EN_A,ip_data_ram_Rst_A,ip_data_ram_WEN_A[3:0]" */
/* synthesis syn_force_seq_prim="ap_clk" */
/* synthesis syn_force_seq_prim="ip_data_ram_Clk_A" */;
  input [14:0]s_axi_control_ARADDR;
  output s_axi_control_ARREADY;
  input s_axi_control_ARVALID;
  input [14:0]s_axi_control_AWADDR;
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
  output [63:0]m_axi_gmem_ARADDR;
  output [1:0]m_axi_gmem_ARBURST;
  output [3:0]m_axi_gmem_ARCACHE;
  output [0:0]m_axi_gmem_ARID;
  output [7:0]m_axi_gmem_ARLEN;
  output [1:0]m_axi_gmem_ARLOCK;
  output [2:0]m_axi_gmem_ARPROT;
  output [3:0]m_axi_gmem_ARQOS;
  input m_axi_gmem_ARREADY;
  output [3:0]m_axi_gmem_ARREGION;
  output [2:0]m_axi_gmem_ARSIZE;
  output m_axi_gmem_ARVALID;
  output [63:0]m_axi_gmem_AWADDR;
  output [1:0]m_axi_gmem_AWBURST;
  output [3:0]m_axi_gmem_AWCACHE;
  output [0:0]m_axi_gmem_AWID;
  output [7:0]m_axi_gmem_AWLEN;
  output [1:0]m_axi_gmem_AWLOCK;
  output [2:0]m_axi_gmem_AWPROT;
  output [3:0]m_axi_gmem_AWQOS;
  input m_axi_gmem_AWREADY;
  output [3:0]m_axi_gmem_AWREGION;
  output [2:0]m_axi_gmem_AWSIZE;
  output m_axi_gmem_AWVALID;
  input [0:0]m_axi_gmem_BID;
  output m_axi_gmem_BREADY;
  input [1:0]m_axi_gmem_BRESP;
  input m_axi_gmem_BVALID;
  input [31:0]m_axi_gmem_RDATA;
  input [0:0]m_axi_gmem_RID;
  input m_axi_gmem_RLAST;
  output m_axi_gmem_RREADY;
  input [1:0]m_axi_gmem_RRESP;
  input m_axi_gmem_RVALID;
  output [31:0]m_axi_gmem_WDATA;
  output [0:0]m_axi_gmem_WID;
  output m_axi_gmem_WLAST;
  input m_axi_gmem_WREADY;
  output [3:0]m_axi_gmem_WSTRB;
  output m_axi_gmem_WVALID;
  output [31:0]ip_data_ram_Addr_A;
  output ip_data_ram_Clk_A /* synthesis syn_isclock = 1 */;
  output [31:0]ip_data_ram_Din_A;
  input [31:0]ip_data_ram_Dout_A;
  output ip_data_ram_EN_A;
  output ip_data_ram_Rst_A;
  output [3:0]ip_data_ram_WEN_A;
endmodule
