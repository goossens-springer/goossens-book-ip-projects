// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="multi_core_multi_ram_ip_multi_core_multi_ram_ip,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.300000,HLS_SYN_LAT=162,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=1111,HLS_SYN_LUT=1818,HLS_VERSION=2022_1}" *)

module multi_core_multi_ram_ip (
        ap_clk,
        ap_rst_n,
        m_axi_gmem_AWVALID,
        m_axi_gmem_AWREADY,
        m_axi_gmem_AWADDR,
        m_axi_gmem_AWID,
        m_axi_gmem_AWLEN,
        m_axi_gmem_AWSIZE,
        m_axi_gmem_AWBURST,
        m_axi_gmem_AWLOCK,
        m_axi_gmem_AWCACHE,
        m_axi_gmem_AWPROT,
        m_axi_gmem_AWQOS,
        m_axi_gmem_AWREGION,
        m_axi_gmem_AWUSER,
        m_axi_gmem_WVALID,
        m_axi_gmem_WREADY,
        m_axi_gmem_WDATA,
        m_axi_gmem_WSTRB,
        m_axi_gmem_WLAST,
        m_axi_gmem_WID,
        m_axi_gmem_WUSER,
        m_axi_gmem_ARVALID,
        m_axi_gmem_ARREADY,
        m_axi_gmem_ARADDR,
        m_axi_gmem_ARID,
        m_axi_gmem_ARLEN,
        m_axi_gmem_ARSIZE,
        m_axi_gmem_ARBURST,
        m_axi_gmem_ARLOCK,
        m_axi_gmem_ARCACHE,
        m_axi_gmem_ARPROT,
        m_axi_gmem_ARQOS,
        m_axi_gmem_ARREGION,
        m_axi_gmem_ARUSER,
        m_axi_gmem_RVALID,
        m_axi_gmem_RREADY,
        m_axi_gmem_RDATA,
        m_axi_gmem_RLAST,
        m_axi_gmem_RID,
        m_axi_gmem_RUSER,
        m_axi_gmem_RRESP,
        m_axi_gmem_BVALID,
        m_axi_gmem_BREADY,
        m_axi_gmem_BRESP,
        m_axi_gmem_BID,
        m_axi_gmem_BUSER,
        local_ram_Addr_A,
        local_ram_EN_A,
        local_ram_WEN_A,
        local_ram_Din_A,
        local_ram_Dout_A,
        local_ram_Clk_A,
        local_ram_Rst_A,
        s_axi_control_AWVALID,
        s_axi_control_AWREADY,
        s_axi_control_AWADDR,
        s_axi_control_WVALID,
        s_axi_control_WREADY,
        s_axi_control_WDATA,
        s_axi_control_WSTRB,
        s_axi_control_ARVALID,
        s_axi_control_ARREADY,
        s_axi_control_ARADDR,
        s_axi_control_RVALID,
        s_axi_control_RREADY,
        s_axi_control_RDATA,
        s_axi_control_RRESP,
        s_axi_control_BVALID,
        s_axi_control_BREADY,
        s_axi_control_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_state4 = 12'd8;
parameter    ap_ST_fsm_state5 = 12'd16;
parameter    ap_ST_fsm_state6 = 12'd32;
parameter    ap_ST_fsm_state7 = 12'd64;
parameter    ap_ST_fsm_state8 = 12'd128;
parameter    ap_ST_fsm_state9 = 12'd256;
parameter    ap_ST_fsm_state10 = 12'd512;
parameter    ap_ST_fsm_state11 = 12'd1024;
parameter    ap_ST_fsm_state12 = 12'd2048;
parameter    C_S_AXI_CONTROL_DATA_WIDTH = 32;
parameter    C_S_AXI_CONTROL_ADDR_WIDTH = 6;
parameter    C_S_AXI_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_ID_WIDTH = 1;
parameter    C_M_AXI_GMEM_ADDR_WIDTH = 64;
parameter    C_M_AXI_GMEM_DATA_WIDTH = 32;
parameter    C_M_AXI_GMEM_AWUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_ARUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_WUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_RUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_BUSER_WIDTH = 1;
parameter    C_M_AXI_GMEM_USER_VALUE = 0;
parameter    C_M_AXI_GMEM_PROT_VALUE = 0;
parameter    C_M_AXI_GMEM_CACHE_VALUE = 3;
parameter    C_M_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_CONTROL_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_GMEM_WSTRB_WIDTH = (32 / 8);
parameter C_M_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
output   m_axi_gmem_AWVALID;
input   m_axi_gmem_AWREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_AWADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_AWID;
output  [7:0] m_axi_gmem_AWLEN;
output  [2:0] m_axi_gmem_AWSIZE;
output  [1:0] m_axi_gmem_AWBURST;
output  [1:0] m_axi_gmem_AWLOCK;
output  [3:0] m_axi_gmem_AWCACHE;
output  [2:0] m_axi_gmem_AWPROT;
output  [3:0] m_axi_gmem_AWQOS;
output  [3:0] m_axi_gmem_AWREGION;
output  [C_M_AXI_GMEM_AWUSER_WIDTH - 1:0] m_axi_gmem_AWUSER;
output   m_axi_gmem_WVALID;
input   m_axi_gmem_WREADY;
output  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_WDATA;
output  [C_M_AXI_GMEM_WSTRB_WIDTH - 1:0] m_axi_gmem_WSTRB;
output   m_axi_gmem_WLAST;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_WID;
output  [C_M_AXI_GMEM_WUSER_WIDTH - 1:0] m_axi_gmem_WUSER;
output   m_axi_gmem_ARVALID;
input   m_axi_gmem_ARREADY;
output  [C_M_AXI_GMEM_ADDR_WIDTH - 1:0] m_axi_gmem_ARADDR;
output  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_ARID;
output  [7:0] m_axi_gmem_ARLEN;
output  [2:0] m_axi_gmem_ARSIZE;
output  [1:0] m_axi_gmem_ARBURST;
output  [1:0] m_axi_gmem_ARLOCK;
output  [3:0] m_axi_gmem_ARCACHE;
output  [2:0] m_axi_gmem_ARPROT;
output  [3:0] m_axi_gmem_ARQOS;
output  [3:0] m_axi_gmem_ARREGION;
output  [C_M_AXI_GMEM_ARUSER_WIDTH - 1:0] m_axi_gmem_ARUSER;
input   m_axi_gmem_RVALID;
output   m_axi_gmem_RREADY;
input  [C_M_AXI_GMEM_DATA_WIDTH - 1:0] m_axi_gmem_RDATA;
input   m_axi_gmem_RLAST;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_RID;
input  [C_M_AXI_GMEM_RUSER_WIDTH - 1:0] m_axi_gmem_RUSER;
input  [1:0] m_axi_gmem_RRESP;
input   m_axi_gmem_BVALID;
output   m_axi_gmem_BREADY;
input  [1:0] m_axi_gmem_BRESP;
input  [C_M_AXI_GMEM_ID_WIDTH - 1:0] m_axi_gmem_BID;
input  [C_M_AXI_GMEM_BUSER_WIDTH - 1:0] m_axi_gmem_BUSER;
output  [31:0] local_ram_Addr_A;
output   local_ram_EN_A;
output  [3:0] local_ram_WEN_A;
output  [31:0] local_ram_Din_A;
input  [31:0] local_ram_Dout_A;
output   local_ram_Clk_A;
output   local_ram_Rst_A;
input   s_axi_control_AWVALID;
output   s_axi_control_AWREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_AWADDR;
input   s_axi_control_WVALID;
output   s_axi_control_WREADY;
input  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_WDATA;
input  [C_S_AXI_CONTROL_WSTRB_WIDTH - 1:0] s_axi_control_WSTRB;
input   s_axi_control_ARVALID;
output   s_axi_control_ARREADY;
input  [C_S_AXI_CONTROL_ADDR_WIDTH - 1:0] s_axi_control_ARADDR;
output   s_axi_control_RVALID;
input   s_axi_control_RREADY;
output  [C_S_AXI_CONTROL_DATA_WIDTH - 1:0] s_axi_control_RDATA;
output  [1:0] s_axi_control_RRESP;
output   s_axi_control_BVALID;
input   s_axi_control_BREADY;
output  [1:0] s_axi_control_BRESP;
output   interrupt;

reg local_ram_EN_A;
reg[3:0] local_ram_WEN_A;
reg local_ram_Rst_A;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [31:0] ip_num;
wire   [63:0] data_ram;
reg    gmem_blk_n_AW;
wire    ap_CS_fsm_state3;
reg   [0:0] icmp_ln1073_reg_334;
reg   [0:0] i0_V_reg_343;
reg    gmem_blk_n_W;
wire    ap_CS_fsm_state4;
reg    gmem_blk_n_B;
wire    ap_CS_fsm_state9;
reg    gmem_blk_n_AR;
reg    gmem_blk_n_R;
wire    ap_CS_fsm_state10;
reg   [63:0] data_ram_read_reg_324;
wire   [15:0] select_ln1541_fu_175_p3;
reg   [15:0] select_ln1541_reg_329;
wire   [0:0] icmp_ln1073_fu_201_p2;
wire    ap_CS_fsm_state2;
wire   [4:0] add_ln886_fu_207_p2;
reg   [4:0] add_ln886_reg_338;
wire   [0:0] i0_V_fu_213_p1;
reg   [63:0] gmem_addr_reg_352;
reg   [31:0] global_value_1_reg_359;
reg    gmem_AWVALID;
wire    gmem_AWREADY;
reg    gmem_WVALID;
wire    gmem_WREADY;
reg    gmem_ARVALID;
wire    gmem_ARREADY;
wire    gmem_RVALID;
reg    gmem_RREADY;
wire   [31:0] gmem_RDATA;
wire   [8:0] gmem_RFIFONUM;
wire    gmem_BVALID;
reg    gmem_BREADY;
wire   [63:0] zext_ln34_fu_236_p1;
wire  signed [63:0] sext_ln35_fu_272_p1;
reg    ap_predicate_op57_writereq_state3;
reg    ap_predicate_op59_readreq_state3;
reg    ap_block_state3_io;
reg    ap_predicate_op72_writeresp_state9;
reg    ap_block_state9;
reg    ap_predicate_op62_write_state4;
reg    ap_block_state4_io;
reg    ap_predicate_op75_read_state10;
reg    ap_block_state10;
reg   [4:0] i_V_fu_112;
wire    ap_CS_fsm_state11;
reg   [31:0] local_value_fu_116;
reg   [31:0] global_value_fu_120;
wire   [31:0] local_ram_Addr_A_orig;
wire   [0:0] ip_V_fu_171_p1;
wire   [2:0] r_V_fu_217_p4;
wire   [11:0] tmp_fu_227_p4;
wire   [17:0] shl_ln_fu_241_p5;
wire   [63:0] zext_ln35_fu_253_p1;
wire   [63:0] add_ln35_fu_257_p2;
wire   [61:0] trunc_ln_fu_262_p4;
wire    ap_CS_fsm_state12;
reg   [11:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
wire    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
reg    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
end

multi_core_multi_ram_ip_control_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_CONTROL_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_CONTROL_DATA_WIDTH ))
control_s_axi_U(
    .AWVALID(s_axi_control_AWVALID),
    .AWREADY(s_axi_control_AWREADY),
    .AWADDR(s_axi_control_AWADDR),
    .WVALID(s_axi_control_WVALID),
    .WREADY(s_axi_control_WREADY),
    .WDATA(s_axi_control_WDATA),
    .WSTRB(s_axi_control_WSTRB),
    .ARVALID(s_axi_control_ARVALID),
    .ARREADY(s_axi_control_ARREADY),
    .ARADDR(s_axi_control_ARADDR),
    .RVALID(s_axi_control_RVALID),
    .RREADY(s_axi_control_RREADY),
    .RDATA(s_axi_control_RDATA),
    .RRESP(s_axi_control_RRESP),
    .BVALID(s_axi_control_BVALID),
    .BREADY(s_axi_control_BREADY),
    .BRESP(s_axi_control_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .ip_num(ip_num),
    .data_ram(data_ram),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

multi_core_multi_ram_ip_gmem_m_axi #(
    .CONSERVATIVE( 1 ),
    .USER_MAXREQS( 5 ),
    .NUM_READ_OUTSTANDING( 16 ),
    .NUM_WRITE_OUTSTANDING( 16 ),
    .MAX_READ_BURST_LENGTH( 16 ),
    .MAX_WRITE_BURST_LENGTH( 16 ),
    .USER_RFIFONUM_WIDTH( 9 ),
    .C_M_AXI_ID_WIDTH( C_M_AXI_GMEM_ID_WIDTH ),
    .C_M_AXI_ADDR_WIDTH( C_M_AXI_GMEM_ADDR_WIDTH ),
    .C_M_AXI_DATA_WIDTH( C_M_AXI_GMEM_DATA_WIDTH ),
    .C_M_AXI_AWUSER_WIDTH( C_M_AXI_GMEM_AWUSER_WIDTH ),
    .C_M_AXI_ARUSER_WIDTH( C_M_AXI_GMEM_ARUSER_WIDTH ),
    .C_M_AXI_WUSER_WIDTH( C_M_AXI_GMEM_WUSER_WIDTH ),
    .C_M_AXI_RUSER_WIDTH( C_M_AXI_GMEM_RUSER_WIDTH ),
    .C_M_AXI_BUSER_WIDTH( C_M_AXI_GMEM_BUSER_WIDTH ),
    .C_USER_VALUE( C_M_AXI_GMEM_USER_VALUE ),
    .C_PROT_VALUE( C_M_AXI_GMEM_PROT_VALUE ),
    .C_CACHE_VALUE( C_M_AXI_GMEM_CACHE_VALUE ),
    .USER_DW( 32 ),
    .USER_AW( 64 ))
gmem_m_axi_U(
    .AWVALID(m_axi_gmem_AWVALID),
    .AWREADY(m_axi_gmem_AWREADY),
    .AWADDR(m_axi_gmem_AWADDR),
    .AWID(m_axi_gmem_AWID),
    .AWLEN(m_axi_gmem_AWLEN),
    .AWSIZE(m_axi_gmem_AWSIZE),
    .AWBURST(m_axi_gmem_AWBURST),
    .AWLOCK(m_axi_gmem_AWLOCK),
    .AWCACHE(m_axi_gmem_AWCACHE),
    .AWPROT(m_axi_gmem_AWPROT),
    .AWQOS(m_axi_gmem_AWQOS),
    .AWREGION(m_axi_gmem_AWREGION),
    .AWUSER(m_axi_gmem_AWUSER),
    .WVALID(m_axi_gmem_WVALID),
    .WREADY(m_axi_gmem_WREADY),
    .WDATA(m_axi_gmem_WDATA),
    .WSTRB(m_axi_gmem_WSTRB),
    .WLAST(m_axi_gmem_WLAST),
    .WID(m_axi_gmem_WID),
    .WUSER(m_axi_gmem_WUSER),
    .ARVALID(m_axi_gmem_ARVALID),
    .ARREADY(m_axi_gmem_ARREADY),
    .ARADDR(m_axi_gmem_ARADDR),
    .ARID(m_axi_gmem_ARID),
    .ARLEN(m_axi_gmem_ARLEN),
    .ARSIZE(m_axi_gmem_ARSIZE),
    .ARBURST(m_axi_gmem_ARBURST),
    .ARLOCK(m_axi_gmem_ARLOCK),
    .ARCACHE(m_axi_gmem_ARCACHE),
    .ARPROT(m_axi_gmem_ARPROT),
    .ARQOS(m_axi_gmem_ARQOS),
    .ARREGION(m_axi_gmem_ARREGION),
    .ARUSER(m_axi_gmem_ARUSER),
    .RVALID(m_axi_gmem_RVALID),
    .RREADY(m_axi_gmem_RREADY),
    .RDATA(m_axi_gmem_RDATA),
    .RLAST(m_axi_gmem_RLAST),
    .RID(m_axi_gmem_RID),
    .RUSER(m_axi_gmem_RUSER),
    .RRESP(m_axi_gmem_RRESP),
    .BVALID(m_axi_gmem_BVALID),
    .BREADY(m_axi_gmem_BREADY),
    .BRESP(m_axi_gmem_BRESP),
    .BID(m_axi_gmem_BID),
    .BUSER(m_axi_gmem_BUSER),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .I_ARVALID(gmem_ARVALID),
    .I_ARREADY(gmem_ARREADY),
    .I_ARADDR(gmem_addr_reg_352),
    .I_ARLEN(32'd1),
    .I_RVALID(gmem_RVALID),
    .I_RREADY(gmem_RREADY),
    .I_RDATA(gmem_RDATA),
    .I_RFIFONUM(gmem_RFIFONUM),
    .I_AWVALID(gmem_AWVALID),
    .I_AWREADY(gmem_AWREADY),
    .I_AWADDR(gmem_addr_reg_352),
    .I_AWLEN(32'd1),
    .I_WVALID(gmem_WVALID),
    .I_WREADY(gmem_WREADY),
    .I_WDATA(global_value_fu_120),
    .I_WSTRB(4'd15),
    .I_BVALID(gmem_BVALID),
    .I_BREADY(gmem_BREADY)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        global_value_fu_120 <= 32'd19;
    end else if (((1'b1 == ap_CS_fsm_state11) & (i0_V_reg_343 == 1'd1) & (icmp_ln1073_reg_334 == 1'd0))) begin
        global_value_fu_120 <= global_value_1_reg_359;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_V_fu_112 <= 5'd0;
    end else if (((1'b1 == ap_CS_fsm_state11) & (icmp_ln1073_reg_334 == 1'd0))) begin
        i_V_fu_112 <= add_ln886_reg_338;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        local_value_fu_116 <= 32'd18;
    end else if (((1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3) & (i0_V_reg_343 == 1'd1) & (icmp_ln1073_reg_334 == 1'd0))) begin
        local_value_fu_116 <= local_ram_Dout_A;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln886_reg_338 <= add_ln886_fu_207_p2;
        icmp_ln1073_reg_334 <= icmp_ln1073_fu_201_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        data_ram_read_reg_324 <= data_ram;
        select_ln1541_reg_329[15] <= select_ln1541_fu_175_p3[15];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (i0_V_reg_343 == 1'd1) & (icmp_ln1073_reg_334 == 1'd0))) begin
        global_value_1_reg_359 <= gmem_RDATA;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1073_fu_201_p2 == 1'd0))) begin
        gmem_addr_reg_352 <= sext_ln35_fu_272_p1;
        i0_V_reg_343 <= i0_V_fu_213_p1;
    end
end

always @ (*) begin
    if (((ap_predicate_op75_read_state10 == 1'b1) & (gmem_RVALID == 1'b0))) begin
        ap_ST_fsm_state10_blk = 1'b1;
    end else begin
        ap_ST_fsm_state10_blk = 1'b0;
    end
end

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

always @ (*) begin
    if ((ap_start == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_block_state3_io)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_block_state4_io)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

assign ap_ST_fsm_state8_blk = 1'b0;

always @ (*) begin
    if (((ap_predicate_op72_writeresp_state9 == 1'b1) & (gmem_BVALID == 1'b0))) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_io) & (ap_predicate_op59_readreq_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        gmem_ARVALID = 1'b1;
    end else begin
        gmem_ARVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_state3_io) & (ap_predicate_op57_writereq_state3 == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        gmem_AWVALID = 1'b1;
    end else begin
        gmem_AWVALID = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op72_writeresp_state9 == 1'b1) & (gmem_BVALID == 1'b0)) & (ap_predicate_op72_writeresp_state9 == 1'b1) & (1'b1 == ap_CS_fsm_state9))) begin
        gmem_BREADY = 1'b1;
    end else begin
        gmem_BREADY = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_predicate_op75_read_state10 == 1'b1) & (gmem_RVALID == 1'b0)) & (ap_predicate_op75_read_state10 == 1'b1) & (1'b1 == ap_CS_fsm_state10))) begin
        gmem_RREADY = 1'b1;
    end else begin
        gmem_RREADY = 1'b0;
    end
end

always @ (*) begin
    if (((ap_predicate_op62_write_state4 == 1'b1) & (1'b0 == ap_block_state4_io) & (1'b1 == ap_CS_fsm_state4))) begin
        gmem_WVALID = 1'b1;
    end else begin
        gmem_WVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (i0_V_reg_343 == 1'd1) & (icmp_ln1073_reg_334 == 1'd0))) begin
        gmem_blk_n_AR = m_axi_gmem_ARREADY;
    end else begin
        gmem_blk_n_AR = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) & (i0_V_reg_343 == 1'd0) & (icmp_ln1073_reg_334 == 1'd0))) begin
        gmem_blk_n_AW = m_axi_gmem_AWREADY;
    end else begin
        gmem_blk_n_AW = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state9) & (i0_V_reg_343 == 1'd0) & (icmp_ln1073_reg_334 == 1'd0))) begin
        gmem_blk_n_B = m_axi_gmem_BVALID;
    end else begin
        gmem_blk_n_B = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) & (i0_V_reg_343 == 1'd1) & (icmp_ln1073_reg_334 == 1'd0))) begin
        gmem_blk_n_R = m_axi_gmem_RVALID;
    end else begin
        gmem_blk_n_R = 1'b1;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (i0_V_reg_343 == 1'd0) & (icmp_ln1073_reg_334 == 1'd0))) begin
        gmem_blk_n_W = m_axi_gmem_WREADY;
    end else begin
        gmem_blk_n_W = 1'b1;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (i0_V_fu_213_p1 == 1'd1) & (icmp_ln1073_fu_201_p2 == 1'd0)) | ((1'b1 == ap_CS_fsm_state2) & (i0_V_fu_213_p1 == 1'd0) & (icmp_ln1073_fu_201_p2 == 1'd0)))) begin
        local_ram_EN_A = 1'b1;
    end else begin
        local_ram_EN_A = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (i0_V_fu_213_p1 == 1'd0) & (icmp_ln1073_fu_201_p2 == 1'd0))) begin
        local_ram_WEN_A = 4'd15;
    end else begin
        local_ram_WEN_A = 4'd0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1073_fu_201_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b0 == ap_block_state3_io) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b0 == ap_block_state4_io) & (1'b1 == ap_CS_fsm_state4))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if ((~((ap_predicate_op72_writeresp_state9 == 1'b1) & (gmem_BVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            if ((~((ap_predicate_op75_read_state10 == 1'b1) & (gmem_RVALID == 1'b0)) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln35_fu_257_p2 = (zext_ln35_fu_253_p1 + data_ram_read_reg_324);

assign add_ln886_fu_207_p2 = (i_V_fu_112 + 5'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state10 = ((ap_predicate_op75_read_state10 == 1'b1) & (gmem_RVALID == 1'b0));
end

always @ (*) begin
    ap_block_state3_io = (((ap_predicate_op59_readreq_state3 == 1'b1) & (gmem_ARREADY == 1'b0)) | ((ap_predicate_op57_writereq_state3 == 1'b1) & (gmem_AWREADY == 1'b0)));
end

always @ (*) begin
    ap_block_state4_io = ((ap_predicate_op62_write_state4 == 1'b1) & (gmem_WREADY == 1'b0));
end

always @ (*) begin
    ap_block_state9 = ((ap_predicate_op72_writeresp_state9 == 1'b1) & (gmem_BVALID == 1'b0));
end

always @ (*) begin
    ap_predicate_op57_writereq_state3 = ((i0_V_reg_343 == 1'd0) & (icmp_ln1073_reg_334 == 1'd0));
end

always @ (*) begin
    ap_predicate_op59_readreq_state3 = ((i0_V_reg_343 == 1'd1) & (icmp_ln1073_reg_334 == 1'd0));
end

always @ (*) begin
    ap_predicate_op62_write_state4 = ((i0_V_reg_343 == 1'd0) & (icmp_ln1073_reg_334 == 1'd0));
end

always @ (*) begin
    ap_predicate_op72_writeresp_state9 = ((i0_V_reg_343 == 1'd0) & (icmp_ln1073_reg_334 == 1'd0));
end

always @ (*) begin
    ap_predicate_op75_read_state10 = ((i0_V_reg_343 == 1'd1) & (icmp_ln1073_reg_334 == 1'd0));
end

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign i0_V_fu_213_p1 = i_V_fu_112[0:0];

assign icmp_ln1073_fu_201_p2 = ((i_V_fu_112 == 5'd16) ? 1'b1 : 1'b0);

assign ip_V_fu_171_p1 = ip_num[0:0];

assign local_ram_Addr_A = local_ram_Addr_A_orig << 32'd2;

assign local_ram_Addr_A_orig = zext_ln34_fu_236_p1;

assign local_ram_Clk_A = ap_clk;

assign local_ram_Din_A = local_value_fu_116;

always @ (*) begin
    local_ram_Rst_A = ~ap_rst_n;
end

assign r_V_fu_217_p4 = {{i_V_fu_112[3:1]}};

assign select_ln1541_fu_175_p3 = ((ip_V_fu_171_p1[0:0] == 1'b1) ? 16'd8 : 16'd32776);

assign sext_ln35_fu_272_p1 = $signed(trunc_ln_fu_262_p4);

assign shl_ln_fu_241_p5 = {{{{tmp_fu_227_p4}, {1'd1}}, {r_V_fu_217_p4}}, {2'd0}};

assign tmp_fu_227_p4 = {{select_ln1541_reg_329[15:4]}};

assign trunc_ln_fu_262_p4 = {{add_ln35_fu_257_p2[63:2]}};

assign zext_ln34_fu_236_p1 = r_V_fu_217_p4;

assign zext_ln35_fu_253_p1 = shl_ln_fu_241_p5;

always @ (posedge ap_clk) begin
    select_ln1541_reg_329[14:0] <= 15'b000000000001000;
end

endmodule //multi_core_multi_ram_ip
