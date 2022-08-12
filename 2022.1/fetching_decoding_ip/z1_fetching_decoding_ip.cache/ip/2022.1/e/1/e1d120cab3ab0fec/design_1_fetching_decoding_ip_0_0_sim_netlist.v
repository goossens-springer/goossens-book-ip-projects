// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (lin64) Build 3526262 Mon Apr 18 15:47:01 MDT 2022
// Date        : Thu Jul 28 14:24:32 2022
// Host        : goossens-Precision-5530 running 64-bit Ubuntu 22.04 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fetching_decoding_ip_0_0_sim_netlist.v
// Design      : design_1_fetching_decoding_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fetching_decoding_ip_0_0,fetching_decoding_ip,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "HLS" *) 
(* X_CORE_INFO = "fetching_decoding_ip,Vivado 2022.1" *) (* hls_module = "yes" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_control_AWADDR,
    s_axi_control_AWVALID,
    s_axi_control_AWREADY,
    s_axi_control_WDATA,
    s_axi_control_WSTRB,
    s_axi_control_WVALID,
    s_axi_control_WREADY,
    s_axi_control_BRESP,
    s_axi_control_BVALID,
    s_axi_control_BREADY,
    s_axi_control_ARADDR,
    s_axi_control_ARVALID,
    s_axi_control_ARREADY,
    s_axi_control_RDATA,
    s_axi_control_RRESP,
    s_axi_control_RVALID,
    s_axi_control_RREADY,
    ap_clk,
    ap_rst_n,
    interrupt);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWADDR" *) input [18:0]s_axi_control_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWVALID" *) input s_axi_control_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control AWREADY" *) output s_axi_control_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WDATA" *) input [31:0]s_axi_control_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WSTRB" *) input [3:0]s_axi_control_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WVALID" *) input s_axi_control_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control WREADY" *) output s_axi_control_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BRESP" *) output [1:0]s_axi_control_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BVALID" *) output s_axi_control_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control BREADY" *) input s_axi_control_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARADDR" *) input [18:0]s_axi_control_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARVALID" *) input s_axi_control_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control ARREADY" *) output s_axi_control_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RDATA" *) output [31:0]s_axi_control_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RRESP" *) output [1:0]s_axi_control_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RVALID" *) output s_axi_control_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi_control RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_control, ADDR_WIDTH 19, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_control_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_control, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input ap_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output interrupt;

  wire \<const0> ;
  wire ap_clk;
  wire ap_rst_n;
  wire interrupt;
  wire [18:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [18:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [1:0]NLW_inst_s_axi_control_BRESP_UNCONNECTED;
  wire [1:0]NLW_inst_s_axi_control_RRESP_UNCONNECTED;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_S_AXI_CONTROL_ADDR_WIDTH = "19" *) 
  (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
  (* C_S_AXI_DATA_WIDTH = "32" *) 
  (* C_S_AXI_WSTRB_WIDTH = "4" *) 
  (* SDX_KERNEL = "true" *) 
  (* SDX_KERNEL_SYNTH_INST = "inst" *) 
  (* SDX_KERNEL_TYPE = "hls" *) 
  (* ap_ST_fsm_pp0_stage0 = "5'b00010" *) 
  (* ap_ST_fsm_pp0_stage1 = "5'b00100" *) 
  (* ap_ST_fsm_pp0_stage2 = "5'b01000" *) 
  (* ap_ST_fsm_state1 = "5'b00001" *) 
  (* ap_ST_fsm_state6 = "5'b10000" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip inst
       (.ap_clk(ap_clk),
        .ap_rst_n(ap_rst_n),
        .interrupt(interrupt),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARREADY(s_axi_control_ARREADY),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWREADY(s_axi_control_AWREADY),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BRESP(NLW_inst_s_axi_control_BRESP_UNCONNECTED[1:0]),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RRESP(NLW_inst_s_axi_control_RRESP_UNCONNECTED[1:0]),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID));
endmodule

(* C_S_AXI_CONTROL_ADDR_WIDTH = "19" *) (* C_S_AXI_CONTROL_DATA_WIDTH = "32" *) (* C_S_AXI_CONTROL_WSTRB_WIDTH = "4" *) 
(* C_S_AXI_DATA_WIDTH = "32" *) (* C_S_AXI_WSTRB_WIDTH = "4" *) (* ap_ST_fsm_pp0_stage0 = "5'b00010" *) 
(* ap_ST_fsm_pp0_stage1 = "5'b00100" *) (* ap_ST_fsm_pp0_stage2 = "5'b01000" *) (* ap_ST_fsm_state1 = "5'b00001" *) 
(* ap_ST_fsm_state6 = "5'b10000" *) (* hls_module = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip
   (ap_clk,
    ap_rst_n,
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
    interrupt);
  input ap_clk;
  input ap_rst_n;
  input s_axi_control_AWVALID;
  output s_axi_control_AWREADY;
  input [18:0]s_axi_control_AWADDR;
  input s_axi_control_WVALID;
  output s_axi_control_WREADY;
  input [31:0]s_axi_control_WDATA;
  input [3:0]s_axi_control_WSTRB;
  input s_axi_control_ARVALID;
  output s_axi_control_ARREADY;
  input [18:0]s_axi_control_ARADDR;
  output s_axi_control_RVALID;
  input s_axi_control_RREADY;
  output [31:0]s_axi_control_RDATA;
  output [1:0]s_axi_control_RRESP;
  output s_axi_control_BVALID;
  input s_axi_control_BREADY;
  output [1:0]s_axi_control_BRESP;
  output interrupt;

  wire \<const0> ;
  wire ap_CS_fsm_pp0_stage0;
  wire ap_CS_fsm_pp0_stage1;
  wire ap_CS_fsm_pp0_stage2;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire ap_CS_fsm_state6;
  wire [4:0]ap_NS_fsm;
  wire ap_NS_fsm13_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter1_reg_n_0;
  wire ap_rst_n;
  wire ap_rst_n_inv;
  wire control_s_axi_U_n_10;
  wire control_s_axi_U_n_13;
  wire control_s_axi_U_n_15;
  wire control_s_axi_U_n_16;
  wire control_s_axi_U_n_17;
  wire control_s_axi_U_n_18;
  wire control_s_axi_U_n_19;
  wire control_s_axi_U_n_2;
  wire control_s_axi_U_n_20;
  wire control_s_axi_U_n_21;
  wire control_s_axi_U_n_22;
  wire control_s_axi_U_n_23;
  wire control_s_axi_U_n_24;
  wire control_s_axi_U_n_25;
  wire control_s_axi_U_n_26;
  wire control_s_axi_U_n_27;
  wire control_s_axi_U_n_28;
  wire control_s_axi_U_n_29;
  wire control_s_axi_U_n_3;
  wire control_s_axi_U_n_66;
  wire control_s_axi_U_n_67;
  wire control_s_axi_U_n_68;
  wire control_s_axi_U_n_69;
  wire control_s_axi_U_n_70;
  wire control_s_axi_U_n_71;
  wire control_s_axi_U_n_72;
  wire control_s_axi_U_n_73;
  wire control_s_axi_U_n_74;
  wire control_s_axi_U_n_75;
  wire control_s_axi_U_n_76;
  wire control_s_axi_U_n_77;
  wire control_s_axi_U_n_78;
  wire control_s_axi_U_n_79;
  wire control_s_axi_U_n_80;
  wire control_s_axi_U_n_81;
  wire [2:0]d_i_type_V_reg_182;
  wire grp_fetch_fu_87_ap_start_reg;
  wire grp_fetch_fu_87_n_0;
  wire grp_fetch_fu_87_n_1;
  wire grp_fetch_fu_87_n_10;
  wire grp_fetch_fu_87_n_11;
  wire grp_fetch_fu_87_n_12;
  wire grp_fetch_fu_87_n_13;
  wire grp_fetch_fu_87_n_14;
  wire grp_fetch_fu_87_n_15;
  wire grp_fetch_fu_87_n_16;
  wire grp_fetch_fu_87_n_17;
  wire grp_fetch_fu_87_n_18;
  wire grp_fetch_fu_87_n_19;
  wire grp_fetch_fu_87_n_2;
  wire grp_fetch_fu_87_n_20;
  wire grp_fetch_fu_87_n_21;
  wire grp_fetch_fu_87_n_22;
  wire grp_fetch_fu_87_n_23;
  wire grp_fetch_fu_87_n_24;
  wire grp_fetch_fu_87_n_25;
  wire grp_fetch_fu_87_n_26;
  wire grp_fetch_fu_87_n_27;
  wire grp_fetch_fu_87_n_28;
  wire grp_fetch_fu_87_n_29;
  wire grp_fetch_fu_87_n_3;
  wire grp_fetch_fu_87_n_30;
  wire grp_fetch_fu_87_n_31;
  wire grp_fetch_fu_87_n_32;
  wire grp_fetch_fu_87_n_33;
  wire grp_fetch_fu_87_n_34;
  wire grp_fetch_fu_87_n_35;
  wire grp_fetch_fu_87_n_36;
  wire grp_fetch_fu_87_n_37;
  wire grp_fetch_fu_87_n_38;
  wire grp_fetch_fu_87_n_39;
  wire grp_fetch_fu_87_n_4;
  wire grp_fetch_fu_87_n_40;
  wire grp_fetch_fu_87_n_41;
  wire grp_fetch_fu_87_n_42;
  wire grp_fetch_fu_87_n_43;
  wire grp_fetch_fu_87_n_44;
  wire grp_fetch_fu_87_n_45;
  wire grp_fetch_fu_87_n_46;
  wire grp_fetch_fu_87_n_47;
  wire grp_fetch_fu_87_n_48;
  wire grp_fetch_fu_87_n_49;
  wire grp_fetch_fu_87_n_5;
  wire grp_fetch_fu_87_n_50;
  wire grp_fetch_fu_87_n_51;
  wire grp_fetch_fu_87_n_52;
  wire grp_fetch_fu_87_n_53;
  wire grp_fetch_fu_87_n_54;
  wire grp_fetch_fu_87_n_55;
  wire grp_fetch_fu_87_n_56;
  wire grp_fetch_fu_87_n_57;
  wire grp_fetch_fu_87_n_58;
  wire grp_fetch_fu_87_n_59;
  wire grp_fetch_fu_87_n_6;
  wire grp_fetch_fu_87_n_60;
  wire grp_fetch_fu_87_n_61;
  wire grp_fetch_fu_87_n_62;
  wire grp_fetch_fu_87_n_63;
  wire grp_fetch_fu_87_n_64;
  wire grp_fetch_fu_87_n_7;
  wire grp_fetch_fu_87_n_8;
  wire grp_fetch_fu_87_n_9;
  wire interrupt;
  wire is_running_V_reg_192;
  wire is_running_V_running_cond_update_fu_100_ap_return;
  wire \nbi_1_fu_70[0]_i_2_n_0 ;
  wire \nbi_1_fu_70[0]_i_4_n_0 ;
  wire [31:0]nbi_1_fu_70_reg;
  wire \nbi_1_fu_70_reg[0]_i_3_n_0 ;
  wire \nbi_1_fu_70_reg[0]_i_3_n_1 ;
  wire \nbi_1_fu_70_reg[0]_i_3_n_2 ;
  wire \nbi_1_fu_70_reg[0]_i_3_n_3 ;
  wire \nbi_1_fu_70_reg[0]_i_3_n_4 ;
  wire \nbi_1_fu_70_reg[0]_i_3_n_5 ;
  wire \nbi_1_fu_70_reg[0]_i_3_n_6 ;
  wire \nbi_1_fu_70_reg[0]_i_3_n_7 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_0 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_1 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_2 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_3 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_4 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_5 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_6 ;
  wire \nbi_1_fu_70_reg[12]_i_1_n_7 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_0 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_1 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_2 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_3 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_4 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_5 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_6 ;
  wire \nbi_1_fu_70_reg[16]_i_1_n_7 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_0 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_1 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_2 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_3 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_4 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_5 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_6 ;
  wire \nbi_1_fu_70_reg[20]_i_1_n_7 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_0 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_1 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_2 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_3 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_4 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_5 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_6 ;
  wire \nbi_1_fu_70_reg[24]_i_1_n_7 ;
  wire \nbi_1_fu_70_reg[28]_i_1_n_1 ;
  wire \nbi_1_fu_70_reg[28]_i_1_n_2 ;
  wire \nbi_1_fu_70_reg[28]_i_1_n_3 ;
  wire \nbi_1_fu_70_reg[28]_i_1_n_4 ;
  wire \nbi_1_fu_70_reg[28]_i_1_n_5 ;
  wire \nbi_1_fu_70_reg[28]_i_1_n_6 ;
  wire \nbi_1_fu_70_reg[28]_i_1_n_7 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_0 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_1 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_2 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_3 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_4 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_5 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_6 ;
  wire \nbi_1_fu_70_reg[4]_i_1_n_7 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_0 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_1 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_2 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_3 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_4 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_5 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_6 ;
  wire \nbi_1_fu_70_reg[8]_i_1_n_7 ;
  wire [31:0]nbi_reg_196;
  wire nbi_reg_1960;
  wire \nbi_reg_196_reg[12]_i_1_n_0 ;
  wire \nbi_reg_196_reg[12]_i_1_n_1 ;
  wire \nbi_reg_196_reg[12]_i_1_n_2 ;
  wire \nbi_reg_196_reg[12]_i_1_n_3 ;
  wire \nbi_reg_196_reg[16]_i_1_n_0 ;
  wire \nbi_reg_196_reg[16]_i_1_n_1 ;
  wire \nbi_reg_196_reg[16]_i_1_n_2 ;
  wire \nbi_reg_196_reg[16]_i_1_n_3 ;
  wire \nbi_reg_196_reg[20]_i_1_n_0 ;
  wire \nbi_reg_196_reg[20]_i_1_n_1 ;
  wire \nbi_reg_196_reg[20]_i_1_n_2 ;
  wire \nbi_reg_196_reg[20]_i_1_n_3 ;
  wire \nbi_reg_196_reg[24]_i_1_n_0 ;
  wire \nbi_reg_196_reg[24]_i_1_n_1 ;
  wire \nbi_reg_196_reg[24]_i_1_n_2 ;
  wire \nbi_reg_196_reg[24]_i_1_n_3 ;
  wire \nbi_reg_196_reg[28]_i_1_n_0 ;
  wire \nbi_reg_196_reg[28]_i_1_n_1 ;
  wire \nbi_reg_196_reg[28]_i_1_n_2 ;
  wire \nbi_reg_196_reg[28]_i_1_n_3 ;
  wire \nbi_reg_196_reg[31]_i_2_n_2 ;
  wire \nbi_reg_196_reg[31]_i_2_n_3 ;
  wire \nbi_reg_196_reg[4]_i_1_n_0 ;
  wire \nbi_reg_196_reg[4]_i_1_n_1 ;
  wire \nbi_reg_196_reg[4]_i_1_n_2 ;
  wire \nbi_reg_196_reg[4]_i_1_n_3 ;
  wire \nbi_reg_196_reg[8]_i_1_n_0 ;
  wire \nbi_reg_196_reg[8]_i_1_n_1 ;
  wire \nbi_reg_196_reg[8]_i_1_n_2 ;
  wire \nbi_reg_196_reg[8]_i_1_n_3 ;
  wire [31:0]nbi_statistic_update_fu_113_ap_return;
  wire [15:0]pc_V_fu_66;
  wire \pc_V_fu_66_reg[0]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[0]_rep_n_0 ;
  wire \pc_V_fu_66_reg[10]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[10]_rep_n_0 ;
  wire \pc_V_fu_66_reg[11]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[11]_rep_n_0 ;
  wire \pc_V_fu_66_reg[12]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[12]_rep_n_0 ;
  wire \pc_V_fu_66_reg[13]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[13]_rep_n_0 ;
  wire \pc_V_fu_66_reg[14]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[14]_rep_n_0 ;
  wire \pc_V_fu_66_reg[15]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[15]_rep_n_0 ;
  wire \pc_V_fu_66_reg[1]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[1]_rep_n_0 ;
  wire \pc_V_fu_66_reg[2]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[2]_rep_n_0 ;
  wire \pc_V_fu_66_reg[3]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[3]_rep_n_0 ;
  wire \pc_V_fu_66_reg[4]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[4]_rep_n_0 ;
  wire \pc_V_fu_66_reg[5]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[5]_rep_n_0 ;
  wire \pc_V_fu_66_reg[6]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[6]_rep_n_0 ;
  wire \pc_V_fu_66_reg[7]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[7]_rep_n_0 ;
  wire \pc_V_fu_66_reg[8]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[8]_rep_n_0 ;
  wire \pc_V_fu_66_reg[9]_rep__0_n_0 ;
  wire \pc_V_fu_66_reg[9]_rep_n_0 ;
  wire [15:0]pc_V_load_reg_176;
  wire [18:0]s_axi_control_ARADDR;
  wire s_axi_control_ARREADY;
  wire s_axi_control_ARVALID;
  wire [18:0]s_axi_control_AWADDR;
  wire s_axi_control_AWREADY;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [15:0]select_ln7_2_fu_136_p3;
  wire [4:1]trunc_ln34_fu_144_p1;
  wire [16:1]trunc_ln34_reg_187;
  wire [3:3]\NLW_nbi_1_fu_70_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_nbi_reg_196_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_nbi_reg_196_reg[31]_i_2_O_UNCONNECTED ;

  assign s_axi_control_BRESP[1] = \<const0> ;
  assign s_axi_control_BRESP[0] = \<const0> ;
  assign s_axi_control_RRESP[1] = \<const0> ;
  assign s_axi_control_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \ap_CS_fsm[2]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(ap_CS_fsm_pp0_stage0),
        .O(ap_NS_fsm[2]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ap_CS_fsm[4]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_CS_fsm_pp0_stage0),
        .I2(ap_enable_reg_pp0_iter0),
        .O(ap_NS_fsm[4]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(ap_CS_fsm_pp0_stage0),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[2]),
        .Q(ap_CS_fsm_pp0_stage1),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_CS_fsm_pp0_stage1),
        .Q(ap_CS_fsm_pp0_stage2),
        .R(ap_rst_n_inv));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[4] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[4]),
        .Q(ap_CS_fsm_state6),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter0_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_13),
        .Q(ap_enable_reg_pp0_iter0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    ap_enable_reg_pp0_iter1_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(control_s_axi_U_n_3),
        .Q(ap_enable_reg_pp0_iter1_reg_n_0),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_control_s_axi control_s_axi_U
       (.ADDRBWRADDR({\pc_V_fu_66_reg[15]_rep_n_0 ,\pc_V_fu_66_reg[14]_rep_n_0 ,\pc_V_fu_66_reg[13]_rep_n_0 ,\pc_V_fu_66_reg[12]_rep_n_0 ,\pc_V_fu_66_reg[11]_rep_n_0 ,\pc_V_fu_66_reg[10]_rep_n_0 ,\pc_V_fu_66_reg[9]_rep_n_0 ,\pc_V_fu_66_reg[8]_rep_n_0 ,\pc_V_fu_66_reg[7]_rep_n_0 ,\pc_V_fu_66_reg[6]_rep_n_0 ,\pc_V_fu_66_reg[5]_rep_n_0 ,\pc_V_fu_66_reg[4]_rep_n_0 ,\pc_V_fu_66_reg[3]_rep_n_0 ,\pc_V_fu_66_reg[2]_rep_n_0 ,\pc_V_fu_66_reg[1]_rep_n_0 ,\pc_V_fu_66_reg[0]_rep_n_0 }),
        .D(ap_NS_fsm[1:0]),
        .\FSM_onehot_rstate_reg[1]_0 (s_axi_control_ARREADY),
        .\FSM_onehot_wstate_reg[1]_0 (s_axi_control_AWREADY),
        .Q({ap_CS_fsm_state6,ap_CS_fsm_pp0_stage2,ap_CS_fsm_pp0_stage0,\ap_CS_fsm_reg_n_0_[0] }),
        .ap_NS_fsm13_out(ap_NS_fsm13_out),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ap_enable_reg_pp0_iter1_reg(control_s_axi_U_n_3),
        .ap_enable_reg_pp0_iter1_reg_0(ap_enable_reg_pp0_iter1_reg_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(control_s_axi_U_n_13),
        .ap_rst_n_inv(ap_rst_n_inv),
        .ce0(grp_fetch_fu_87_n_63),
        .\int_nb_instruction_reg[31]_0 (nbi_reg_196),
        .interrupt(interrupt),
        .is_running_V_reg_192(is_running_V_reg_192),
        .\is_running_V_reg_192_reg[0] (control_s_axi_U_n_10),
        .is_running_V_running_cond_update_fu_100_ap_return(is_running_V_running_cond_update_fu_100_ap_return),
        .mem_reg_0_0_0(grp_fetch_fu_87_n_0),
        .mem_reg_0_0_1(grp_fetch_fu_87_n_2),
        .mem_reg_0_0_2(grp_fetch_fu_87_n_4),
        .mem_reg_0_0_3(grp_fetch_fu_87_n_6),
        .mem_reg_0_0_4(grp_fetch_fu_87_n_8),
        .mem_reg_0_0_5(grp_fetch_fu_87_n_10),
        .mem_reg_0_0_6(grp_fetch_fu_87_n_12),
        .mem_reg_0_0_7(grp_fetch_fu_87_n_14),
        .mem_reg_0_1_0({\pc_V_fu_66_reg[15]_rep__0_n_0 ,\pc_V_fu_66_reg[14]_rep__0_n_0 ,\pc_V_fu_66_reg[13]_rep__0_n_0 ,\pc_V_fu_66_reg[12]_rep__0_n_0 ,\pc_V_fu_66_reg[11]_rep__0_n_0 ,\pc_V_fu_66_reg[10]_rep__0_n_0 ,\pc_V_fu_66_reg[9]_rep__0_n_0 ,\pc_V_fu_66_reg[8]_rep__0_n_0 ,\pc_V_fu_66_reg[7]_rep__0_n_0 ,\pc_V_fu_66_reg[6]_rep__0_n_0 ,\pc_V_fu_66_reg[5]_rep__0_n_0 ,\pc_V_fu_66_reg[4]_rep__0_n_0 ,\pc_V_fu_66_reg[3]_rep__0_n_0 ,\pc_V_fu_66_reg[2]_rep__0_n_0 ,\pc_V_fu_66_reg[1]_rep__0_n_0 ,\pc_V_fu_66_reg[0]_rep__0_n_0 }),
        .mem_reg_0_1_0_0(grp_fetch_fu_87_n_1),
        .mem_reg_0_1_1(grp_fetch_fu_87_n_3),
        .mem_reg_0_1_2(control_s_axi_U_n_16),
        .mem_reg_0_1_2_0(control_s_axi_U_n_17),
        .mem_reg_0_1_2_1(control_s_axi_U_n_24),
        .mem_reg_0_1_2_2(grp_fetch_fu_87_n_5),
        .mem_reg_0_1_3(grp_fetch_fu_87_n_7),
        .mem_reg_0_1_4(grp_fetch_fu_87_n_9),
        .mem_reg_0_1_5(grp_fetch_fu_87_n_11),
        .mem_reg_0_1_6(control_s_axi_U_n_2),
        .mem_reg_0_1_6_0(grp_fetch_fu_87_n_13),
        .mem_reg_0_1_7(grp_fetch_fu_87_n_15),
        .mem_reg_1_0_0(grp_fetch_fu_87_n_16),
        .mem_reg_1_0_1(grp_fetch_fu_87_n_18),
        .mem_reg_1_0_2(grp_fetch_fu_87_n_20),
        .mem_reg_1_0_3(grp_fetch_fu_87_n_22),
        .mem_reg_1_0_4(grp_fetch_fu_87_n_24),
        .mem_reg_1_0_5(grp_fetch_fu_87_n_26),
        .mem_reg_1_0_6(grp_fetch_fu_87_n_28),
        .mem_reg_1_0_7(grp_fetch_fu_87_n_30),
        .mem_reg_1_1_0(grp_fetch_fu_87_n_17),
        .mem_reg_1_1_1(grp_fetch_fu_87_n_19),
        .mem_reg_1_1_2(grp_fetch_fu_87_n_21),
        .mem_reg_1_1_3(grp_fetch_fu_87_n_23),
        .mem_reg_1_1_4(grp_fetch_fu_87_n_25),
        .mem_reg_1_1_5(grp_fetch_fu_87_n_27),
        .mem_reg_1_1_6(grp_fetch_fu_87_n_29),
        .mem_reg_1_1_7(grp_fetch_fu_87_n_31),
        .mem_reg_2_0_0(grp_fetch_fu_87_n_32),
        .mem_reg_2_0_1(grp_fetch_fu_87_n_34),
        .mem_reg_2_0_2(grp_fetch_fu_87_n_36),
        .mem_reg_2_0_3(grp_fetch_fu_87_n_38),
        .mem_reg_2_0_4(grp_fetch_fu_87_n_40),
        .mem_reg_2_0_5(grp_fetch_fu_87_n_42),
        .mem_reg_2_0_5_0(pc_V_fu_66),
        .mem_reg_2_0_6(grp_fetch_fu_87_n_44),
        .mem_reg_2_0_7(grp_fetch_fu_87_n_46),
        .mem_reg_2_1_0(grp_fetch_fu_87_n_33),
        .mem_reg_2_1_1(grp_fetch_fu_87_n_35),
        .mem_reg_2_1_2(grp_fetch_fu_87_n_37),
        .mem_reg_2_1_3(grp_fetch_fu_87_n_39),
        .mem_reg_2_1_4(grp_fetch_fu_87_n_41),
        .mem_reg_2_1_5(grp_fetch_fu_87_n_43),
        .mem_reg_2_1_6(grp_fetch_fu_87_n_45),
        .mem_reg_2_1_7(grp_fetch_fu_87_n_47),
        .mem_reg_3_0_0(grp_fetch_fu_87_n_48),
        .mem_reg_3_0_1(grp_fetch_fu_87_n_50),
        .mem_reg_3_0_2(grp_fetch_fu_87_n_52),
        .mem_reg_3_0_3(grp_fetch_fu_87_n_54),
        .mem_reg_3_0_4(grp_fetch_fu_87_n_56),
        .mem_reg_3_0_5(grp_fetch_fu_87_n_58),
        .mem_reg_3_0_6(grp_fetch_fu_87_n_60),
        .mem_reg_3_0_7(grp_fetch_fu_87_n_62),
        .mem_reg_3_1_0(grp_fetch_fu_87_n_49),
        .mem_reg_3_1_1(control_s_axi_U_n_15),
        .mem_reg_3_1_1_0(grp_fetch_fu_87_n_51),
        .mem_reg_3_1_2(control_s_axi_U_n_18),
        .mem_reg_3_1_2_0(grp_fetch_fu_87_n_53),
        .mem_reg_3_1_3(control_s_axi_U_n_19),
        .mem_reg_3_1_3_0(grp_fetch_fu_87_n_55),
        .mem_reg_3_1_4(control_s_axi_U_n_20),
        .mem_reg_3_1_4_0(grp_fetch_fu_87_n_57),
        .mem_reg_3_1_5(control_s_axi_U_n_21),
        .mem_reg_3_1_5_0(grp_fetch_fu_87_n_59),
        .mem_reg_3_1_6(control_s_axi_U_n_22),
        .mem_reg_3_1_6_0(grp_fetch_fu_87_n_61),
        .mem_reg_3_1_7(control_s_axi_U_n_23),
        .mem_reg_3_1_7_0(control_s_axi_U_n_25),
        .mem_reg_3_1_7_1(control_s_axi_U_n_26),
        .mem_reg_3_1_7_2(control_s_axi_U_n_27),
        .mem_reg_3_1_7_3(control_s_axi_U_n_28),
        .mem_reg_3_1_7_4(control_s_axi_U_n_29),
        .out({control_s_axi_U_n_66,control_s_axi_U_n_67,control_s_axi_U_n_68,control_s_axi_U_n_69,control_s_axi_U_n_70,control_s_axi_U_n_71,control_s_axi_U_n_72,control_s_axi_U_n_73,control_s_axi_U_n_74,control_s_axi_U_n_75,control_s_axi_U_n_76,control_s_axi_U_n_77,control_s_axi_U_n_78,control_s_axi_U_n_79,control_s_axi_U_n_80,control_s_axi_U_n_81}),
        .\pc_V_fu_66_reg[15]_rep__0 (pc_V_load_reg_176),
        .s_axi_control_ARADDR(s_axi_control_ARADDR),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_AWADDR(s_axi_control_AWADDR),
        .s_axi_control_AWVALID(s_axi_control_AWVALID),
        .s_axi_control_BREADY(s_axi_control_BREADY),
        .s_axi_control_BVALID(s_axi_control_BVALID),
        .s_axi_control_RDATA(s_axi_control_RDATA),
        .s_axi_control_RREADY(s_axi_control_RREADY),
        .s_axi_control_RVALID(s_axi_control_RVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WREADY(s_axi_control_WREADY),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .select_ln7_2_fu_136_p3(select_ln7_2_fu_136_p3),
        .trunc_ln34_fu_144_p1(trunc_ln34_fu_144_p1));
  FDRE \d_i_type_V_reg_182_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_24),
        .Q(d_i_type_V_reg_182[0]),
        .R(1'b0));
  FDRE \d_i_type_V_reg_182_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_16),
        .Q(d_i_type_V_reg_182[1]),
        .R(1'b0));
  FDRE \d_i_type_V_reg_182_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_17),
        .Q(d_i_type_V_reg_182[2]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_fetch grp_fetch_fu_87
       (.Q(ap_CS_fsm_pp0_stage0),
        .SR(ap_rst_n_inv),
        .\ap_CS_fsm_reg[1]_0 (grp_fetch_fu_87_n_64),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0(ap_enable_reg_pp0_iter0),
        .ce0(grp_fetch_fu_87_n_63),
        .grp_fetch_fu_87_ap_start_reg(grp_fetch_fu_87_ap_start_reg),
        .grp_fetch_fu_87_ap_start_reg_reg(grp_fetch_fu_87_n_0),
        .grp_fetch_fu_87_ap_start_reg_reg_0(grp_fetch_fu_87_n_1),
        .grp_fetch_fu_87_ap_start_reg_reg_1(grp_fetch_fu_87_n_2),
        .grp_fetch_fu_87_ap_start_reg_reg_10(grp_fetch_fu_87_n_11),
        .grp_fetch_fu_87_ap_start_reg_reg_11(grp_fetch_fu_87_n_12),
        .grp_fetch_fu_87_ap_start_reg_reg_12(grp_fetch_fu_87_n_13),
        .grp_fetch_fu_87_ap_start_reg_reg_13(grp_fetch_fu_87_n_14),
        .grp_fetch_fu_87_ap_start_reg_reg_14(grp_fetch_fu_87_n_15),
        .grp_fetch_fu_87_ap_start_reg_reg_15(grp_fetch_fu_87_n_16),
        .grp_fetch_fu_87_ap_start_reg_reg_16(grp_fetch_fu_87_n_17),
        .grp_fetch_fu_87_ap_start_reg_reg_17(grp_fetch_fu_87_n_18),
        .grp_fetch_fu_87_ap_start_reg_reg_18(grp_fetch_fu_87_n_19),
        .grp_fetch_fu_87_ap_start_reg_reg_19(grp_fetch_fu_87_n_20),
        .grp_fetch_fu_87_ap_start_reg_reg_2(grp_fetch_fu_87_n_3),
        .grp_fetch_fu_87_ap_start_reg_reg_20(grp_fetch_fu_87_n_21),
        .grp_fetch_fu_87_ap_start_reg_reg_21(grp_fetch_fu_87_n_22),
        .grp_fetch_fu_87_ap_start_reg_reg_22(grp_fetch_fu_87_n_23),
        .grp_fetch_fu_87_ap_start_reg_reg_23(grp_fetch_fu_87_n_24),
        .grp_fetch_fu_87_ap_start_reg_reg_24(grp_fetch_fu_87_n_25),
        .grp_fetch_fu_87_ap_start_reg_reg_25(grp_fetch_fu_87_n_26),
        .grp_fetch_fu_87_ap_start_reg_reg_26(grp_fetch_fu_87_n_27),
        .grp_fetch_fu_87_ap_start_reg_reg_27(grp_fetch_fu_87_n_28),
        .grp_fetch_fu_87_ap_start_reg_reg_28(grp_fetch_fu_87_n_29),
        .grp_fetch_fu_87_ap_start_reg_reg_29(grp_fetch_fu_87_n_30),
        .grp_fetch_fu_87_ap_start_reg_reg_3(grp_fetch_fu_87_n_4),
        .grp_fetch_fu_87_ap_start_reg_reg_30(grp_fetch_fu_87_n_31),
        .grp_fetch_fu_87_ap_start_reg_reg_31(grp_fetch_fu_87_n_32),
        .grp_fetch_fu_87_ap_start_reg_reg_32(grp_fetch_fu_87_n_33),
        .grp_fetch_fu_87_ap_start_reg_reg_33(grp_fetch_fu_87_n_34),
        .grp_fetch_fu_87_ap_start_reg_reg_34(grp_fetch_fu_87_n_35),
        .grp_fetch_fu_87_ap_start_reg_reg_35(grp_fetch_fu_87_n_36),
        .grp_fetch_fu_87_ap_start_reg_reg_36(grp_fetch_fu_87_n_37),
        .grp_fetch_fu_87_ap_start_reg_reg_37(grp_fetch_fu_87_n_38),
        .grp_fetch_fu_87_ap_start_reg_reg_38(grp_fetch_fu_87_n_39),
        .grp_fetch_fu_87_ap_start_reg_reg_39(grp_fetch_fu_87_n_40),
        .grp_fetch_fu_87_ap_start_reg_reg_4(grp_fetch_fu_87_n_5),
        .grp_fetch_fu_87_ap_start_reg_reg_40(grp_fetch_fu_87_n_41),
        .grp_fetch_fu_87_ap_start_reg_reg_41(grp_fetch_fu_87_n_42),
        .grp_fetch_fu_87_ap_start_reg_reg_42(grp_fetch_fu_87_n_43),
        .grp_fetch_fu_87_ap_start_reg_reg_43(grp_fetch_fu_87_n_44),
        .grp_fetch_fu_87_ap_start_reg_reg_44(grp_fetch_fu_87_n_45),
        .grp_fetch_fu_87_ap_start_reg_reg_45(grp_fetch_fu_87_n_46),
        .grp_fetch_fu_87_ap_start_reg_reg_46(grp_fetch_fu_87_n_47),
        .grp_fetch_fu_87_ap_start_reg_reg_47(grp_fetch_fu_87_n_48),
        .grp_fetch_fu_87_ap_start_reg_reg_48(grp_fetch_fu_87_n_49),
        .grp_fetch_fu_87_ap_start_reg_reg_49(grp_fetch_fu_87_n_50),
        .grp_fetch_fu_87_ap_start_reg_reg_5(grp_fetch_fu_87_n_6),
        .grp_fetch_fu_87_ap_start_reg_reg_50(grp_fetch_fu_87_n_51),
        .grp_fetch_fu_87_ap_start_reg_reg_51(grp_fetch_fu_87_n_52),
        .grp_fetch_fu_87_ap_start_reg_reg_52(grp_fetch_fu_87_n_53),
        .grp_fetch_fu_87_ap_start_reg_reg_53(grp_fetch_fu_87_n_54),
        .grp_fetch_fu_87_ap_start_reg_reg_54(grp_fetch_fu_87_n_55),
        .grp_fetch_fu_87_ap_start_reg_reg_55(grp_fetch_fu_87_n_56),
        .grp_fetch_fu_87_ap_start_reg_reg_56(grp_fetch_fu_87_n_57),
        .grp_fetch_fu_87_ap_start_reg_reg_57(grp_fetch_fu_87_n_58),
        .grp_fetch_fu_87_ap_start_reg_reg_58(grp_fetch_fu_87_n_59),
        .grp_fetch_fu_87_ap_start_reg_reg_59(grp_fetch_fu_87_n_60),
        .grp_fetch_fu_87_ap_start_reg_reg_6(grp_fetch_fu_87_n_7),
        .grp_fetch_fu_87_ap_start_reg_reg_60(grp_fetch_fu_87_n_61),
        .grp_fetch_fu_87_ap_start_reg_reg_61(grp_fetch_fu_87_n_62),
        .grp_fetch_fu_87_ap_start_reg_reg_7(grp_fetch_fu_87_n_8),
        .grp_fetch_fu_87_ap_start_reg_reg_8(grp_fetch_fu_87_n_9),
        .grp_fetch_fu_87_ap_start_reg_reg_9(grp_fetch_fu_87_n_10));
  FDRE #(
    .INIT(1'b0)) 
    grp_fetch_fu_87_ap_start_reg_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(grp_fetch_fu_87_n_64),
        .Q(grp_fetch_fu_87_ap_start_reg),
        .R(ap_rst_n_inv));
  FDRE \is_running_V_reg_192_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(is_running_V_running_cond_update_fu_100_ap_return),
        .Q(is_running_V_reg_192),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \nbi_1_fu_70[0]_i_2 
       (.I0(ap_CS_fsm_pp0_stage0),
        .I1(ap_enable_reg_pp0_iter1_reg_n_0),
        .I2(is_running_V_reg_192),
        .O(\nbi_1_fu_70[0]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \nbi_1_fu_70[0]_i_4 
       (.I0(nbi_1_fu_70_reg[0]),
        .O(\nbi_1_fu_70[0]_i_4_n_0 ));
  FDRE \nbi_1_fu_70_reg[0] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[0]_i_3_n_7 ),
        .Q(nbi_1_fu_70_reg[0]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\nbi_1_fu_70_reg[0]_i_3_n_0 ,\nbi_1_fu_70_reg[0]_i_3_n_1 ,\nbi_1_fu_70_reg[0]_i_3_n_2 ,\nbi_1_fu_70_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\nbi_1_fu_70_reg[0]_i_3_n_4 ,\nbi_1_fu_70_reg[0]_i_3_n_5 ,\nbi_1_fu_70_reg[0]_i_3_n_6 ,\nbi_1_fu_70_reg[0]_i_3_n_7 }),
        .S({nbi_1_fu_70_reg[3:1],\nbi_1_fu_70[0]_i_4_n_0 }));
  FDRE \nbi_1_fu_70_reg[10] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[8]_i_1_n_5 ),
        .Q(nbi_1_fu_70_reg[10]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[11] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[8]_i_1_n_4 ),
        .Q(nbi_1_fu_70_reg[11]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[12] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[12]_i_1_n_7 ),
        .Q(nbi_1_fu_70_reg[12]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[12]_i_1 
       (.CI(\nbi_1_fu_70_reg[8]_i_1_n_0 ),
        .CO({\nbi_1_fu_70_reg[12]_i_1_n_0 ,\nbi_1_fu_70_reg[12]_i_1_n_1 ,\nbi_1_fu_70_reg[12]_i_1_n_2 ,\nbi_1_fu_70_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nbi_1_fu_70_reg[12]_i_1_n_4 ,\nbi_1_fu_70_reg[12]_i_1_n_5 ,\nbi_1_fu_70_reg[12]_i_1_n_6 ,\nbi_1_fu_70_reg[12]_i_1_n_7 }),
        .S(nbi_1_fu_70_reg[15:12]));
  FDRE \nbi_1_fu_70_reg[13] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[12]_i_1_n_6 ),
        .Q(nbi_1_fu_70_reg[13]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[14] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[12]_i_1_n_5 ),
        .Q(nbi_1_fu_70_reg[14]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[15] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[12]_i_1_n_4 ),
        .Q(nbi_1_fu_70_reg[15]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[16] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[16]_i_1_n_7 ),
        .Q(nbi_1_fu_70_reg[16]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[16]_i_1 
       (.CI(\nbi_1_fu_70_reg[12]_i_1_n_0 ),
        .CO({\nbi_1_fu_70_reg[16]_i_1_n_0 ,\nbi_1_fu_70_reg[16]_i_1_n_1 ,\nbi_1_fu_70_reg[16]_i_1_n_2 ,\nbi_1_fu_70_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nbi_1_fu_70_reg[16]_i_1_n_4 ,\nbi_1_fu_70_reg[16]_i_1_n_5 ,\nbi_1_fu_70_reg[16]_i_1_n_6 ,\nbi_1_fu_70_reg[16]_i_1_n_7 }),
        .S(nbi_1_fu_70_reg[19:16]));
  FDRE \nbi_1_fu_70_reg[17] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[16]_i_1_n_6 ),
        .Q(nbi_1_fu_70_reg[17]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[18] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[16]_i_1_n_5 ),
        .Q(nbi_1_fu_70_reg[18]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[19] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[16]_i_1_n_4 ),
        .Q(nbi_1_fu_70_reg[19]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[1] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[0]_i_3_n_6 ),
        .Q(nbi_1_fu_70_reg[1]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[20] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[20]_i_1_n_7 ),
        .Q(nbi_1_fu_70_reg[20]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[20]_i_1 
       (.CI(\nbi_1_fu_70_reg[16]_i_1_n_0 ),
        .CO({\nbi_1_fu_70_reg[20]_i_1_n_0 ,\nbi_1_fu_70_reg[20]_i_1_n_1 ,\nbi_1_fu_70_reg[20]_i_1_n_2 ,\nbi_1_fu_70_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nbi_1_fu_70_reg[20]_i_1_n_4 ,\nbi_1_fu_70_reg[20]_i_1_n_5 ,\nbi_1_fu_70_reg[20]_i_1_n_6 ,\nbi_1_fu_70_reg[20]_i_1_n_7 }),
        .S(nbi_1_fu_70_reg[23:20]));
  FDRE \nbi_1_fu_70_reg[21] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[20]_i_1_n_6 ),
        .Q(nbi_1_fu_70_reg[21]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[22] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[20]_i_1_n_5 ),
        .Q(nbi_1_fu_70_reg[22]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[23] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[20]_i_1_n_4 ),
        .Q(nbi_1_fu_70_reg[23]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[24] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[24]_i_1_n_7 ),
        .Q(nbi_1_fu_70_reg[24]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[24]_i_1 
       (.CI(\nbi_1_fu_70_reg[20]_i_1_n_0 ),
        .CO({\nbi_1_fu_70_reg[24]_i_1_n_0 ,\nbi_1_fu_70_reg[24]_i_1_n_1 ,\nbi_1_fu_70_reg[24]_i_1_n_2 ,\nbi_1_fu_70_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nbi_1_fu_70_reg[24]_i_1_n_4 ,\nbi_1_fu_70_reg[24]_i_1_n_5 ,\nbi_1_fu_70_reg[24]_i_1_n_6 ,\nbi_1_fu_70_reg[24]_i_1_n_7 }),
        .S(nbi_1_fu_70_reg[27:24]));
  FDRE \nbi_1_fu_70_reg[25] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[24]_i_1_n_6 ),
        .Q(nbi_1_fu_70_reg[25]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[26] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[24]_i_1_n_5 ),
        .Q(nbi_1_fu_70_reg[26]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[27] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[24]_i_1_n_4 ),
        .Q(nbi_1_fu_70_reg[27]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[28] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[28]_i_1_n_7 ),
        .Q(nbi_1_fu_70_reg[28]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[28]_i_1 
       (.CI(\nbi_1_fu_70_reg[24]_i_1_n_0 ),
        .CO({\NLW_nbi_1_fu_70_reg[28]_i_1_CO_UNCONNECTED [3],\nbi_1_fu_70_reg[28]_i_1_n_1 ,\nbi_1_fu_70_reg[28]_i_1_n_2 ,\nbi_1_fu_70_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nbi_1_fu_70_reg[28]_i_1_n_4 ,\nbi_1_fu_70_reg[28]_i_1_n_5 ,\nbi_1_fu_70_reg[28]_i_1_n_6 ,\nbi_1_fu_70_reg[28]_i_1_n_7 }),
        .S(nbi_1_fu_70_reg[31:28]));
  FDRE \nbi_1_fu_70_reg[29] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[28]_i_1_n_6 ),
        .Q(nbi_1_fu_70_reg[29]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[2] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[0]_i_3_n_5 ),
        .Q(nbi_1_fu_70_reg[2]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[30] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[28]_i_1_n_5 ),
        .Q(nbi_1_fu_70_reg[30]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[31] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[28]_i_1_n_4 ),
        .Q(nbi_1_fu_70_reg[31]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[3] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[0]_i_3_n_4 ),
        .Q(nbi_1_fu_70_reg[3]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[4] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[4]_i_1_n_7 ),
        .Q(nbi_1_fu_70_reg[4]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[4]_i_1 
       (.CI(\nbi_1_fu_70_reg[0]_i_3_n_0 ),
        .CO({\nbi_1_fu_70_reg[4]_i_1_n_0 ,\nbi_1_fu_70_reg[4]_i_1_n_1 ,\nbi_1_fu_70_reg[4]_i_1_n_2 ,\nbi_1_fu_70_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nbi_1_fu_70_reg[4]_i_1_n_4 ,\nbi_1_fu_70_reg[4]_i_1_n_5 ,\nbi_1_fu_70_reg[4]_i_1_n_6 ,\nbi_1_fu_70_reg[4]_i_1_n_7 }),
        .S(nbi_1_fu_70_reg[7:4]));
  FDRE \nbi_1_fu_70_reg[5] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[4]_i_1_n_6 ),
        .Q(nbi_1_fu_70_reg[5]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[6] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[4]_i_1_n_5 ),
        .Q(nbi_1_fu_70_reg[6]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[7] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[4]_i_1_n_4 ),
        .Q(nbi_1_fu_70_reg[7]),
        .R(ap_NS_fsm13_out));
  FDRE \nbi_1_fu_70_reg[8] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[8]_i_1_n_7 ),
        .Q(nbi_1_fu_70_reg[8]),
        .R(ap_NS_fsm13_out));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \nbi_1_fu_70_reg[8]_i_1 
       (.CI(\nbi_1_fu_70_reg[4]_i_1_n_0 ),
        .CO({\nbi_1_fu_70_reg[8]_i_1_n_0 ,\nbi_1_fu_70_reg[8]_i_1_n_1 ,\nbi_1_fu_70_reg[8]_i_1_n_2 ,\nbi_1_fu_70_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\nbi_1_fu_70_reg[8]_i_1_n_4 ,\nbi_1_fu_70_reg[8]_i_1_n_5 ,\nbi_1_fu_70_reg[8]_i_1_n_6 ,\nbi_1_fu_70_reg[8]_i_1_n_7 }),
        .S(nbi_1_fu_70_reg[11:8]));
  FDRE \nbi_1_fu_70_reg[9] 
       (.C(ap_clk),
        .CE(\nbi_1_fu_70[0]_i_2_n_0 ),
        .D(\nbi_1_fu_70_reg[8]_i_1_n_6 ),
        .Q(nbi_1_fu_70_reg[9]),
        .R(ap_NS_fsm13_out));
  LUT1 #(
    .INIT(2'h1)) 
    \nbi_reg_196[0]_i_1 
       (.I0(nbi_1_fu_70_reg[0]),
        .O(nbi_statistic_update_fu_113_ap_return[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \nbi_reg_196[31]_i_1 
       (.I0(ap_enable_reg_pp0_iter1_reg_n_0),
        .I1(ap_CS_fsm_pp0_stage0),
        .O(nbi_reg_1960));
  FDRE \nbi_reg_196_reg[0] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[0]),
        .Q(nbi_reg_196[0]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[10] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[10]),
        .Q(nbi_reg_196[10]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[11] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[11]),
        .Q(nbi_reg_196[11]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[12] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[12]),
        .Q(nbi_reg_196[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[12]_i_1 
       (.CI(\nbi_reg_196_reg[8]_i_1_n_0 ),
        .CO({\nbi_reg_196_reg[12]_i_1_n_0 ,\nbi_reg_196_reg[12]_i_1_n_1 ,\nbi_reg_196_reg[12]_i_1_n_2 ,\nbi_reg_196_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nbi_statistic_update_fu_113_ap_return[12:9]),
        .S(nbi_1_fu_70_reg[12:9]));
  FDRE \nbi_reg_196_reg[13] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[13]),
        .Q(nbi_reg_196[13]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[14] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[14]),
        .Q(nbi_reg_196[14]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[15] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[15]),
        .Q(nbi_reg_196[15]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[16] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[16]),
        .Q(nbi_reg_196[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[16]_i_1 
       (.CI(\nbi_reg_196_reg[12]_i_1_n_0 ),
        .CO({\nbi_reg_196_reg[16]_i_1_n_0 ,\nbi_reg_196_reg[16]_i_1_n_1 ,\nbi_reg_196_reg[16]_i_1_n_2 ,\nbi_reg_196_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nbi_statistic_update_fu_113_ap_return[16:13]),
        .S(nbi_1_fu_70_reg[16:13]));
  FDRE \nbi_reg_196_reg[17] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[17]),
        .Q(nbi_reg_196[17]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[18] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[18]),
        .Q(nbi_reg_196[18]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[19] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[19]),
        .Q(nbi_reg_196[19]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[1] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[1]),
        .Q(nbi_reg_196[1]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[20] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[20]),
        .Q(nbi_reg_196[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[20]_i_1 
       (.CI(\nbi_reg_196_reg[16]_i_1_n_0 ),
        .CO({\nbi_reg_196_reg[20]_i_1_n_0 ,\nbi_reg_196_reg[20]_i_1_n_1 ,\nbi_reg_196_reg[20]_i_1_n_2 ,\nbi_reg_196_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nbi_statistic_update_fu_113_ap_return[20:17]),
        .S(nbi_1_fu_70_reg[20:17]));
  FDRE \nbi_reg_196_reg[21] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[21]),
        .Q(nbi_reg_196[21]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[22] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[22]),
        .Q(nbi_reg_196[22]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[23] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[23]),
        .Q(nbi_reg_196[23]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[24] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[24]),
        .Q(nbi_reg_196[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[24]_i_1 
       (.CI(\nbi_reg_196_reg[20]_i_1_n_0 ),
        .CO({\nbi_reg_196_reg[24]_i_1_n_0 ,\nbi_reg_196_reg[24]_i_1_n_1 ,\nbi_reg_196_reg[24]_i_1_n_2 ,\nbi_reg_196_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nbi_statistic_update_fu_113_ap_return[24:21]),
        .S(nbi_1_fu_70_reg[24:21]));
  FDRE \nbi_reg_196_reg[25] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[25]),
        .Q(nbi_reg_196[25]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[26] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[26]),
        .Q(nbi_reg_196[26]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[27] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[27]),
        .Q(nbi_reg_196[27]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[28] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[28]),
        .Q(nbi_reg_196[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[28]_i_1 
       (.CI(\nbi_reg_196_reg[24]_i_1_n_0 ),
        .CO({\nbi_reg_196_reg[28]_i_1_n_0 ,\nbi_reg_196_reg[28]_i_1_n_1 ,\nbi_reg_196_reg[28]_i_1_n_2 ,\nbi_reg_196_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nbi_statistic_update_fu_113_ap_return[28:25]),
        .S(nbi_1_fu_70_reg[28:25]));
  FDRE \nbi_reg_196_reg[29] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[29]),
        .Q(nbi_reg_196[29]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[2] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[2]),
        .Q(nbi_reg_196[2]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[30] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[30]),
        .Q(nbi_reg_196[30]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[31] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[31]),
        .Q(nbi_reg_196[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[31]_i_2 
       (.CI(\nbi_reg_196_reg[28]_i_1_n_0 ),
        .CO({\NLW_nbi_reg_196_reg[31]_i_2_CO_UNCONNECTED [3:2],\nbi_reg_196_reg[31]_i_2_n_2 ,\nbi_reg_196_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_nbi_reg_196_reg[31]_i_2_O_UNCONNECTED [3],nbi_statistic_update_fu_113_ap_return[31:29]}),
        .S({1'b0,nbi_1_fu_70_reg[31:29]}));
  FDRE \nbi_reg_196_reg[3] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[3]),
        .Q(nbi_reg_196[3]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[4] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[4]),
        .Q(nbi_reg_196[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\nbi_reg_196_reg[4]_i_1_n_0 ,\nbi_reg_196_reg[4]_i_1_n_1 ,\nbi_reg_196_reg[4]_i_1_n_2 ,\nbi_reg_196_reg[4]_i_1_n_3 }),
        .CYINIT(nbi_1_fu_70_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nbi_statistic_update_fu_113_ap_return[4:1]),
        .S(nbi_1_fu_70_reg[4:1]));
  FDRE \nbi_reg_196_reg[5] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[5]),
        .Q(nbi_reg_196[5]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[6] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[6]),
        .Q(nbi_reg_196[6]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[7] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[7]),
        .Q(nbi_reg_196[7]),
        .R(1'b0));
  FDRE \nbi_reg_196_reg[8] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[8]),
        .Q(nbi_reg_196[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \nbi_reg_196_reg[8]_i_1 
       (.CI(\nbi_reg_196_reg[4]_i_1_n_0 ),
        .CO({\nbi_reg_196_reg[8]_i_1_n_0 ,\nbi_reg_196_reg[8]_i_1_n_1 ,\nbi_reg_196_reg[8]_i_1_n_2 ,\nbi_reg_196_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(nbi_statistic_update_fu_113_ap_return[8:5]),
        .S(nbi_1_fu_70_reg[8:5]));
  FDRE \nbi_reg_196_reg[9] 
       (.C(ap_clk),
        .CE(nbi_reg_1960),
        .D(nbi_statistic_update_fu_113_ap_return[9]),
        .Q(nbi_reg_196[9]),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_execute pc_V_1_execute_fu_106
       (.Q(d_i_type_V_reg_182),
        .select_ln7_2_fu_136_p3(select_ln7_2_fu_136_p3),
        .trunc_ln34_reg_187(trunc_ln34_reg_187));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[0]" *) 
  FDRE \pc_V_fu_66_reg[0] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_81),
        .Q(pc_V_fu_66[0]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[0]" *) 
  FDRE \pc_V_fu_66_reg[0]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_81),
        .Q(\pc_V_fu_66_reg[0]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[0]" *) 
  FDRE \pc_V_fu_66_reg[0]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_81),
        .Q(\pc_V_fu_66_reg[0]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[10]" *) 
  FDRE \pc_V_fu_66_reg[10] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_71),
        .Q(pc_V_fu_66[10]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[10]" *) 
  FDRE \pc_V_fu_66_reg[10]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_71),
        .Q(\pc_V_fu_66_reg[10]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[10]" *) 
  FDRE \pc_V_fu_66_reg[10]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_71),
        .Q(\pc_V_fu_66_reg[10]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[11]" *) 
  FDRE \pc_V_fu_66_reg[11] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_70),
        .Q(pc_V_fu_66[11]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[11]" *) 
  FDRE \pc_V_fu_66_reg[11]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_70),
        .Q(\pc_V_fu_66_reg[11]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[11]" *) 
  FDRE \pc_V_fu_66_reg[11]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_70),
        .Q(\pc_V_fu_66_reg[11]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[12]" *) 
  FDRE \pc_V_fu_66_reg[12] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_69),
        .Q(pc_V_fu_66[12]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[12]" *) 
  FDRE \pc_V_fu_66_reg[12]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_69),
        .Q(\pc_V_fu_66_reg[12]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[12]" *) 
  FDRE \pc_V_fu_66_reg[12]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_69),
        .Q(\pc_V_fu_66_reg[12]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[13]" *) 
  FDRE \pc_V_fu_66_reg[13] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_68),
        .Q(pc_V_fu_66[13]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[13]" *) 
  FDRE \pc_V_fu_66_reg[13]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_68),
        .Q(\pc_V_fu_66_reg[13]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[13]" *) 
  FDRE \pc_V_fu_66_reg[13]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_68),
        .Q(\pc_V_fu_66_reg[13]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[14]" *) 
  FDRE \pc_V_fu_66_reg[14] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_67),
        .Q(pc_V_fu_66[14]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[14]" *) 
  FDRE \pc_V_fu_66_reg[14]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_67),
        .Q(\pc_V_fu_66_reg[14]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[14]" *) 
  FDRE \pc_V_fu_66_reg[14]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_67),
        .Q(\pc_V_fu_66_reg[14]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[15]" *) 
  FDRE \pc_V_fu_66_reg[15] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_66),
        .Q(pc_V_fu_66[15]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[15]" *) 
  FDRE \pc_V_fu_66_reg[15]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_66),
        .Q(\pc_V_fu_66_reg[15]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[15]" *) 
  FDRE \pc_V_fu_66_reg[15]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_66),
        .Q(\pc_V_fu_66_reg[15]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[1]" *) 
  FDRE \pc_V_fu_66_reg[1] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_80),
        .Q(pc_V_fu_66[1]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[1]" *) 
  FDRE \pc_V_fu_66_reg[1]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_80),
        .Q(\pc_V_fu_66_reg[1]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[1]" *) 
  FDRE \pc_V_fu_66_reg[1]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_80),
        .Q(\pc_V_fu_66_reg[1]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[2]" *) 
  FDRE \pc_V_fu_66_reg[2] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_79),
        .Q(pc_V_fu_66[2]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[2]" *) 
  FDRE \pc_V_fu_66_reg[2]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_79),
        .Q(\pc_V_fu_66_reg[2]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[2]" *) 
  FDRE \pc_V_fu_66_reg[2]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_79),
        .Q(\pc_V_fu_66_reg[2]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[3]" *) 
  FDRE \pc_V_fu_66_reg[3] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_78),
        .Q(pc_V_fu_66[3]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[3]" *) 
  FDRE \pc_V_fu_66_reg[3]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_78),
        .Q(\pc_V_fu_66_reg[3]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[3]" *) 
  FDRE \pc_V_fu_66_reg[3]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_78),
        .Q(\pc_V_fu_66_reg[3]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[4]" *) 
  FDRE \pc_V_fu_66_reg[4] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_77),
        .Q(pc_V_fu_66[4]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[4]" *) 
  FDRE \pc_V_fu_66_reg[4]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_77),
        .Q(\pc_V_fu_66_reg[4]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[4]" *) 
  FDRE \pc_V_fu_66_reg[4]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_77),
        .Q(\pc_V_fu_66_reg[4]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[5]" *) 
  FDRE \pc_V_fu_66_reg[5] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_76),
        .Q(pc_V_fu_66[5]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[5]" *) 
  FDRE \pc_V_fu_66_reg[5]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_76),
        .Q(\pc_V_fu_66_reg[5]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[5]" *) 
  FDRE \pc_V_fu_66_reg[5]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_76),
        .Q(\pc_V_fu_66_reg[5]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[6]" *) 
  FDRE \pc_V_fu_66_reg[6] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_75),
        .Q(pc_V_fu_66[6]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[6]" *) 
  FDRE \pc_V_fu_66_reg[6]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_75),
        .Q(\pc_V_fu_66_reg[6]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[6]" *) 
  FDRE \pc_V_fu_66_reg[6]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_75),
        .Q(\pc_V_fu_66_reg[6]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[7]" *) 
  FDRE \pc_V_fu_66_reg[7] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_74),
        .Q(pc_V_fu_66[7]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[7]" *) 
  FDRE \pc_V_fu_66_reg[7]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_74),
        .Q(\pc_V_fu_66_reg[7]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[7]" *) 
  FDRE \pc_V_fu_66_reg[7]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_74),
        .Q(\pc_V_fu_66_reg[7]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[8]" *) 
  FDRE \pc_V_fu_66_reg[8] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_73),
        .Q(pc_V_fu_66[8]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[8]" *) 
  FDRE \pc_V_fu_66_reg[8]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_73),
        .Q(\pc_V_fu_66_reg[8]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[8]" *) 
  FDRE \pc_V_fu_66_reg[8]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_73),
        .Q(\pc_V_fu_66_reg[8]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[9]" *) 
  FDRE \pc_V_fu_66_reg[9] 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_72),
        .Q(pc_V_fu_66[9]),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[9]" *) 
  FDRE \pc_V_fu_66_reg[9]_rep 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_72),
        .Q(\pc_V_fu_66_reg[9]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "pc_V_fu_66_reg[9]" *) 
  FDRE \pc_V_fu_66_reg[9]_rep__0 
       (.C(ap_clk),
        .CE(control_s_axi_U_n_10),
        .D(control_s_axi_U_n_72),
        .Q(\pc_V_fu_66_reg[9]_rep__0_n_0 ),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[0] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[0]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[0]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[10]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[10]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[11]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[11]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[12]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[12]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[13]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[13]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[14]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[14]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[15]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[15]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[1]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[1]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[2]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[2]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[3]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[3]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[4]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[4]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[5]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[5]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[6]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[6]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[7]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[7]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[8]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[8]),
        .R(1'b0));
  FDRE \pc_V_load_reg_176_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage1),
        .D(\pc_V_fu_66_reg[9]_rep__0_n_0 ),
        .Q(pc_V_load_reg_176[9]),
        .R(1'b0));
  FDRE \trunc_ln34_reg_187_reg[10] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_22),
        .Q(trunc_ln34_reg_187[10]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[11] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_23),
        .Q(trunc_ln34_reg_187[11]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[12] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_25),
        .Q(trunc_ln34_reg_187[12]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[13] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_26),
        .Q(trunc_ln34_reg_187[13]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[14] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_27),
        .Q(trunc_ln34_reg_187[14]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[15] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_28),
        .Q(trunc_ln34_reg_187[15]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[16] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_29),
        .Q(trunc_ln34_reg_187[16]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[1] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln34_fu_144_p1[1]),
        .Q(trunc_ln34_reg_187[1]),
        .R(1'b0));
  FDRE \trunc_ln34_reg_187_reg[2] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln34_fu_144_p1[2]),
        .Q(trunc_ln34_reg_187[2]),
        .R(1'b0));
  FDRE \trunc_ln34_reg_187_reg[3] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln34_fu_144_p1[3]),
        .Q(trunc_ln34_reg_187[3]),
        .R(1'b0));
  FDRE \trunc_ln34_reg_187_reg[4] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(trunc_ln34_fu_144_p1[4]),
        .Q(trunc_ln34_reg_187[4]),
        .R(1'b0));
  FDRE \trunc_ln34_reg_187_reg[5] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_15),
        .Q(trunc_ln34_reg_187[5]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[6] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_18),
        .Q(trunc_ln34_reg_187[6]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[7] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_19),
        .Q(trunc_ln34_reg_187[7]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[8] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_20),
        .Q(trunc_ln34_reg_187[8]),
        .R(control_s_axi_U_n_2));
  FDRE \trunc_ln34_reg_187_reg[9] 
       (.C(ap_clk),
        .CE(ap_CS_fsm_pp0_stage2),
        .D(control_s_axi_U_n_21),
        .Q(trunc_ln34_reg_187[9]),
        .R(control_s_axi_U_n_2));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_control_s_axi
   (ap_rst_n_inv,
    interrupt,
    mem_reg_0_1_6,
    ap_enable_reg_pp0_iter1_reg,
    ap_NS_fsm13_out,
    \FSM_onehot_rstate_reg[1]_0 ,
    \FSM_onehot_wstate_reg[1]_0 ,
    s_axi_control_BVALID,
    s_axi_control_WREADY,
    s_axi_control_RVALID,
    \is_running_V_reg_192_reg[0] ,
    D,
    ap_rst_n_0,
    is_running_V_running_cond_update_fu_100_ap_return,
    mem_reg_3_1_1,
    mem_reg_0_1_2,
    mem_reg_0_1_2_0,
    mem_reg_3_1_2,
    mem_reg_3_1_3,
    mem_reg_3_1_4,
    mem_reg_3_1_5,
    mem_reg_3_1_6,
    mem_reg_3_1_7,
    mem_reg_0_1_2_1,
    mem_reg_3_1_7_0,
    mem_reg_3_1_7_1,
    mem_reg_3_1_7_2,
    mem_reg_3_1_7_3,
    mem_reg_3_1_7_4,
    trunc_ln34_fu_144_p1,
    s_axi_control_RDATA,
    out,
    ap_clk,
    Q,
    ap_enable_reg_pp0_iter1_reg_0,
    ap_rst_n,
    ap_enable_reg_pp0_iter0,
    s_axi_control_ARVALID,
    s_axi_control_ARADDR,
    s_axi_control_RREADY,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    s_axi_control_AWVALID,
    s_axi_control_BREADY,
    is_running_V_reg_192,
    s_axi_control_AWADDR,
    \pc_V_fu_66_reg[15]_rep__0 ,
    mem_reg_0_0_0,
    mem_reg_0_1_0,
    mem_reg_0_1_0_0,
    mem_reg_0_0_1,
    mem_reg_0_1_1,
    mem_reg_0_0_2,
    ADDRBWRADDR,
    mem_reg_0_1_2_2,
    mem_reg_0_0_3,
    mem_reg_0_1_3,
    mem_reg_0_0_4,
    mem_reg_0_1_4,
    mem_reg_0_0_5,
    mem_reg_0_1_5,
    mem_reg_0_0_6,
    mem_reg_0_1_6_0,
    mem_reg_0_0_7,
    mem_reg_0_1_7,
    mem_reg_1_0_0,
    mem_reg_1_1_0,
    mem_reg_1_0_1,
    mem_reg_1_1_1,
    mem_reg_1_0_2,
    mem_reg_1_1_2,
    mem_reg_1_0_3,
    mem_reg_1_1_3,
    mem_reg_1_0_4,
    mem_reg_1_1_4,
    mem_reg_1_0_5,
    mem_reg_1_1_5,
    mem_reg_1_0_6,
    mem_reg_1_1_6,
    mem_reg_1_0_7,
    mem_reg_1_1_7,
    mem_reg_2_0_0,
    mem_reg_2_1_0,
    mem_reg_2_0_1,
    mem_reg_2_1_1,
    mem_reg_2_0_2,
    mem_reg_2_1_2,
    mem_reg_2_0_3,
    mem_reg_2_1_3,
    mem_reg_2_0_4,
    mem_reg_2_1_4,
    mem_reg_2_0_5,
    mem_reg_2_0_5_0,
    mem_reg_2_1_5,
    mem_reg_2_0_6,
    mem_reg_2_1_6,
    mem_reg_2_0_7,
    mem_reg_2_1_7,
    mem_reg_3_0_0,
    mem_reg_3_1_0,
    mem_reg_3_0_1,
    mem_reg_3_1_1_0,
    mem_reg_3_0_2,
    mem_reg_3_1_2_0,
    mem_reg_3_0_3,
    mem_reg_3_1_3_0,
    mem_reg_3_0_4,
    mem_reg_3_1_4_0,
    mem_reg_3_0_5,
    mem_reg_3_1_5_0,
    mem_reg_3_0_6,
    mem_reg_3_1_6_0,
    mem_reg_3_0_7,
    ce0,
    \int_nb_instruction_reg[31]_0 ,
    select_ln7_2_fu_136_p3);
  output ap_rst_n_inv;
  output interrupt;
  output mem_reg_0_1_6;
  output ap_enable_reg_pp0_iter1_reg;
  output ap_NS_fsm13_out;
  output \FSM_onehot_rstate_reg[1]_0 ;
  output \FSM_onehot_wstate_reg[1]_0 ;
  output s_axi_control_BVALID;
  output s_axi_control_WREADY;
  output s_axi_control_RVALID;
  output \is_running_V_reg_192_reg[0] ;
  output [1:0]D;
  output ap_rst_n_0;
  output is_running_V_running_cond_update_fu_100_ap_return;
  output mem_reg_3_1_1;
  output mem_reg_0_1_2;
  output mem_reg_0_1_2_0;
  output mem_reg_3_1_2;
  output mem_reg_3_1_3;
  output mem_reg_3_1_4;
  output mem_reg_3_1_5;
  output mem_reg_3_1_6;
  output mem_reg_3_1_7;
  output mem_reg_0_1_2_1;
  output mem_reg_3_1_7_0;
  output mem_reg_3_1_7_1;
  output mem_reg_3_1_7_2;
  output mem_reg_3_1_7_3;
  output mem_reg_3_1_7_4;
  output [3:0]trunc_ln34_fu_144_p1;
  output [31:0]s_axi_control_RDATA;
  output [15:0]out;
  input ap_clk;
  input [3:0]Q;
  input ap_enable_reg_pp0_iter1_reg_0;
  input ap_rst_n;
  input ap_enable_reg_pp0_iter0;
  input s_axi_control_ARVALID;
  input [18:0]s_axi_control_ARADDR;
  input s_axi_control_RREADY;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input s_axi_control_AWVALID;
  input s_axi_control_BREADY;
  input is_running_V_reg_192;
  input [18:0]s_axi_control_AWADDR;
  input [15:0]\pc_V_fu_66_reg[15]_rep__0 ;
  input mem_reg_0_0_0;
  input [15:0]mem_reg_0_1_0;
  input mem_reg_0_1_0_0;
  input mem_reg_0_0_1;
  input mem_reg_0_1_1;
  input mem_reg_0_0_2;
  input [15:0]ADDRBWRADDR;
  input mem_reg_0_1_2_2;
  input mem_reg_0_0_3;
  input mem_reg_0_1_3;
  input mem_reg_0_0_4;
  input mem_reg_0_1_4;
  input mem_reg_0_0_5;
  input mem_reg_0_1_5;
  input mem_reg_0_0_6;
  input mem_reg_0_1_6_0;
  input mem_reg_0_0_7;
  input mem_reg_0_1_7;
  input mem_reg_1_0_0;
  input mem_reg_1_1_0;
  input mem_reg_1_0_1;
  input mem_reg_1_1_1;
  input mem_reg_1_0_2;
  input mem_reg_1_1_2;
  input mem_reg_1_0_3;
  input mem_reg_1_1_3;
  input mem_reg_1_0_4;
  input mem_reg_1_1_4;
  input mem_reg_1_0_5;
  input mem_reg_1_1_5;
  input mem_reg_1_0_6;
  input mem_reg_1_1_6;
  input mem_reg_1_0_7;
  input mem_reg_1_1_7;
  input mem_reg_2_0_0;
  input mem_reg_2_1_0;
  input mem_reg_2_0_1;
  input mem_reg_2_1_1;
  input mem_reg_2_0_2;
  input mem_reg_2_1_2;
  input mem_reg_2_0_3;
  input mem_reg_2_1_3;
  input mem_reg_2_0_4;
  input mem_reg_2_1_4;
  input mem_reg_2_0_5;
  input [15:0]mem_reg_2_0_5_0;
  input mem_reg_2_1_5;
  input mem_reg_2_0_6;
  input mem_reg_2_1_6;
  input mem_reg_2_0_7;
  input mem_reg_2_1_7;
  input mem_reg_3_0_0;
  input mem_reg_3_1_0;
  input mem_reg_3_0_1;
  input mem_reg_3_1_1_0;
  input mem_reg_3_0_2;
  input mem_reg_3_1_2_0;
  input mem_reg_3_0_3;
  input mem_reg_3_1_3_0;
  input mem_reg_3_0_4;
  input mem_reg_3_1_4_0;
  input mem_reg_3_0_5;
  input mem_reg_3_1_5_0;
  input mem_reg_3_0_6;
  input mem_reg_3_1_6_0;
  input mem_reg_3_0_7;
  input ce0;
  input [31:0]\int_nb_instruction_reg[31]_0 ;
  input [15:0]select_ln7_2_fu_136_p3;

  wire [15:0]ADDRBWRADDR;
  wire [1:0]D;
  wire \FSM_onehot_rstate[1]_i_1_n_0 ;
  wire \FSM_onehot_rstate[2]_i_1_n_0 ;
  wire \FSM_onehot_rstate_reg[1]_0 ;
  wire \FSM_onehot_rstate_reg_n_0_[2] ;
  wire \FSM_onehot_wstate[1]_i_2_n_0 ;
  wire \FSM_onehot_wstate[2]_i_1_n_0 ;
  wire \FSM_onehot_wstate[3]_i_1_n_0 ;
  wire \FSM_onehot_wstate_reg[1]_0 ;
  wire \FSM_onehot_wstate_reg_n_0_[2] ;
  wire [3:0]Q;
  wire ap_NS_fsm13_out;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ap_enable_reg_pp0_iter0_i_2_n_0;
  wire ap_enable_reg_pp0_iter1_reg;
  wire ap_enable_reg_pp0_iter1_reg_0;
  wire ap_idle;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ap_rst_n_inv;
  wire ap_start;
  wire ar_hs__0;
  wire auto_restart_status_i_1_n_0;
  wire auto_restart_status_reg_n_0;
  wire aw_hs;
  wire ce0;
  wire [1:0]data3;
  wire int_ap_ready;
  wire int_ap_ready_i_1_n_0;
  wire int_ap_ready_i_2_n_0;
  wire int_ap_start_i_1_n_0;
  wire int_ap_start_i_2_n_0;
  wire int_ap_start_i_3_n_0;
  wire int_auto_restart_i_1_n_0;
  wire int_code_ram_n_1;
  wire int_code_ram_n_10;
  wire int_code_ram_n_11;
  wire int_code_ram_n_12;
  wire int_code_ram_n_13;
  wire int_code_ram_n_14;
  wire int_code_ram_n_15;
  wire int_code_ram_n_16;
  wire int_code_ram_n_17;
  wire int_code_ram_n_18;
  wire int_code_ram_n_19;
  wire int_code_ram_n_2;
  wire int_code_ram_n_20;
  wire int_code_ram_n_21;
  wire int_code_ram_n_22;
  wire int_code_ram_n_23;
  wire int_code_ram_n_24;
  wire int_code_ram_n_25;
  wire int_code_ram_n_26;
  wire int_code_ram_n_27;
  wire int_code_ram_n_28;
  wire int_code_ram_n_29;
  wire int_code_ram_n_3;
  wire int_code_ram_n_30;
  wire int_code_ram_n_31;
  wire int_code_ram_n_32;
  wire int_code_ram_n_4;
  wire int_code_ram_n_5;
  wire int_code_ram_n_6;
  wire int_code_ram_n_7;
  wire int_code_ram_n_8;
  wire int_code_ram_n_9;
  wire int_code_ram_read;
  wire int_code_ram_read0;
  wire int_code_ram_write_i_1_n_0;
  wire int_code_ram_write_reg_n_0;
  wire int_gie_i_1_n_0;
  wire int_gie_reg_n_0;
  wire int_ier;
  wire \int_ier[0]_i_1_n_0 ;
  wire \int_ier[1]_i_1_n_0 ;
  wire \int_ier_reg_n_0_[0] ;
  wire \int_ier_reg_n_0_[1] ;
  wire int_interrupt0;
  wire \int_isr[0]_i_1_n_0 ;
  wire \int_isr[0]_i_2_n_0 ;
  wire \int_isr[1]_i_1_n_0 ;
  wire [31:0]int_nb_instruction;
  wire int_nb_instruction_ap_vld;
  wire int_nb_instruction_ap_vld_i_1_n_0;
  wire [31:0]\int_nb_instruction_reg[31]_0 ;
  wire \int_start_pc[0]_i_1_n_0 ;
  wire \int_start_pc[10]_i_1_n_0 ;
  wire \int_start_pc[11]_i_1_n_0 ;
  wire \int_start_pc[12]_i_1_n_0 ;
  wire \int_start_pc[13]_i_1_n_0 ;
  wire \int_start_pc[14]_i_1_n_0 ;
  wire \int_start_pc[15]_i_1_n_0 ;
  wire \int_start_pc[16]_i_1_n_0 ;
  wire \int_start_pc[17]_i_1_n_0 ;
  wire \int_start_pc[18]_i_1_n_0 ;
  wire \int_start_pc[19]_i_1_n_0 ;
  wire \int_start_pc[1]_i_1_n_0 ;
  wire \int_start_pc[20]_i_1_n_0 ;
  wire \int_start_pc[21]_i_1_n_0 ;
  wire \int_start_pc[22]_i_1_n_0 ;
  wire \int_start_pc[23]_i_1_n_0 ;
  wire \int_start_pc[24]_i_1_n_0 ;
  wire \int_start_pc[25]_i_1_n_0 ;
  wire \int_start_pc[26]_i_1_n_0 ;
  wire \int_start_pc[27]_i_1_n_0 ;
  wire \int_start_pc[28]_i_1_n_0 ;
  wire \int_start_pc[29]_i_1_n_0 ;
  wire \int_start_pc[2]_i_1_n_0 ;
  wire \int_start_pc[30]_i_1_n_0 ;
  wire \int_start_pc[31]_i_1_n_0 ;
  wire \int_start_pc[31]_i_2_n_0 ;
  wire \int_start_pc[31]_i_3_n_0 ;
  wire \int_start_pc[31]_i_4_n_0 ;
  wire \int_start_pc[31]_i_5_n_0 ;
  wire \int_start_pc[31]_i_6_n_0 ;
  wire \int_start_pc[3]_i_1_n_0 ;
  wire \int_start_pc[4]_i_1_n_0 ;
  wire \int_start_pc[5]_i_1_n_0 ;
  wire \int_start_pc[6]_i_1_n_0 ;
  wire \int_start_pc[7]_i_1_n_0 ;
  wire \int_start_pc[8]_i_1_n_0 ;
  wire \int_start_pc[9]_i_1_n_0 ;
  wire \int_start_pc_reg_n_0_[16] ;
  wire \int_start_pc_reg_n_0_[17] ;
  wire \int_start_pc_reg_n_0_[18] ;
  wire \int_start_pc_reg_n_0_[19] ;
  wire \int_start_pc_reg_n_0_[20] ;
  wire \int_start_pc_reg_n_0_[21] ;
  wire \int_start_pc_reg_n_0_[22] ;
  wire \int_start_pc_reg_n_0_[23] ;
  wire \int_start_pc_reg_n_0_[24] ;
  wire \int_start_pc_reg_n_0_[25] ;
  wire \int_start_pc_reg_n_0_[26] ;
  wire \int_start_pc_reg_n_0_[27] ;
  wire \int_start_pc_reg_n_0_[28] ;
  wire \int_start_pc_reg_n_0_[29] ;
  wire \int_start_pc_reg_n_0_[30] ;
  wire \int_start_pc_reg_n_0_[31] ;
  wire int_task_ap_done;
  wire int_task_ap_done_i_1_n_0;
  wire interrupt;
  wire is_running_V_reg_192;
  wire \is_running_V_reg_192_reg[0] ;
  wire is_running_V_running_cond_update_fu_100_ap_return;
  wire mem_reg_0_0_0;
  wire mem_reg_0_0_1;
  wire mem_reg_0_0_2;
  wire mem_reg_0_0_3;
  wire mem_reg_0_0_4;
  wire mem_reg_0_0_5;
  wire mem_reg_0_0_6;
  wire mem_reg_0_0_7;
  wire [15:0]mem_reg_0_1_0;
  wire mem_reg_0_1_0_0;
  wire mem_reg_0_1_1;
  wire mem_reg_0_1_2;
  wire mem_reg_0_1_2_0;
  wire mem_reg_0_1_2_1;
  wire mem_reg_0_1_2_2;
  wire mem_reg_0_1_3;
  wire mem_reg_0_1_4;
  wire mem_reg_0_1_5;
  wire mem_reg_0_1_6;
  wire mem_reg_0_1_6_0;
  wire mem_reg_0_1_7;
  wire mem_reg_1_0_0;
  wire mem_reg_1_0_1;
  wire mem_reg_1_0_2;
  wire mem_reg_1_0_3;
  wire mem_reg_1_0_4;
  wire mem_reg_1_0_5;
  wire mem_reg_1_0_6;
  wire mem_reg_1_0_7;
  wire mem_reg_1_1_0;
  wire mem_reg_1_1_1;
  wire mem_reg_1_1_2;
  wire mem_reg_1_1_3;
  wire mem_reg_1_1_4;
  wire mem_reg_1_1_5;
  wire mem_reg_1_1_6;
  wire mem_reg_1_1_7;
  wire mem_reg_2_0_0;
  wire mem_reg_2_0_1;
  wire mem_reg_2_0_2;
  wire mem_reg_2_0_3;
  wire mem_reg_2_0_4;
  wire mem_reg_2_0_5;
  wire [15:0]mem_reg_2_0_5_0;
  wire mem_reg_2_0_6;
  wire mem_reg_2_0_7;
  wire mem_reg_2_1_0;
  wire mem_reg_2_1_1;
  wire mem_reg_2_1_2;
  wire mem_reg_2_1_3;
  wire mem_reg_2_1_4;
  wire mem_reg_2_1_5;
  wire mem_reg_2_1_6;
  wire mem_reg_2_1_7;
  wire mem_reg_3_0_0;
  wire mem_reg_3_0_1;
  wire mem_reg_3_0_2;
  wire mem_reg_3_0_3;
  wire mem_reg_3_0_4;
  wire mem_reg_3_0_5;
  wire mem_reg_3_0_6;
  wire mem_reg_3_0_7;
  wire mem_reg_3_1_0;
  wire mem_reg_3_1_1;
  wire mem_reg_3_1_1_0;
  wire mem_reg_3_1_2;
  wire mem_reg_3_1_2_0;
  wire mem_reg_3_1_3;
  wire mem_reg_3_1_3_0;
  wire mem_reg_3_1_4;
  wire mem_reg_3_1_4_0;
  wire mem_reg_3_1_5;
  wire mem_reg_3_1_5_0;
  wire mem_reg_3_1_6;
  wire mem_reg_3_1_6_0;
  wire mem_reg_3_1_7;
  wire mem_reg_3_1_7_0;
  wire mem_reg_3_1_7_1;
  wire mem_reg_3_1_7_2;
  wire mem_reg_3_1_7_3;
  wire mem_reg_3_1_7_4;
  wire [15:0]out;
  wire p_20_in;
  wire [7:2]p_3_in;
  wire \pc_V_fu_66[11]_i_2_n_0 ;
  wire \pc_V_fu_66[11]_i_3_n_0 ;
  wire \pc_V_fu_66[11]_i_4_n_0 ;
  wire \pc_V_fu_66[11]_i_5_n_0 ;
  wire \pc_V_fu_66[11]_i_6_n_0 ;
  wire \pc_V_fu_66[11]_i_7_n_0 ;
  wire \pc_V_fu_66[11]_i_8_n_0 ;
  wire \pc_V_fu_66[11]_i_9_n_0 ;
  wire \pc_V_fu_66[15]_i_3_n_0 ;
  wire \pc_V_fu_66[15]_i_4_n_0 ;
  wire \pc_V_fu_66[15]_i_5_n_0 ;
  wire \pc_V_fu_66[15]_i_6_n_0 ;
  wire \pc_V_fu_66[15]_i_7_n_0 ;
  wire \pc_V_fu_66[15]_i_8_n_0 ;
  wire \pc_V_fu_66[15]_i_9_n_0 ;
  wire \pc_V_fu_66[3]_i_2_n_0 ;
  wire \pc_V_fu_66[3]_i_3_n_0 ;
  wire \pc_V_fu_66[3]_i_4_n_0 ;
  wire \pc_V_fu_66[3]_i_5_n_0 ;
  wire \pc_V_fu_66[3]_i_6_n_0 ;
  wire \pc_V_fu_66[3]_i_7_n_0 ;
  wire \pc_V_fu_66[3]_i_8_n_0 ;
  wire \pc_V_fu_66[3]_i_9_n_0 ;
  wire \pc_V_fu_66[7]_i_2_n_0 ;
  wire \pc_V_fu_66[7]_i_3_n_0 ;
  wire \pc_V_fu_66[7]_i_4_n_0 ;
  wire \pc_V_fu_66[7]_i_5_n_0 ;
  wire \pc_V_fu_66[7]_i_6_n_0 ;
  wire \pc_V_fu_66[7]_i_7_n_0 ;
  wire \pc_V_fu_66[7]_i_8_n_0 ;
  wire \pc_V_fu_66[7]_i_9_n_0 ;
  wire \pc_V_fu_66_reg[11]_i_1_n_0 ;
  wire \pc_V_fu_66_reg[11]_i_1_n_1 ;
  wire \pc_V_fu_66_reg[11]_i_1_n_2 ;
  wire \pc_V_fu_66_reg[11]_i_1_n_3 ;
  wire \pc_V_fu_66_reg[15]_i_2_n_1 ;
  wire \pc_V_fu_66_reg[15]_i_2_n_2 ;
  wire \pc_V_fu_66_reg[15]_i_2_n_3 ;
  wire [15:0]\pc_V_fu_66_reg[15]_rep__0 ;
  wire \pc_V_fu_66_reg[3]_i_1_n_0 ;
  wire \pc_V_fu_66_reg[3]_i_1_n_1 ;
  wire \pc_V_fu_66_reg[3]_i_1_n_2 ;
  wire \pc_V_fu_66_reg[3]_i_1_n_3 ;
  wire \pc_V_fu_66_reg[7]_i_1_n_0 ;
  wire \pc_V_fu_66_reg[7]_i_1_n_1 ;
  wire \pc_V_fu_66_reg[7]_i_1_n_2 ;
  wire \pc_V_fu_66_reg[7]_i_1_n_3 ;
  wire \rdata[0]_i_2_n_0 ;
  wire \rdata[0]_i_3_n_0 ;
  wire \rdata[0]_i_4_n_0 ;
  wire \rdata[1]_i_2_n_0 ;
  wire \rdata[1]_i_3_n_0 ;
  wire \rdata[2]_i_2_n_0 ;
  wire \rdata[31]_i_1_n_0 ;
  wire \rdata[31]_i_3_n_0 ;
  wire \rdata[31]_i_5_n_0 ;
  wire \rdata[3]_i_2_n_0 ;
  wire \rdata[7]_i_2_n_0 ;
  wire \rdata[9]_i_2_n_0 ;
  wire \rdata[9]_i_3_n_0 ;
  wire \rdata[9]_i_4_n_0 ;
  wire \rdata[9]_i_5_n_0 ;
  wire \rdata[9]_i_6_n_0 ;
  wire [18:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [18:0]s_axi_control_AWADDR;
  wire s_axi_control_AWVALID;
  wire s_axi_control_BREADY;
  wire s_axi_control_BVALID;
  wire [31:0]s_axi_control_RDATA;
  wire s_axi_control_RREADY;
  wire s_axi_control_RVALID;
  wire [31:0]s_axi_control_WDATA;
  wire s_axi_control_WREADY;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [15:0]select_ln7_2_fu_136_p3;
  wire [15:0]start_pc;
  wire task_ap_done;
  wire [3:0]trunc_ln34_fu_144_p1;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[10] ;
  wire \waddr_reg_n_0_[11] ;
  wire \waddr_reg_n_0_[12] ;
  wire \waddr_reg_n_0_[13] ;
  wire \waddr_reg_n_0_[14] ;
  wire \waddr_reg_n_0_[15] ;
  wire \waddr_reg_n_0_[16] ;
  wire \waddr_reg_n_0_[17] ;
  wire \waddr_reg_n_0_[18] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire \waddr_reg_n_0_[9] ;
  wire [3:3]\NLW_pc_V_fu_66_reg[15]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h2F772277)) 
    \FSM_onehot_rstate[1]_i_1 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .I2(int_code_ram_read),
        .I3(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I4(s_axi_control_RREADY),
        .O(\FSM_onehot_rstate[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hFF8C8C8C)) 
    \FSM_onehot_rstate[2]_i_1 
       (.I0(int_code_ram_read),
        .I1(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I2(s_axi_control_RREADY),
        .I3(s_axi_control_ARVALID),
        .I4(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\FSM_onehot_rstate[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[1]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "RDIDLE:010,RDDATA:100,iSTATE:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_rstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_rstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_rstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_wstate[1]_i_1 
       (.I0(ap_rst_n),
        .O(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hC0FFD1D1)) 
    \FSM_onehot_wstate[1]_i_2 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_BVALID),
        .I2(s_axi_control_BREADY),
        .I3(s_axi_control_AWVALID),
        .I4(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA222A222A222)) 
    \FSM_onehot_wstate[2]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(s_axi_control_AWVALID),
        .I5(\FSM_onehot_wstate_reg[1]_0 ),
        .O(\FSM_onehot_wstate[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0888FFFF08880888)) 
    \FSM_onehot_wstate[3]_i_1 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .I4(s_axi_control_BREADY),
        .I5(s_axi_control_BVALID),
        .O(\FSM_onehot_wstate[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[1]_i_2_n_0 ),
        .Q(\FSM_onehot_wstate_reg[1]_0 ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[2] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[2]_i_1_n_0 ),
        .Q(\FSM_onehot_wstate_reg_n_0_[2] ),
        .R(ap_rst_n_inv));
  (* FSM_ENCODED_STATES = "WRDATA:0100,WRRESP:1000,WRIDLE:0010,iSTATE:0001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_wstate_reg[3] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\FSM_onehot_wstate[3]_i_1_n_0 ),
        .Q(s_axi_control_BVALID),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \ap_CS_fsm[0]_i_1__0 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[3]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \ap_CS_fsm[1]_i_1__0 
       (.I0(ap_start),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    ap_enable_reg_pp0_iter0_i_2
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter0_i_2_n_0));
  LUT6 #(
    .INIT(64'hCC08CC0800000008)) 
    ap_enable_reg_pp0_iter1_i_1
       (.I0(ap_enable_reg_pp0_iter1_reg_0),
        .I1(ap_rst_n),
        .I2(ap_NS_fsm13_out),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(ap_enable_reg_pp0_iter0),
        .O(ap_enable_reg_pp0_iter1_reg));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFAA)) 
    auto_restart_status_i_1
       (.I0(p_3_in[7]),
        .I1(ap_start),
        .I2(Q[0]),
        .I3(auto_restart_status_reg_n_0),
        .O(auto_restart_status_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    auto_restart_status_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(auto_restart_status_i_1_n_0),
        .Q(auto_restart_status_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_idle_i_1
       (.I0(Q[0]),
        .I1(ap_start),
        .O(ap_idle));
  FDRE int_ap_idle_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_idle),
        .Q(p_3_in[2]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF4FFF44444444)) 
    int_ap_ready_i_1
       (.I0(p_3_in[7]),
        .I1(Q[3]),
        .I2(\rdata[9]_i_3_n_0 ),
        .I3(int_ap_ready_i_2_n_0),
        .I4(s_axi_control_ARADDR[4]),
        .I5(int_ap_ready),
        .O(int_ap_ready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    int_ap_ready_i_2
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .O(int_ap_ready_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_ready_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_ready_i_1_n_0),
        .Q(int_ap_ready),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFBBBBBBBF8888888)) 
    int_ap_start_i_1
       (.I0(p_3_in[7]),
        .I1(Q[3]),
        .I2(int_ap_start_i_2_n_0),
        .I3(int_ap_start_i_3_n_0),
        .I4(s_axi_control_WDATA[0]),
        .I5(ap_start),
        .O(int_ap_start_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    int_ap_start_i_2
       (.I0(s_axi_control_WSTRB[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .O(int_ap_start_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    int_ap_start_i_3
       (.I0(\waddr_reg_n_0_[4] ),
        .I1(\waddr_reg_n_0_[3] ),
        .I2(\int_start_pc[31]_i_3_n_0 ),
        .O(int_ap_start_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_ap_start_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_ap_start_i_1_n_0),
        .Q(ap_start),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hEFFF2000)) 
    int_auto_restart_i_1
       (.I0(s_axi_control_WDATA[7]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(int_ap_start_i_3_n_0),
        .I4(p_3_in[7]),
        .O(int_auto_restart_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_auto_restart_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_auto_restart_i_1_n_0),
        .Q(p_3_in[7]),
        .R(ap_rst_n_inv));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_control_s_axi_ram int_code_ram
       (.ADDRBWRADDR(ADDRBWRADDR),
        .D({int_code_ram_n_1,int_code_ram_n_2,int_code_ram_n_3,int_code_ram_n_4,int_code_ram_n_5,int_code_ram_n_6,int_code_ram_n_7,int_code_ram_n_8,int_code_ram_n_9,int_code_ram_n_10,int_code_ram_n_11,int_code_ram_n_12,int_code_ram_n_13,int_code_ram_n_14,int_code_ram_n_15,int_code_ram_n_16,int_code_ram_n_17,int_code_ram_n_18,int_code_ram_n_19,int_code_ram_n_20,int_code_ram_n_21,int_code_ram_n_22,int_code_ram_n_23,int_code_ram_n_24,int_code_ram_n_25,int_code_ram_n_26,int_code_ram_n_27,int_code_ram_n_28,int_code_ram_n_29,int_code_ram_n_30,int_code_ram_n_31,int_code_ram_n_32}),
        .Q(Q[2]),
        .ap_clk(ap_clk),
        .ap_enable_reg_pp0_iter0_reg(ap_enable_reg_pp0_iter0_i_2_n_0),
        .ap_rst_n(ap_rst_n),
        .ap_rst_n_0(ap_rst_n_0),
        .ar_hs__0(ar_hs__0),
        .ce0(ce0),
        .is_running_V_running_cond_update_fu_100_ap_return(is_running_V_running_cond_update_fu_100_ap_return),
        .mem_reg_0_0_0_0({\waddr_reg_n_0_[17] ,\waddr_reg_n_0_[16] ,\waddr_reg_n_0_[15] ,\waddr_reg_n_0_[14] ,\waddr_reg_n_0_[13] ,\waddr_reg_n_0_[12] ,\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] ,\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] }),
        .mem_reg_0_0_0_1(mem_reg_0_0_0),
        .mem_reg_0_0_1_0(mem_reg_0_0_1),
        .mem_reg_0_0_2_0(mem_reg_0_0_2),
        .mem_reg_0_0_3_0(mem_reg_0_0_3),
        .mem_reg_0_0_4_0(mem_reg_0_0_4),
        .mem_reg_0_0_5_0(mem_reg_0_0_5),
        .mem_reg_0_0_6_0(mem_reg_0_0_6),
        .mem_reg_0_0_7_0(mem_reg_0_0_7),
        .mem_reg_0_1_0_0(mem_reg_0_1_0),
        .mem_reg_0_1_0_1(mem_reg_0_1_0_0),
        .mem_reg_0_1_1_0(mem_reg_0_1_1),
        .mem_reg_0_1_2_0(mem_reg_0_1_2),
        .mem_reg_0_1_2_1(mem_reg_0_1_2_0),
        .mem_reg_0_1_2_2(mem_reg_0_1_2_1),
        .mem_reg_0_1_2_3(mem_reg_0_1_2_2),
        .mem_reg_0_1_3_0(mem_reg_0_1_3),
        .mem_reg_0_1_4_0(mem_reg_0_1_4),
        .mem_reg_0_1_5_0(mem_reg_0_1_5),
        .mem_reg_0_1_6_0(mem_reg_0_1_6),
        .mem_reg_0_1_6_1(mem_reg_0_1_6_0),
        .mem_reg_0_1_7_0(mem_reg_0_1_7),
        .mem_reg_1_0_0_0(int_code_ram_write_reg_n_0),
        .mem_reg_1_0_0_1(\FSM_onehot_wstate_reg_n_0_[2] ),
        .mem_reg_1_0_0_2(mem_reg_1_0_0),
        .mem_reg_1_0_1_0(mem_reg_1_0_1),
        .mem_reg_1_0_2_0(mem_reg_1_0_2),
        .mem_reg_1_0_3_0(mem_reg_1_0_3),
        .mem_reg_1_0_4_0(mem_reg_1_0_4),
        .mem_reg_1_0_5_0(mem_reg_1_0_5),
        .mem_reg_1_0_6_0(mem_reg_1_0_6),
        .mem_reg_1_0_7_0(mem_reg_1_0_7),
        .mem_reg_1_1_0_0(mem_reg_1_1_0),
        .mem_reg_1_1_1_0(mem_reg_1_1_1),
        .mem_reg_1_1_2_0(mem_reg_1_1_2),
        .mem_reg_1_1_3_0(mem_reg_1_1_3),
        .mem_reg_1_1_4_0(mem_reg_1_1_4),
        .mem_reg_1_1_5_0(mem_reg_1_1_5),
        .mem_reg_1_1_6_0(mem_reg_1_1_6),
        .mem_reg_1_1_7_0(mem_reg_1_1_7),
        .mem_reg_2_0_0_0(mem_reg_2_0_0),
        .mem_reg_2_0_1_0(mem_reg_2_0_1),
        .mem_reg_2_0_2_0(mem_reg_2_0_2),
        .mem_reg_2_0_3_0(mem_reg_2_0_3),
        .mem_reg_2_0_4_0(mem_reg_2_0_4),
        .mem_reg_2_0_5_0(mem_reg_2_0_5),
        .mem_reg_2_0_5_1(mem_reg_2_0_5_0),
        .mem_reg_2_0_6_0(mem_reg_2_0_6),
        .mem_reg_2_0_7_0(mem_reg_2_0_7),
        .mem_reg_2_1_0_0(mem_reg_2_1_0),
        .mem_reg_2_1_1_0(mem_reg_2_1_1),
        .mem_reg_2_1_2_0(mem_reg_2_1_2),
        .mem_reg_2_1_3_0(mem_reg_2_1_3),
        .mem_reg_2_1_4_0(mem_reg_2_1_4),
        .mem_reg_2_1_5_0(mem_reg_2_1_5),
        .mem_reg_2_1_6_0(mem_reg_2_1_6),
        .mem_reg_2_1_7_0(mem_reg_2_1_7),
        .mem_reg_3_0_0_0(mem_reg_3_0_0),
        .mem_reg_3_0_1_0(mem_reg_3_0_1),
        .mem_reg_3_0_2_0(mem_reg_3_0_2),
        .mem_reg_3_0_3_0(mem_reg_3_0_3),
        .mem_reg_3_0_4_0(mem_reg_3_0_4),
        .mem_reg_3_0_5_0(mem_reg_3_0_5),
        .mem_reg_3_0_6_0(mem_reg_3_0_6),
        .mem_reg_3_0_7_0(mem_reg_3_0_7),
        .mem_reg_3_1_0_0(mem_reg_3_1_0),
        .mem_reg_3_1_1_0(mem_reg_3_1_1),
        .mem_reg_3_1_1_1(mem_reg_3_1_1_0),
        .mem_reg_3_1_2_0(mem_reg_3_1_2),
        .mem_reg_3_1_2_1(mem_reg_3_1_2_0),
        .mem_reg_3_1_3_0(mem_reg_3_1_3),
        .mem_reg_3_1_3_1(mem_reg_3_1_3_0),
        .mem_reg_3_1_4_0(mem_reg_3_1_4),
        .mem_reg_3_1_4_1(mem_reg_3_1_4_0),
        .mem_reg_3_1_5_0(mem_reg_3_1_5),
        .mem_reg_3_1_5_1(mem_reg_3_1_5_0),
        .mem_reg_3_1_6_0(mem_reg_3_1_6),
        .mem_reg_3_1_6_1(mem_reg_3_1_6_0),
        .mem_reg_3_1_7_0(mem_reg_3_1_7),
        .mem_reg_3_1_7_1(mem_reg_3_1_7_0),
        .mem_reg_3_1_7_2(mem_reg_3_1_7_1),
        .mem_reg_3_1_7_3(mem_reg_3_1_7_2),
        .mem_reg_3_1_7_4(mem_reg_3_1_7_3),
        .mem_reg_3_1_7_5(mem_reg_3_1_7_4),
        .mem_reg_3_1_7_6(\FSM_onehot_rstate_reg[1]_0 ),
        .\rdata_reg[0] (\rdata[0]_i_2_n_0 ),
        .\rdata_reg[0]_0 (\rdata[9]_i_3_n_0 ),
        .\rdata_reg[0]_1 (\rdata[0]_i_3_n_0 ),
        .\rdata_reg[0]_2 (\rdata[0]_i_4_n_0 ),
        .\rdata_reg[1] (\rdata[1]_i_2_n_0 ),
        .\rdata_reg[2] (\rdata[2]_i_2_n_0 ),
        .\rdata_reg[31] ({\int_start_pc_reg_n_0_[31] ,\int_start_pc_reg_n_0_[30] ,\int_start_pc_reg_n_0_[29] ,\int_start_pc_reg_n_0_[28] ,\int_start_pc_reg_n_0_[27] ,\int_start_pc_reg_n_0_[26] ,\int_start_pc_reg_n_0_[25] ,\int_start_pc_reg_n_0_[24] ,\int_start_pc_reg_n_0_[23] ,\int_start_pc_reg_n_0_[22] ,\int_start_pc_reg_n_0_[21] ,\int_start_pc_reg_n_0_[20] ,\int_start_pc_reg_n_0_[19] ,\int_start_pc_reg_n_0_[18] ,\int_start_pc_reg_n_0_[17] ,\int_start_pc_reg_n_0_[16] ,start_pc[15:10],start_pc[8],start_pc[6:4]}),
        .\rdata_reg[31]_0 ({int_nb_instruction[31:10],int_nb_instruction[8],int_nb_instruction[6:4]}),
        .\rdata_reg[3] (\rdata[3]_i_2_n_0 ),
        .\rdata_reg[4] (\rdata[31]_i_3_n_0 ),
        .\rdata_reg[4]_0 (\rdata[31]_i_5_n_0 ),
        .\rdata_reg[7] (\rdata[7]_i_2_n_0 ),
        .\rdata_reg[9] (\rdata[9]_i_2_n_0 ),
        .s_axi_control_ARADDR(s_axi_control_ARADDR[17:2]),
        .s_axi_control_ARVALID(s_axi_control_ARVALID),
        .s_axi_control_WDATA(s_axi_control_WDATA),
        .s_axi_control_WSTRB(s_axi_control_WSTRB),
        .s_axi_control_WVALID(s_axi_control_WVALID),
        .trunc_ln34_fu_144_p1(trunc_ln34_fu_144_p1));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    int_code_ram_read_i_1
       (.I0(s_axi_control_ARADDR[18]),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .O(int_code_ram_read0));
  FDRE int_code_ram_read_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_code_ram_read0),
        .Q(int_code_ram_read),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hF8FFFFFF88888888)) 
    int_code_ram_write_i_1
       (.I0(aw_hs),
        .I1(s_axi_control_AWADDR[18]),
        .I2(ar_hs__0),
        .I3(s_axi_control_WVALID),
        .I4(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I5(int_code_ram_write_reg_n_0),
        .O(int_code_ram_write_i_1_n_0));
  FDRE int_code_ram_write_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_code_ram_write_i_1_n_0),
        .Q(int_code_ram_write_reg_n_0),
        .R(ap_rst_n_inv));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    int_gie_i_1
       (.I0(s_axi_control_WDATA[0]),
        .I1(\waddr_reg_n_0_[2] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(int_ap_start_i_3_n_0),
        .I4(int_gie_reg_n_0),
        .O(int_gie_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    int_gie_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_gie_i_1_n_0),
        .Q(int_gie_reg_n_0),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ier[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(int_ier),
        .I2(\int_ier_reg_n_0_[0] ),
        .O(\int_ier[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_ier[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(int_ier),
        .I2(\int_ier_reg_n_0_[1] ),
        .O(\int_ier[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \int_ier[1]_i_2 
       (.I0(\waddr_reg_n_0_[3] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(s_axi_control_WSTRB[0]),
        .I3(\waddr_reg_n_0_[2] ),
        .I4(\int_start_pc[31]_i_3_n_0 ),
        .O(int_ier));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[0]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[0] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_ier_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_ier[1]_i_1_n_0 ),
        .Q(\int_ier_reg_n_0_[1] ),
        .R(ap_rst_n_inv));
  LUT3 #(
    .INIT(8'hE0)) 
    int_interrupt_i_1
       (.I0(data3[1]),
        .I1(data3[0]),
        .I2(int_gie_reg_n_0),
        .O(int_interrupt0));
  FDRE #(
    .INIT(1'b0)) 
    int_interrupt_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_interrupt0),
        .Q(interrupt),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF8FFF88888888)) 
    \int_isr[0]_i_1 
       (.I0(\int_ier_reg_n_0_[0] ),
        .I1(Q[3]),
        .I2(\rdata[9]_i_3_n_0 ),
        .I3(\int_isr[0]_i_2_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(data3[0]),
        .O(\int_isr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \int_isr[0]_i_2 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .O(\int_isr[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF8FFF88888888)) 
    \int_isr[1]_i_1 
       (.I0(Q[3]),
        .I1(\int_ier_reg_n_0_[1] ),
        .I2(\rdata[9]_i_3_n_0 ),
        .I3(\int_isr[0]_i_2_n_0 ),
        .I4(s_axi_control_ARADDR[4]),
        .I5(data3[1]),
        .O(\int_isr[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[0]_i_1_n_0 ),
        .Q(data3[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_isr_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(\int_isr[1]_i_1_n_0 ),
        .Q(data3[1]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    int_nb_instruction_ap_vld_i_1
       (.I0(\rdata[9]_i_3_n_0 ),
        .I1(s_axi_control_ARADDR[2]),
        .I2(s_axi_control_ARADDR[3]),
        .I3(s_axi_control_ARADDR[4]),
        .I4(Q[3]),
        .I5(int_nb_instruction_ap_vld),
        .O(int_nb_instruction_ap_vld_i_1_n_0));
  FDRE int_nb_instruction_ap_vld_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_nb_instruction_ap_vld_i_1_n_0),
        .Q(int_nb_instruction_ap_vld),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[0] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [0]),
        .Q(int_nb_instruction[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[10] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [10]),
        .Q(int_nb_instruction[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[11] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [11]),
        .Q(int_nb_instruction[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[12] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [12]),
        .Q(int_nb_instruction[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[13] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [13]),
        .Q(int_nb_instruction[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[14] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [14]),
        .Q(int_nb_instruction[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[15] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [15]),
        .Q(int_nb_instruction[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[16] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [16]),
        .Q(int_nb_instruction[16]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[17] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [17]),
        .Q(int_nb_instruction[17]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[18] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [18]),
        .Q(int_nb_instruction[18]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[19] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [19]),
        .Q(int_nb_instruction[19]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[1] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [1]),
        .Q(int_nb_instruction[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[20] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [20]),
        .Q(int_nb_instruction[20]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[21] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [21]),
        .Q(int_nb_instruction[21]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[22] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [22]),
        .Q(int_nb_instruction[22]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[23] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [23]),
        .Q(int_nb_instruction[23]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[24] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [24]),
        .Q(int_nb_instruction[24]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[25] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [25]),
        .Q(int_nb_instruction[25]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[26] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [26]),
        .Q(int_nb_instruction[26]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[27] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [27]),
        .Q(int_nb_instruction[27]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[28] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [28]),
        .Q(int_nb_instruction[28]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[29] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [29]),
        .Q(int_nb_instruction[29]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[2] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [2]),
        .Q(int_nb_instruction[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[30] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [30]),
        .Q(int_nb_instruction[30]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[31] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [31]),
        .Q(int_nb_instruction[31]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[3] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [3]),
        .Q(int_nb_instruction[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[4] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [4]),
        .Q(int_nb_instruction[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[5] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [5]),
        .Q(int_nb_instruction[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[6] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [6]),
        .Q(int_nb_instruction[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[7] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [7]),
        .Q(int_nb_instruction[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[8] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [8]),
        .Q(int_nb_instruction[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_nb_instruction_reg[9] 
       (.C(ap_clk),
        .CE(Q[3]),
        .D(\int_nb_instruction_reg[31]_0 [9]),
        .Q(int_nb_instruction[9]),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[0]_i_1 
       (.I0(s_axi_control_WDATA[0]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[0]),
        .O(\int_start_pc[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[10]_i_1 
       (.I0(s_axi_control_WDATA[10]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[10]),
        .O(\int_start_pc[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[11]_i_1 
       (.I0(s_axi_control_WDATA[11]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[11]),
        .O(\int_start_pc[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[12]_i_1 
       (.I0(s_axi_control_WDATA[12]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[12]),
        .O(\int_start_pc[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[13]_i_1 
       (.I0(s_axi_control_WDATA[13]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[13]),
        .O(\int_start_pc[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[14]_i_1 
       (.I0(s_axi_control_WDATA[14]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[14]),
        .O(\int_start_pc[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[15]_i_1 
       (.I0(s_axi_control_WDATA[15]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[15]),
        .O(\int_start_pc[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[16]_i_1 
       (.I0(s_axi_control_WDATA[16]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[16] ),
        .O(\int_start_pc[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[17]_i_1 
       (.I0(s_axi_control_WDATA[17]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[17] ),
        .O(\int_start_pc[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[18]_i_1 
       (.I0(s_axi_control_WDATA[18]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[18] ),
        .O(\int_start_pc[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[19]_i_1 
       (.I0(s_axi_control_WDATA[19]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[19] ),
        .O(\int_start_pc[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[1]_i_1 
       (.I0(s_axi_control_WDATA[1]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[1]),
        .O(\int_start_pc[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[20]_i_1 
       (.I0(s_axi_control_WDATA[20]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[20] ),
        .O(\int_start_pc[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[21]_i_1 
       (.I0(s_axi_control_WDATA[21]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[21] ),
        .O(\int_start_pc[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[22]_i_1 
       (.I0(s_axi_control_WDATA[22]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[22] ),
        .O(\int_start_pc[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[23]_i_1 
       (.I0(s_axi_control_WDATA[23]),
        .I1(s_axi_control_WSTRB[2]),
        .I2(\int_start_pc_reg_n_0_[23] ),
        .O(\int_start_pc[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[24]_i_1 
       (.I0(s_axi_control_WDATA[24]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[24] ),
        .O(\int_start_pc[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[25]_i_1 
       (.I0(s_axi_control_WDATA[25]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[25] ),
        .O(\int_start_pc[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[26]_i_1 
       (.I0(s_axi_control_WDATA[26]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[26] ),
        .O(\int_start_pc[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[27]_i_1 
       (.I0(s_axi_control_WDATA[27]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[27] ),
        .O(\int_start_pc[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[28]_i_1 
       (.I0(s_axi_control_WDATA[28]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[28] ),
        .O(\int_start_pc[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[29]_i_1 
       (.I0(s_axi_control_WDATA[29]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[29] ),
        .O(\int_start_pc[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[2]_i_1 
       (.I0(s_axi_control_WDATA[2]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[2]),
        .O(\int_start_pc[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[30]_i_1 
       (.I0(s_axi_control_WDATA[30]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[30] ),
        .O(\int_start_pc[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \int_start_pc[31]_i_1 
       (.I0(\waddr_reg_n_0_[2] ),
        .I1(\waddr_reg_n_0_[4] ),
        .I2(\waddr_reg_n_0_[3] ),
        .I3(\int_start_pc[31]_i_3_n_0 ),
        .O(\int_start_pc[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[31]_i_2 
       (.I0(s_axi_control_WDATA[31]),
        .I1(s_axi_control_WSTRB[3]),
        .I2(\int_start_pc_reg_n_0_[31] ),
        .O(\int_start_pc[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \int_start_pc[31]_i_3 
       (.I0(\int_start_pc[31]_i_4_n_0 ),
        .I1(\int_start_pc[31]_i_5_n_0 ),
        .I2(\waddr_reg_n_0_[18] ),
        .I3(\waddr_reg_n_0_[17] ),
        .I4(\waddr_reg_n_0_[16] ),
        .I5(\waddr_reg_n_0_[15] ),
        .O(\int_start_pc[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \int_start_pc[31]_i_4 
       (.I0(\int_start_pc[31]_i_6_n_0 ),
        .I1(\waddr_reg_n_0_[1] ),
        .I2(\waddr_reg_n_0_[0] ),
        .I3(\waddr_reg_n_0_[6] ),
        .I4(\waddr_reg_n_0_[5] ),
        .I5(p_20_in),
        .O(\int_start_pc[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \int_start_pc[31]_i_5 
       (.I0(\waddr_reg_n_0_[14] ),
        .I1(\waddr_reg_n_0_[13] ),
        .I2(\waddr_reg_n_0_[12] ),
        .I3(\waddr_reg_n_0_[11] ),
        .O(\int_start_pc[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \int_start_pc[31]_i_6 
       (.I0(\waddr_reg_n_0_[10] ),
        .I1(\waddr_reg_n_0_[9] ),
        .I2(\waddr_reg_n_0_[8] ),
        .I3(\waddr_reg_n_0_[7] ),
        .O(\int_start_pc[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \int_start_pc[31]_i_7 
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(\FSM_onehot_rstate_reg[1]_0 ),
        .O(p_20_in));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[3]_i_1 
       (.I0(s_axi_control_WDATA[3]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[3]),
        .O(\int_start_pc[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[4]_i_1 
       (.I0(s_axi_control_WDATA[4]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[4]),
        .O(\int_start_pc[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[5]_i_1 
       (.I0(s_axi_control_WDATA[5]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[5]),
        .O(\int_start_pc[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[6]_i_1 
       (.I0(s_axi_control_WDATA[6]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[6]),
        .O(\int_start_pc[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[7]_i_1 
       (.I0(s_axi_control_WDATA[7]),
        .I1(s_axi_control_WSTRB[0]),
        .I2(start_pc[7]),
        .O(\int_start_pc[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[8]_i_1 
       (.I0(s_axi_control_WDATA[8]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[8]),
        .O(\int_start_pc[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \int_start_pc[9]_i_1 
       (.I0(s_axi_control_WDATA[9]),
        .I1(s_axi_control_WSTRB[1]),
        .I2(start_pc[9]),
        .O(\int_start_pc[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[0] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[0]_i_1_n_0 ),
        .Q(start_pc[0]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[10] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[10]_i_1_n_0 ),
        .Q(start_pc[10]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[11] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[11]_i_1_n_0 ),
        .Q(start_pc[11]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[12] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[12]_i_1_n_0 ),
        .Q(start_pc[12]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[13] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[13]_i_1_n_0 ),
        .Q(start_pc[13]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[14] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[14]_i_1_n_0 ),
        .Q(start_pc[14]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[15] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[15]_i_1_n_0 ),
        .Q(start_pc[15]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[16] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[16]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[16] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[17] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[17]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[17] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[18] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[18]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[18] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[19] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[19]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[19] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[1] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[1]_i_1_n_0 ),
        .Q(start_pc[1]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[20] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[20]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[20] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[21] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[21]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[21] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[22] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[22]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[22] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[23] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[23]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[23] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[24] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[24]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[24] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[25] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[25]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[25] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[26] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[26]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[26] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[27] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[27]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[27] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[28] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[28]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[28] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[29] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[29]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[29] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[2] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[2]_i_1_n_0 ),
        .Q(start_pc[2]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[30] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[30]_i_1_n_0 ),
        .Q(\int_start_pc_reg_n_0_[30] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[31] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[31]_i_2_n_0 ),
        .Q(\int_start_pc_reg_n_0_[31] ),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[3] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[3]_i_1_n_0 ),
        .Q(start_pc[3]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[4] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[4]_i_1_n_0 ),
        .Q(start_pc[4]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[5] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[5]_i_1_n_0 ),
        .Q(start_pc[5]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[6] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[6]_i_1_n_0 ),
        .Q(start_pc[6]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[7] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[7]_i_1_n_0 ),
        .Q(start_pc[7]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[8] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[8]_i_1_n_0 ),
        .Q(start_pc[8]),
        .R(ap_rst_n_inv));
  FDRE #(
    .INIT(1'b0)) 
    \int_start_pc_reg[9] 
       (.C(ap_clk),
        .CE(\int_start_pc[31]_i_1_n_0 ),
        .D(\int_start_pc[9]_i_1_n_0 ),
        .Q(start_pc[9]),
        .R(ap_rst_n_inv));
  LUT6 #(
    .INIT(64'hFFFFFFFBAAAAAAAA)) 
    int_task_ap_done_i_1
       (.I0(task_ap_done),
        .I1(\rdata[9]_i_3_n_0 ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[4]),
        .I5(int_task_ap_done),
        .O(int_task_ap_done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h02FF0200)) 
    int_task_ap_done_i_2
       (.I0(Q[0]),
        .I1(ap_start),
        .I2(p_3_in[2]),
        .I3(auto_restart_status_reg_n_0),
        .I4(Q[3]),
        .O(task_ap_done));
  FDRE #(
    .INIT(1'b0)) 
    int_task_ap_done_reg
       (.C(ap_clk),
        .CE(1'b1),
        .D(int_task_ap_done_i_1_n_0),
        .Q(int_task_ap_done),
        .R(ap_rst_n_inv));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \nbi_1_fu_70[0]_i_1 
       (.I0(ap_start),
        .I1(Q[0]),
        .O(ap_NS_fsm13_out));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[11]_i_2 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [11]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[11]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[11]_i_3 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [10]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[11]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[11]_i_4 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [9]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[11]_i_5 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [8]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[11]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[11]_i_6 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [11]),
        .I1(select_ln7_2_fu_136_p3[11]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[11]),
        .O(\pc_V_fu_66[11]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[11]_i_7 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [10]),
        .I1(select_ln7_2_fu_136_p3[10]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[10]),
        .O(\pc_V_fu_66[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[11]_i_8 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [9]),
        .I1(select_ln7_2_fu_136_p3[9]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[9]),
        .O(\pc_V_fu_66[11]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[11]_i_9 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [8]),
        .I1(select_ln7_2_fu_136_p3[8]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[8]),
        .O(\pc_V_fu_66[11]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFF808080)) 
    \pc_V_fu_66[15]_i_1 
       (.I0(is_running_V_reg_192),
        .I1(ap_enable_reg_pp0_iter1_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(ap_start),
        .O(\is_running_V_reg_192_reg[0] ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[15]_i_3 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [14]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[15]_i_4 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [13]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[15]_i_5 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [12]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[15]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[15]_i_6 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [15]),
        .I1(select_ln7_2_fu_136_p3[15]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[15]),
        .O(\pc_V_fu_66[15]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[15]_i_7 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [14]),
        .I1(select_ln7_2_fu_136_p3[14]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[14]),
        .O(\pc_V_fu_66[15]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[15]_i_8 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [13]),
        .I1(select_ln7_2_fu_136_p3[13]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[13]),
        .O(\pc_V_fu_66[15]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[15]_i_9 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [12]),
        .I1(select_ln7_2_fu_136_p3[12]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[12]),
        .O(\pc_V_fu_66[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[3]_i_2 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [3]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[3]_i_3 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [2]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[3]_i_4 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [1]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[3]_i_5 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [0]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[3]_i_6 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [3]),
        .I1(select_ln7_2_fu_136_p3[3]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[3]),
        .O(\pc_V_fu_66[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[3]_i_7 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [2]),
        .I1(select_ln7_2_fu_136_p3[2]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[2]),
        .O(\pc_V_fu_66[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[3]_i_8 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [1]),
        .I1(select_ln7_2_fu_136_p3[1]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[1]),
        .O(\pc_V_fu_66[3]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[3]_i_9 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [0]),
        .I1(select_ln7_2_fu_136_p3[0]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[0]),
        .O(\pc_V_fu_66[3]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[7]_i_2 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [7]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[7]_i_3 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [6]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[7]_i_4 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [5]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \pc_V_fu_66[7]_i_5 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [4]),
        .I1(Q[0]),
        .I2(ap_start),
        .O(\pc_V_fu_66[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[7]_i_6 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [7]),
        .I1(select_ln7_2_fu_136_p3[7]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[7]),
        .O(\pc_V_fu_66[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[7]_i_7 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [6]),
        .I1(select_ln7_2_fu_136_p3[6]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[6]),
        .O(\pc_V_fu_66[7]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[7]_i_8 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [5]),
        .I1(select_ln7_2_fu_136_p3[5]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[5]),
        .O(\pc_V_fu_66[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF6660666)) 
    \pc_V_fu_66[7]_i_9 
       (.I0(\pc_V_fu_66_reg[15]_rep__0 [4]),
        .I1(select_ln7_2_fu_136_p3[4]),
        .I2(Q[0]),
        .I3(ap_start),
        .I4(start_pc[4]),
        .O(\pc_V_fu_66[7]_i_9_n_0 ));
  CARRY4 \pc_V_fu_66_reg[11]_i_1 
       (.CI(\pc_V_fu_66_reg[7]_i_1_n_0 ),
        .CO({\pc_V_fu_66_reg[11]_i_1_n_0 ,\pc_V_fu_66_reg[11]_i_1_n_1 ,\pc_V_fu_66_reg[11]_i_1_n_2 ,\pc_V_fu_66_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pc_V_fu_66[11]_i_2_n_0 ,\pc_V_fu_66[11]_i_3_n_0 ,\pc_V_fu_66[11]_i_4_n_0 ,\pc_V_fu_66[11]_i_5_n_0 }),
        .O(out[11:8]),
        .S({\pc_V_fu_66[11]_i_6_n_0 ,\pc_V_fu_66[11]_i_7_n_0 ,\pc_V_fu_66[11]_i_8_n_0 ,\pc_V_fu_66[11]_i_9_n_0 }));
  CARRY4 \pc_V_fu_66_reg[15]_i_2 
       (.CI(\pc_V_fu_66_reg[11]_i_1_n_0 ),
        .CO({\NLW_pc_V_fu_66_reg[15]_i_2_CO_UNCONNECTED [3],\pc_V_fu_66_reg[15]_i_2_n_1 ,\pc_V_fu_66_reg[15]_i_2_n_2 ,\pc_V_fu_66_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\pc_V_fu_66[15]_i_3_n_0 ,\pc_V_fu_66[15]_i_4_n_0 ,\pc_V_fu_66[15]_i_5_n_0 }),
        .O(out[15:12]),
        .S({\pc_V_fu_66[15]_i_6_n_0 ,\pc_V_fu_66[15]_i_7_n_0 ,\pc_V_fu_66[15]_i_8_n_0 ,\pc_V_fu_66[15]_i_9_n_0 }));
  CARRY4 \pc_V_fu_66_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\pc_V_fu_66_reg[3]_i_1_n_0 ,\pc_V_fu_66_reg[3]_i_1_n_1 ,\pc_V_fu_66_reg[3]_i_1_n_2 ,\pc_V_fu_66_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pc_V_fu_66[3]_i_2_n_0 ,\pc_V_fu_66[3]_i_3_n_0 ,\pc_V_fu_66[3]_i_4_n_0 ,\pc_V_fu_66[3]_i_5_n_0 }),
        .O(out[3:0]),
        .S({\pc_V_fu_66[3]_i_6_n_0 ,\pc_V_fu_66[3]_i_7_n_0 ,\pc_V_fu_66[3]_i_8_n_0 ,\pc_V_fu_66[3]_i_9_n_0 }));
  CARRY4 \pc_V_fu_66_reg[7]_i_1 
       (.CI(\pc_V_fu_66_reg[3]_i_1_n_0 ),
        .CO({\pc_V_fu_66_reg[7]_i_1_n_0 ,\pc_V_fu_66_reg[7]_i_1_n_1 ,\pc_V_fu_66_reg[7]_i_1_n_2 ,\pc_V_fu_66_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\pc_V_fu_66[7]_i_2_n_0 ,\pc_V_fu_66[7]_i_3_n_0 ,\pc_V_fu_66[7]_i_4_n_0 ,\pc_V_fu_66[7]_i_5_n_0 }),
        .O(out[7:4]),
        .S({\pc_V_fu_66[7]_i_6_n_0 ,\pc_V_fu_66[7]_i_7_n_0 ,\pc_V_fu_66[7]_i_8_n_0 ,\pc_V_fu_66[7]_i_9_n_0 }));
  LUT6 #(
    .INIT(64'hFCFA0CFAFC0A0C0A)) 
    \rdata[0]_i_2 
       (.I0(ap_start),
        .I1(\int_ier_reg_n_0_[0] ),
        .I2(s_axi_control_ARADDR[2]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(data3[0]),
        .I5(int_gie_reg_n_0),
        .O(\rdata[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \rdata[0]_i_3 
       (.I0(start_pc[0]),
        .I1(int_nb_instruction_ap_vld),
        .I2(int_nb_instruction[0]),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[0]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \rdata[0]_i_4 
       (.I0(s_axi_control_ARADDR[0]),
        .I1(s_axi_control_ARADDR[4]),
        .I2(s_axi_control_ARADDR[1]),
        .O(\rdata[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3210FFFF32100000)) 
    \rdata[1]_i_2 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[2]),
        .I2(start_pc[1]),
        .I3(int_nb_instruction[1]),
        .I4(\rdata[0]_i_4_n_0 ),
        .I5(\rdata[1]_i_3_n_0 ),
        .O(\rdata[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hCC00F0AA)) 
    \rdata[1]_i_3 
       (.I0(int_task_ap_done),
        .I1(data3[1]),
        .I2(\int_ier_reg_n_0_[1] ),
        .I3(s_axi_control_ARADDR[3]),
        .I4(s_axi_control_ARADDR[2]),
        .O(\rdata[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \rdata[2]_i_2 
       (.I0(start_pc[2]),
        .I1(p_3_in[2]),
        .I2(int_nb_instruction[2]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\rdata[0]_i_4_n_0 ),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \rdata[31]_i_1 
       (.I0(s_axi_control_ARVALID),
        .I1(\FSM_onehot_rstate_reg[1]_0 ),
        .I2(int_code_ram_read),
        .O(\rdata[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000445400000000)) 
    \rdata[31]_i_3 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \rdata[31]_i_4 
       (.I0(\FSM_onehot_rstate_reg[1]_0 ),
        .I1(s_axi_control_ARVALID),
        .O(ar_hs__0));
  LUT6 #(
    .INIT(64'h000088A800000000)) 
    \rdata[31]_i_5 
       (.I0(s_axi_control_ARADDR[3]),
        .I1(s_axi_control_ARADDR[1]),
        .I2(s_axi_control_ARADDR[4]),
        .I3(s_axi_control_ARADDR[0]),
        .I4(s_axi_control_ARADDR[2]),
        .I5(\rdata[9]_i_3_n_0 ),
        .O(\rdata[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \rdata[3]_i_2 
       (.I0(start_pc[3]),
        .I1(int_ap_ready),
        .I2(int_nb_instruction[3]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\rdata[0]_i_4_n_0 ),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \rdata[7]_i_2 
       (.I0(start_pc[7]),
        .I1(p_3_in[7]),
        .I2(int_nb_instruction[7]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\rdata[0]_i_4_n_0 ),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000AA00CC)) 
    \rdata[9]_i_2 
       (.I0(start_pc[9]),
        .I1(interrupt),
        .I2(int_nb_instruction[9]),
        .I3(s_axi_control_ARADDR[2]),
        .I4(\rdata[0]_i_4_n_0 ),
        .I5(s_axi_control_ARADDR[3]),
        .O(\rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \rdata[9]_i_3 
       (.I0(s_axi_control_ARADDR[1]),
        .I1(s_axi_control_ARADDR[0]),
        .I2(s_axi_control_ARADDR[6]),
        .I3(s_axi_control_ARADDR[5]),
        .I4(\rdata[9]_i_4_n_0 ),
        .I5(\rdata[9]_i_5_n_0 ),
        .O(\rdata[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rdata[9]_i_4 
       (.I0(s_axi_control_ARADDR[7]),
        .I1(s_axi_control_ARADDR[8]),
        .I2(s_axi_control_ARADDR[9]),
        .I3(s_axi_control_ARADDR[10]),
        .I4(\rdata[9]_i_6_n_0 ),
        .O(\rdata[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \rdata[9]_i_5 
       (.I0(s_axi_control_ARADDR[15]),
        .I1(s_axi_control_ARADDR[16]),
        .I2(s_axi_control_ARADDR[17]),
        .I3(s_axi_control_ARADDR[18]),
        .I4(s_axi_control_ARVALID),
        .I5(\FSM_onehot_rstate_reg[1]_0 ),
        .O(\rdata[9]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \rdata[9]_i_6 
       (.I0(s_axi_control_ARADDR[14]),
        .I1(s_axi_control_ARADDR[13]),
        .I2(s_axi_control_ARADDR[12]),
        .I3(s_axi_control_ARADDR[11]),
        .O(\rdata[9]_i_6_n_0 ));
  FDRE \rdata_reg[0] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_32),
        .Q(s_axi_control_RDATA[0]),
        .R(1'b0));
  FDRE \rdata_reg[10] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_22),
        .Q(s_axi_control_RDATA[10]),
        .R(1'b0));
  FDRE \rdata_reg[11] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_21),
        .Q(s_axi_control_RDATA[11]),
        .R(1'b0));
  FDRE \rdata_reg[12] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_20),
        .Q(s_axi_control_RDATA[12]),
        .R(1'b0));
  FDRE \rdata_reg[13] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_19),
        .Q(s_axi_control_RDATA[13]),
        .R(1'b0));
  FDRE \rdata_reg[14] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_18),
        .Q(s_axi_control_RDATA[14]),
        .R(1'b0));
  FDRE \rdata_reg[15] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_17),
        .Q(s_axi_control_RDATA[15]),
        .R(1'b0));
  FDRE \rdata_reg[16] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_16),
        .Q(s_axi_control_RDATA[16]),
        .R(1'b0));
  FDRE \rdata_reg[17] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_15),
        .Q(s_axi_control_RDATA[17]),
        .R(1'b0));
  FDRE \rdata_reg[18] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_14),
        .Q(s_axi_control_RDATA[18]),
        .R(1'b0));
  FDRE \rdata_reg[19] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_13),
        .Q(s_axi_control_RDATA[19]),
        .R(1'b0));
  FDRE \rdata_reg[1] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_31),
        .Q(s_axi_control_RDATA[1]),
        .R(1'b0));
  FDRE \rdata_reg[20] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_12),
        .Q(s_axi_control_RDATA[20]),
        .R(1'b0));
  FDRE \rdata_reg[21] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_11),
        .Q(s_axi_control_RDATA[21]),
        .R(1'b0));
  FDRE \rdata_reg[22] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_10),
        .Q(s_axi_control_RDATA[22]),
        .R(1'b0));
  FDRE \rdata_reg[23] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_9),
        .Q(s_axi_control_RDATA[23]),
        .R(1'b0));
  FDRE \rdata_reg[24] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_8),
        .Q(s_axi_control_RDATA[24]),
        .R(1'b0));
  FDRE \rdata_reg[25] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_7),
        .Q(s_axi_control_RDATA[25]),
        .R(1'b0));
  FDRE \rdata_reg[26] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_6),
        .Q(s_axi_control_RDATA[26]),
        .R(1'b0));
  FDRE \rdata_reg[27] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_5),
        .Q(s_axi_control_RDATA[27]),
        .R(1'b0));
  FDRE \rdata_reg[28] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_4),
        .Q(s_axi_control_RDATA[28]),
        .R(1'b0));
  FDRE \rdata_reg[29] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_3),
        .Q(s_axi_control_RDATA[29]),
        .R(1'b0));
  FDRE \rdata_reg[2] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_30),
        .Q(s_axi_control_RDATA[2]),
        .R(1'b0));
  FDRE \rdata_reg[30] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_2),
        .Q(s_axi_control_RDATA[30]),
        .R(1'b0));
  FDRE \rdata_reg[31] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_1),
        .Q(s_axi_control_RDATA[31]),
        .R(1'b0));
  FDRE \rdata_reg[3] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_29),
        .Q(s_axi_control_RDATA[3]),
        .R(1'b0));
  FDRE \rdata_reg[4] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_28),
        .Q(s_axi_control_RDATA[4]),
        .R(1'b0));
  FDRE \rdata_reg[5] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_27),
        .Q(s_axi_control_RDATA[5]),
        .R(1'b0));
  FDRE \rdata_reg[6] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_26),
        .Q(s_axi_control_RDATA[6]),
        .R(1'b0));
  FDRE \rdata_reg[7] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_25),
        .Q(s_axi_control_RDATA[7]),
        .R(1'b0));
  FDRE \rdata_reg[8] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_24),
        .Q(s_axi_control_RDATA[8]),
        .R(1'b0));
  FDRE \rdata_reg[9] 
       (.C(ap_clk),
        .CE(\rdata[31]_i_1_n_0 ),
        .D(int_code_ram_n_23),
        .Q(s_axi_control_RDATA[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_control_RVALID_INST_0
       (.I0(\FSM_onehot_rstate_reg_n_0_[2] ),
        .I1(int_code_ram_read),
        .O(s_axi_control_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    s_axi_control_WREADY_INST_0
       (.I0(\FSM_onehot_wstate_reg_n_0_[2] ),
        .I1(s_axi_control_ARVALID),
        .I2(\FSM_onehot_rstate_reg[1]_0 ),
        .O(s_axi_control_WREADY));
  LUT2 #(
    .INIT(4'h8)) 
    \waddr[18]_i_1 
       (.I0(\FSM_onehot_wstate_reg[1]_0 ),
        .I1(s_axi_control_AWVALID),
        .O(aw_hs));
  FDRE \waddr_reg[0] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[10] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[10]),
        .Q(\waddr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \waddr_reg[11] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[11]),
        .Q(\waddr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \waddr_reg[12] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[12]),
        .Q(\waddr_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \waddr_reg[13] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[13]),
        .Q(\waddr_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \waddr_reg[14] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[14]),
        .Q(\waddr_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \waddr_reg[15] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[15]),
        .Q(\waddr_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \waddr_reg[16] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[16]),
        .Q(\waddr_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \waddr_reg[17] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[17]),
        .Q(\waddr_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \waddr_reg[18] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[18]),
        .Q(\waddr_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \waddr_reg[1] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \waddr_reg[8] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[8]),
        .Q(\waddr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \waddr_reg[9] 
       (.C(ap_clk),
        .CE(aw_hs),
        .D(s_axi_control_AWADDR[9]),
        .Q(\waddr_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_control_s_axi_ram
   (mem_reg_0_1_6_0,
    D,
    ap_rst_n_0,
    is_running_V_running_cond_update_fu_100_ap_return,
    mem_reg_3_1_1_0,
    mem_reg_0_1_2_0,
    mem_reg_0_1_2_1,
    mem_reg_3_1_2_0,
    mem_reg_3_1_3_0,
    mem_reg_3_1_4_0,
    mem_reg_3_1_5_0,
    mem_reg_3_1_6_0,
    mem_reg_3_1_7_0,
    mem_reg_0_1_2_2,
    mem_reg_3_1_7_1,
    mem_reg_3_1_7_2,
    mem_reg_3_1_7_3,
    mem_reg_3_1_7_4,
    mem_reg_3_1_7_5,
    trunc_ln34_fu_144_p1,
    Q,
    \rdata_reg[0] ,
    ar_hs__0,
    \rdata_reg[0]_0 ,
    \rdata_reg[0]_1 ,
    \rdata_reg[0]_2 ,
    mem_reg_3_1_7_6,
    s_axi_control_ARVALID,
    \rdata_reg[1] ,
    \rdata_reg[2] ,
    \rdata_reg[3] ,
    \rdata_reg[4] ,
    \rdata_reg[31] ,
    \rdata_reg[31]_0 ,
    \rdata_reg[4]_0 ,
    \rdata_reg[7] ,
    \rdata_reg[9] ,
    mem_reg_1_0_0_0,
    mem_reg_1_0_0_1,
    s_axi_control_WVALID,
    s_axi_control_WSTRB,
    s_axi_control_WDATA,
    ap_enable_reg_pp0_iter0_reg,
    ap_rst_n,
    s_axi_control_ARADDR,
    mem_reg_0_0_0_0,
    ap_clk,
    mem_reg_0_0_0_1,
    mem_reg_0_1_0_0,
    mem_reg_0_1_0_1,
    mem_reg_0_0_1_0,
    mem_reg_0_1_1_0,
    mem_reg_0_0_2_0,
    ADDRBWRADDR,
    mem_reg_0_1_2_3,
    mem_reg_0_0_3_0,
    mem_reg_0_1_3_0,
    mem_reg_0_0_4_0,
    mem_reg_0_1_4_0,
    mem_reg_0_0_5_0,
    mem_reg_0_1_5_0,
    mem_reg_0_0_6_0,
    mem_reg_0_1_6_1,
    mem_reg_0_0_7_0,
    mem_reg_0_1_7_0,
    mem_reg_1_0_0_2,
    mem_reg_1_1_0_0,
    mem_reg_1_0_1_0,
    mem_reg_1_1_1_0,
    mem_reg_1_0_2_0,
    mem_reg_1_1_2_0,
    mem_reg_1_0_3_0,
    mem_reg_1_1_3_0,
    mem_reg_1_0_4_0,
    mem_reg_1_1_4_0,
    mem_reg_1_0_5_0,
    mem_reg_1_1_5_0,
    mem_reg_1_0_6_0,
    mem_reg_1_1_6_0,
    mem_reg_1_0_7_0,
    mem_reg_1_1_7_0,
    mem_reg_2_0_0_0,
    mem_reg_2_1_0_0,
    mem_reg_2_0_1_0,
    mem_reg_2_1_1_0,
    mem_reg_2_0_2_0,
    mem_reg_2_1_2_0,
    mem_reg_2_0_3_0,
    mem_reg_2_1_3_0,
    mem_reg_2_0_4_0,
    mem_reg_2_1_4_0,
    mem_reg_2_0_5_0,
    mem_reg_2_0_5_1,
    mem_reg_2_1_5_0,
    mem_reg_2_0_6_0,
    mem_reg_2_1_6_0,
    mem_reg_2_0_7_0,
    mem_reg_2_1_7_0,
    mem_reg_3_0_0_0,
    mem_reg_3_1_0_0,
    mem_reg_3_0_1_0,
    mem_reg_3_1_1_1,
    mem_reg_3_0_2_0,
    mem_reg_3_1_2_1,
    mem_reg_3_0_3_0,
    mem_reg_3_1_3_1,
    mem_reg_3_0_4_0,
    mem_reg_3_1_4_1,
    mem_reg_3_0_5_0,
    mem_reg_3_1_5_1,
    mem_reg_3_0_6_0,
    mem_reg_3_1_6_1,
    mem_reg_3_0_7_0,
    ce0);
  output mem_reg_0_1_6_0;
  output [31:0]D;
  output ap_rst_n_0;
  output is_running_V_running_cond_update_fu_100_ap_return;
  output mem_reg_3_1_1_0;
  output mem_reg_0_1_2_0;
  output mem_reg_0_1_2_1;
  output mem_reg_3_1_2_0;
  output mem_reg_3_1_3_0;
  output mem_reg_3_1_4_0;
  output mem_reg_3_1_5_0;
  output mem_reg_3_1_6_0;
  output mem_reg_3_1_7_0;
  output mem_reg_0_1_2_2;
  output mem_reg_3_1_7_1;
  output mem_reg_3_1_7_2;
  output mem_reg_3_1_7_3;
  output mem_reg_3_1_7_4;
  output mem_reg_3_1_7_5;
  output [3:0]trunc_ln34_fu_144_p1;
  input [0:0]Q;
  input \rdata_reg[0] ;
  input ar_hs__0;
  input \rdata_reg[0]_0 ;
  input \rdata_reg[0]_1 ;
  input \rdata_reg[0]_2 ;
  input mem_reg_3_1_7_6;
  input s_axi_control_ARVALID;
  input \rdata_reg[1] ;
  input \rdata_reg[2] ;
  input \rdata_reg[3] ;
  input \rdata_reg[4] ;
  input [25:0]\rdata_reg[31] ;
  input [25:0]\rdata_reg[31]_0 ;
  input \rdata_reg[4]_0 ;
  input \rdata_reg[7] ;
  input \rdata_reg[9] ;
  input mem_reg_1_0_0_0;
  input mem_reg_1_0_0_1;
  input s_axi_control_WVALID;
  input [3:0]s_axi_control_WSTRB;
  input [31:0]s_axi_control_WDATA;
  input ap_enable_reg_pp0_iter0_reg;
  input ap_rst_n;
  input [15:0]s_axi_control_ARADDR;
  input [15:0]mem_reg_0_0_0_0;
  input ap_clk;
  input mem_reg_0_0_0_1;
  input [15:0]mem_reg_0_1_0_0;
  input mem_reg_0_1_0_1;
  input mem_reg_0_0_1_0;
  input mem_reg_0_1_1_0;
  input mem_reg_0_0_2_0;
  input [15:0]ADDRBWRADDR;
  input mem_reg_0_1_2_3;
  input mem_reg_0_0_3_0;
  input mem_reg_0_1_3_0;
  input mem_reg_0_0_4_0;
  input mem_reg_0_1_4_0;
  input mem_reg_0_0_5_0;
  input mem_reg_0_1_5_0;
  input mem_reg_0_0_6_0;
  input mem_reg_0_1_6_1;
  input mem_reg_0_0_7_0;
  input mem_reg_0_1_7_0;
  input mem_reg_1_0_0_2;
  input mem_reg_1_1_0_0;
  input mem_reg_1_0_1_0;
  input mem_reg_1_1_1_0;
  input mem_reg_1_0_2_0;
  input mem_reg_1_1_2_0;
  input mem_reg_1_0_3_0;
  input mem_reg_1_1_3_0;
  input mem_reg_1_0_4_0;
  input mem_reg_1_1_4_0;
  input mem_reg_1_0_5_0;
  input mem_reg_1_1_5_0;
  input mem_reg_1_0_6_0;
  input mem_reg_1_1_6_0;
  input mem_reg_1_0_7_0;
  input mem_reg_1_1_7_0;
  input mem_reg_2_0_0_0;
  input mem_reg_2_1_0_0;
  input mem_reg_2_0_1_0;
  input mem_reg_2_1_1_0;
  input mem_reg_2_0_2_0;
  input mem_reg_2_1_2_0;
  input mem_reg_2_0_3_0;
  input mem_reg_2_1_3_0;
  input mem_reg_2_0_4_0;
  input mem_reg_2_1_4_0;
  input mem_reg_2_0_5_0;
  input [15:0]mem_reg_2_0_5_1;
  input mem_reg_2_1_5_0;
  input mem_reg_2_0_6_0;
  input mem_reg_2_1_6_0;
  input mem_reg_2_0_7_0;
  input mem_reg_2_1_7_0;
  input mem_reg_3_0_0_0;
  input mem_reg_3_1_0_0;
  input mem_reg_3_0_1_0;
  input mem_reg_3_1_1_1;
  input mem_reg_3_0_2_0;
  input mem_reg_3_1_2_1;
  input mem_reg_3_0_3_0;
  input mem_reg_3_1_3_1;
  input mem_reg_3_0_4_0;
  input mem_reg_3_1_4_1;
  input mem_reg_3_0_5_0;
  input mem_reg_3_1_5_1;
  input mem_reg_3_0_6_0;
  input mem_reg_3_1_6_1;
  input mem_reg_3_0_7_0;
  input ce0;

  wire [15:0]ADDRBWRADDR;
  wire [31:0]D;
  wire [0:0]Q;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0_i_3_n_0;
  wire ap_enable_reg_pp0_iter0_i_4_n_0;
  wire ap_enable_reg_pp0_iter0_i_5_n_0;
  wire ap_enable_reg_pp0_iter0_i_6_n_0;
  wire ap_enable_reg_pp0_iter0_reg;
  wire ap_rst_n;
  wire ap_rst_n_0;
  wire ar_hs__0;
  wire ce0;
  wire [31:0]code_ram_q0;
  wire [3:1]int_code_ram_be1;
  wire [31:0]int_code_ram_q1;
  wire \is_running_V_reg_192[0]_i_2_n_0 ;
  wire \is_running_V_reg_192[0]_i_3_n_0 ;
  wire \is_running_V_reg_192[0]_i_4_n_0 ;
  wire \is_running_V_reg_192[0]_i_5_n_0 ;
  wire \is_running_V_reg_192[0]_i_6_n_0 ;
  wire \is_running_V_reg_192[0]_i_7_n_0 ;
  wire \is_running_V_reg_192[0]_i_8_n_0 ;
  wire is_running_V_running_cond_update_fu_100_ap_return;
  wire [15:0]mem_reg_0_0_0_0;
  wire mem_reg_0_0_0_1;
  wire mem_reg_0_0_0_i_10_n_0;
  wire mem_reg_0_0_0_i_11_n_0;
  wire mem_reg_0_0_0_i_12_n_0;
  wire mem_reg_0_0_0_i_13_n_0;
  wire mem_reg_0_0_0_i_14_n_0;
  wire mem_reg_0_0_0_i_15_n_0;
  wire mem_reg_0_0_0_i_16_n_0;
  wire mem_reg_0_0_0_i_17_n_0;
  wire mem_reg_0_0_0_i_18_n_0;
  wire mem_reg_0_0_0_i_19_n_0;
  wire mem_reg_0_0_0_i_1_n_0;
  wire mem_reg_0_0_0_i_3_n_0;
  wire mem_reg_0_0_0_i_4_n_0;
  wire mem_reg_0_0_0_i_5_n_0;
  wire mem_reg_0_0_0_i_6_n_0;
  wire mem_reg_0_0_0_i_7_n_0;
  wire mem_reg_0_0_0_i_8_n_0;
  wire mem_reg_0_0_0_i_9_n_0;
  wire mem_reg_0_0_0_n_0;
  wire mem_reg_0_0_0_n_1;
  wire mem_reg_0_0_1_0;
  wire mem_reg_0_0_1_i_10_n_0;
  wire mem_reg_0_0_1_i_11_n_0;
  wire mem_reg_0_0_1_i_12_n_0;
  wire mem_reg_0_0_1_i_13_n_0;
  wire mem_reg_0_0_1_i_14_n_0;
  wire mem_reg_0_0_1_i_15_n_0;
  wire mem_reg_0_0_1_i_16_n_0;
  wire mem_reg_0_0_1_i_17_n_0;
  wire mem_reg_0_0_1_i_18_n_0;
  wire mem_reg_0_0_1_i_19_n_0;
  wire mem_reg_0_0_1_i_1_n_0;
  wire mem_reg_0_0_1_i_3_n_0;
  wire mem_reg_0_0_1_i_4_n_0;
  wire mem_reg_0_0_1_i_5_n_0;
  wire mem_reg_0_0_1_i_6_n_0;
  wire mem_reg_0_0_1_i_7_n_0;
  wire mem_reg_0_0_1_i_8_n_0;
  wire mem_reg_0_0_1_i_9_n_0;
  wire mem_reg_0_0_1_n_0;
  wire mem_reg_0_0_1_n_1;
  wire mem_reg_0_0_2_0;
  wire mem_reg_0_0_2_i_10_n_0;
  wire mem_reg_0_0_2_i_11_n_0;
  wire mem_reg_0_0_2_i_12_n_0;
  wire mem_reg_0_0_2_i_13_n_0;
  wire mem_reg_0_0_2_i_14_n_0;
  wire mem_reg_0_0_2_i_15_n_0;
  wire mem_reg_0_0_2_i_16_n_0;
  wire mem_reg_0_0_2_i_17_n_0;
  wire mem_reg_0_0_2_i_18_n_0;
  wire mem_reg_0_0_2_i_19_n_0;
  wire mem_reg_0_0_2_i_1_n_0;
  wire mem_reg_0_0_2_i_3_n_0;
  wire mem_reg_0_0_2_i_4_n_0;
  wire mem_reg_0_0_2_i_5_n_0;
  wire mem_reg_0_0_2_i_6_n_0;
  wire mem_reg_0_0_2_i_7_n_0;
  wire mem_reg_0_0_2_i_8_n_0;
  wire mem_reg_0_0_2_i_9_n_0;
  wire mem_reg_0_0_2_n_0;
  wire mem_reg_0_0_2_n_1;
  wire mem_reg_0_0_3_0;
  wire mem_reg_0_0_3_i_10_n_0;
  wire mem_reg_0_0_3_i_11_n_0;
  wire mem_reg_0_0_3_i_12_n_0;
  wire mem_reg_0_0_3_i_13_n_0;
  wire mem_reg_0_0_3_i_14_n_0;
  wire mem_reg_0_0_3_i_15_n_0;
  wire mem_reg_0_0_3_i_16_n_0;
  wire mem_reg_0_0_3_i_17_n_0;
  wire mem_reg_0_0_3_i_18_n_0;
  wire mem_reg_0_0_3_i_19_n_0;
  wire mem_reg_0_0_3_i_1_n_0;
  wire mem_reg_0_0_3_i_3_n_0;
  wire mem_reg_0_0_3_i_4_n_0;
  wire mem_reg_0_0_3_i_5_n_0;
  wire mem_reg_0_0_3_i_6_n_0;
  wire mem_reg_0_0_3_i_7_n_0;
  wire mem_reg_0_0_3_i_8_n_0;
  wire mem_reg_0_0_3_i_9_n_0;
  wire mem_reg_0_0_3_n_0;
  wire mem_reg_0_0_3_n_1;
  wire mem_reg_0_0_4_0;
  wire mem_reg_0_0_4_i_10_n_0;
  wire mem_reg_0_0_4_i_11_n_0;
  wire mem_reg_0_0_4_i_12_n_0;
  wire mem_reg_0_0_4_i_13_n_0;
  wire mem_reg_0_0_4_i_14_n_0;
  wire mem_reg_0_0_4_i_15_n_0;
  wire mem_reg_0_0_4_i_16_n_0;
  wire mem_reg_0_0_4_i_17_n_0;
  wire mem_reg_0_0_4_i_18_n_0;
  wire mem_reg_0_0_4_i_19_n_0;
  wire mem_reg_0_0_4_i_1_n_0;
  wire mem_reg_0_0_4_i_3_n_0;
  wire mem_reg_0_0_4_i_4_n_0;
  wire mem_reg_0_0_4_i_5_n_0;
  wire mem_reg_0_0_4_i_6_n_0;
  wire mem_reg_0_0_4_i_7_n_0;
  wire mem_reg_0_0_4_i_8_n_0;
  wire mem_reg_0_0_4_i_9_n_0;
  wire mem_reg_0_0_4_n_0;
  wire mem_reg_0_0_4_n_1;
  wire mem_reg_0_0_5_0;
  wire mem_reg_0_0_5_i_10_n_0;
  wire mem_reg_0_0_5_i_11_n_0;
  wire mem_reg_0_0_5_i_12_n_0;
  wire mem_reg_0_0_5_i_13_n_0;
  wire mem_reg_0_0_5_i_14_n_0;
  wire mem_reg_0_0_5_i_15_n_0;
  wire mem_reg_0_0_5_i_16_n_0;
  wire mem_reg_0_0_5_i_17_n_0;
  wire mem_reg_0_0_5_i_18_n_0;
  wire mem_reg_0_0_5_i_19_n_0;
  wire mem_reg_0_0_5_i_1_n_0;
  wire mem_reg_0_0_5_i_3_n_0;
  wire mem_reg_0_0_5_i_4_n_0;
  wire mem_reg_0_0_5_i_5_n_0;
  wire mem_reg_0_0_5_i_6_n_0;
  wire mem_reg_0_0_5_i_7_n_0;
  wire mem_reg_0_0_5_i_8_n_0;
  wire mem_reg_0_0_5_i_9_n_0;
  wire mem_reg_0_0_5_n_0;
  wire mem_reg_0_0_5_n_1;
  wire mem_reg_0_0_6_0;
  wire mem_reg_0_0_6_i_10_n_0;
  wire mem_reg_0_0_6_i_11_n_0;
  wire mem_reg_0_0_6_i_12_n_0;
  wire mem_reg_0_0_6_i_13_n_0;
  wire mem_reg_0_0_6_i_14_n_0;
  wire mem_reg_0_0_6_i_15_n_0;
  wire mem_reg_0_0_6_i_16_n_0;
  wire mem_reg_0_0_6_i_17_n_0;
  wire mem_reg_0_0_6_i_18_n_0;
  wire mem_reg_0_0_6_i_19_n_0;
  wire mem_reg_0_0_6_i_1_n_0;
  wire mem_reg_0_0_6_i_3_n_0;
  wire mem_reg_0_0_6_i_4_n_0;
  wire mem_reg_0_0_6_i_5_n_0;
  wire mem_reg_0_0_6_i_6_n_0;
  wire mem_reg_0_0_6_i_7_n_0;
  wire mem_reg_0_0_6_i_8_n_0;
  wire mem_reg_0_0_6_i_9_n_0;
  wire mem_reg_0_0_6_n_0;
  wire mem_reg_0_0_6_n_1;
  wire mem_reg_0_0_7_0;
  wire mem_reg_0_0_7_i_10_n_0;
  wire mem_reg_0_0_7_i_11_n_0;
  wire mem_reg_0_0_7_i_12_n_0;
  wire mem_reg_0_0_7_i_13_n_0;
  wire mem_reg_0_0_7_i_14_n_0;
  wire mem_reg_0_0_7_i_15_n_0;
  wire mem_reg_0_0_7_i_16_n_0;
  wire mem_reg_0_0_7_i_17_n_0;
  wire mem_reg_0_0_7_i_18_n_0;
  wire mem_reg_0_0_7_i_19_n_0;
  wire mem_reg_0_0_7_i_1_n_0;
  wire mem_reg_0_0_7_i_3_n_0;
  wire mem_reg_0_0_7_i_4_n_0;
  wire mem_reg_0_0_7_i_5_n_0;
  wire mem_reg_0_0_7_i_6_n_0;
  wire mem_reg_0_0_7_i_7_n_0;
  wire mem_reg_0_0_7_i_8_n_0;
  wire mem_reg_0_0_7_i_9_n_0;
  wire mem_reg_0_0_7_n_0;
  wire mem_reg_0_0_7_n_1;
  wire [15:0]mem_reg_0_1_0_0;
  wire mem_reg_0_1_0_1;
  wire mem_reg_0_1_0_i_10_n_0;
  wire mem_reg_0_1_0_i_11_n_0;
  wire mem_reg_0_1_0_i_12_n_0;
  wire mem_reg_0_1_0_i_13_n_0;
  wire mem_reg_0_1_0_i_14_n_0;
  wire mem_reg_0_1_0_i_15_n_0;
  wire mem_reg_0_1_0_i_16_n_0;
  wire mem_reg_0_1_0_i_17_n_0;
  wire mem_reg_0_1_0_i_18_n_0;
  wire mem_reg_0_1_0_i_19_n_0;
  wire mem_reg_0_1_0_i_1_n_0;
  wire mem_reg_0_1_0_i_3_n_0;
  wire mem_reg_0_1_0_i_4_n_0;
  wire mem_reg_0_1_0_i_5_n_0;
  wire mem_reg_0_1_0_i_6_n_0;
  wire mem_reg_0_1_0_i_7_n_0;
  wire mem_reg_0_1_0_i_8_n_0;
  wire mem_reg_0_1_0_i_9_n_0;
  wire mem_reg_0_1_1_0;
  wire mem_reg_0_1_1_i_10_n_0;
  wire mem_reg_0_1_1_i_11_n_0;
  wire mem_reg_0_1_1_i_12_n_0;
  wire mem_reg_0_1_1_i_13_n_0;
  wire mem_reg_0_1_1_i_14_n_0;
  wire mem_reg_0_1_1_i_15_n_0;
  wire mem_reg_0_1_1_i_16_n_0;
  wire mem_reg_0_1_1_i_17_n_0;
  wire mem_reg_0_1_1_i_18_n_0;
  wire mem_reg_0_1_1_i_19_n_0;
  wire mem_reg_0_1_1_i_1_n_0;
  wire mem_reg_0_1_1_i_3_n_0;
  wire mem_reg_0_1_1_i_4_n_0;
  wire mem_reg_0_1_1_i_5_n_0;
  wire mem_reg_0_1_1_i_6_n_0;
  wire mem_reg_0_1_1_i_7_n_0;
  wire mem_reg_0_1_1_i_8_n_0;
  wire mem_reg_0_1_1_i_9_n_0;
  wire mem_reg_0_1_2_0;
  wire mem_reg_0_1_2_1;
  wire mem_reg_0_1_2_2;
  wire mem_reg_0_1_2_3;
  wire mem_reg_0_1_2_i_10_n_0;
  wire mem_reg_0_1_2_i_11_n_0;
  wire mem_reg_0_1_2_i_12_n_0;
  wire mem_reg_0_1_2_i_13_n_0;
  wire mem_reg_0_1_2_i_14_n_0;
  wire mem_reg_0_1_2_i_15_n_0;
  wire mem_reg_0_1_2_i_16_n_0;
  wire mem_reg_0_1_2_i_17_n_0;
  wire mem_reg_0_1_2_i_18_n_0;
  wire mem_reg_0_1_2_i_19_n_0;
  wire mem_reg_0_1_2_i_1_n_0;
  wire mem_reg_0_1_2_i_3_n_0;
  wire mem_reg_0_1_2_i_4_n_0;
  wire mem_reg_0_1_2_i_5_n_0;
  wire mem_reg_0_1_2_i_6_n_0;
  wire mem_reg_0_1_2_i_7_n_0;
  wire mem_reg_0_1_2_i_8_n_0;
  wire mem_reg_0_1_2_i_9_n_0;
  wire mem_reg_0_1_3_0;
  wire mem_reg_0_1_3_i_10_n_0;
  wire mem_reg_0_1_3_i_11_n_0;
  wire mem_reg_0_1_3_i_12_n_0;
  wire mem_reg_0_1_3_i_13_n_0;
  wire mem_reg_0_1_3_i_14_n_0;
  wire mem_reg_0_1_3_i_15_n_0;
  wire mem_reg_0_1_3_i_16_n_0;
  wire mem_reg_0_1_3_i_17_n_0;
  wire mem_reg_0_1_3_i_18_n_0;
  wire mem_reg_0_1_3_i_19_n_0;
  wire mem_reg_0_1_3_i_1_n_0;
  wire mem_reg_0_1_3_i_3_n_0;
  wire mem_reg_0_1_3_i_4_n_0;
  wire mem_reg_0_1_3_i_5_n_0;
  wire mem_reg_0_1_3_i_6_n_0;
  wire mem_reg_0_1_3_i_7_n_0;
  wire mem_reg_0_1_3_i_8_n_0;
  wire mem_reg_0_1_3_i_9_n_0;
  wire mem_reg_0_1_4_0;
  wire mem_reg_0_1_4_i_10_n_0;
  wire mem_reg_0_1_4_i_11_n_0;
  wire mem_reg_0_1_4_i_12_n_0;
  wire mem_reg_0_1_4_i_13_n_0;
  wire mem_reg_0_1_4_i_14_n_0;
  wire mem_reg_0_1_4_i_15_n_0;
  wire mem_reg_0_1_4_i_16_n_0;
  wire mem_reg_0_1_4_i_17_n_0;
  wire mem_reg_0_1_4_i_18_n_0;
  wire mem_reg_0_1_4_i_19_n_0;
  wire mem_reg_0_1_4_i_1_n_0;
  wire mem_reg_0_1_4_i_3_n_0;
  wire mem_reg_0_1_4_i_4_n_0;
  wire mem_reg_0_1_4_i_5_n_0;
  wire mem_reg_0_1_4_i_6_n_0;
  wire mem_reg_0_1_4_i_7_n_0;
  wire mem_reg_0_1_4_i_8_n_0;
  wire mem_reg_0_1_4_i_9_n_0;
  wire mem_reg_0_1_5_0;
  wire mem_reg_0_1_5_i_10_n_0;
  wire mem_reg_0_1_5_i_11_n_0;
  wire mem_reg_0_1_5_i_12_n_0;
  wire mem_reg_0_1_5_i_13_n_0;
  wire mem_reg_0_1_5_i_14_n_0;
  wire mem_reg_0_1_5_i_15_n_0;
  wire mem_reg_0_1_5_i_16_n_0;
  wire mem_reg_0_1_5_i_17_n_0;
  wire mem_reg_0_1_5_i_18_n_0;
  wire mem_reg_0_1_5_i_19_n_0;
  wire mem_reg_0_1_5_i_1_n_0;
  wire mem_reg_0_1_5_i_3_n_0;
  wire mem_reg_0_1_5_i_4_n_0;
  wire mem_reg_0_1_5_i_5_n_0;
  wire mem_reg_0_1_5_i_6_n_0;
  wire mem_reg_0_1_5_i_7_n_0;
  wire mem_reg_0_1_5_i_8_n_0;
  wire mem_reg_0_1_5_i_9_n_0;
  wire mem_reg_0_1_6_0;
  wire mem_reg_0_1_6_1;
  wire mem_reg_0_1_6_i_10_n_0;
  wire mem_reg_0_1_6_i_11_n_0;
  wire mem_reg_0_1_6_i_12_n_0;
  wire mem_reg_0_1_6_i_13_n_0;
  wire mem_reg_0_1_6_i_14_n_0;
  wire mem_reg_0_1_6_i_15_n_0;
  wire mem_reg_0_1_6_i_16_n_0;
  wire mem_reg_0_1_6_i_17_n_0;
  wire mem_reg_0_1_6_i_18_n_0;
  wire mem_reg_0_1_6_i_19_n_0;
  wire mem_reg_0_1_6_i_1_n_0;
  wire mem_reg_0_1_6_i_3_n_0;
  wire mem_reg_0_1_6_i_4_n_0;
  wire mem_reg_0_1_6_i_5_n_0;
  wire mem_reg_0_1_6_i_6_n_0;
  wire mem_reg_0_1_6_i_7_n_0;
  wire mem_reg_0_1_6_i_8_n_0;
  wire mem_reg_0_1_6_i_9_n_0;
  wire mem_reg_0_1_7_0;
  wire mem_reg_0_1_7_i_10_n_0;
  wire mem_reg_0_1_7_i_11_n_0;
  wire mem_reg_0_1_7_i_12_n_0;
  wire mem_reg_0_1_7_i_13_n_0;
  wire mem_reg_0_1_7_i_14_n_0;
  wire mem_reg_0_1_7_i_15_n_0;
  wire mem_reg_0_1_7_i_16_n_0;
  wire mem_reg_0_1_7_i_17_n_0;
  wire mem_reg_0_1_7_i_18_n_0;
  wire mem_reg_0_1_7_i_19_n_0;
  wire mem_reg_0_1_7_i_1_n_0;
  wire mem_reg_0_1_7_i_3_n_0;
  wire mem_reg_0_1_7_i_4_n_0;
  wire mem_reg_0_1_7_i_5_n_0;
  wire mem_reg_0_1_7_i_6_n_0;
  wire mem_reg_0_1_7_i_7_n_0;
  wire mem_reg_0_1_7_i_8_n_0;
  wire mem_reg_0_1_7_i_9_n_0;
  wire mem_reg_1_0_0_0;
  wire mem_reg_1_0_0_1;
  wire mem_reg_1_0_0_2;
  wire mem_reg_1_0_0_i_10_n_0;
  wire mem_reg_1_0_0_i_11_n_0;
  wire mem_reg_1_0_0_i_12_n_0;
  wire mem_reg_1_0_0_i_13_n_0;
  wire mem_reg_1_0_0_i_14_n_0;
  wire mem_reg_1_0_0_i_15_n_0;
  wire mem_reg_1_0_0_i_16_n_0;
  wire mem_reg_1_0_0_i_17_n_0;
  wire mem_reg_1_0_0_i_18_n_0;
  wire mem_reg_1_0_0_i_1_n_0;
  wire mem_reg_1_0_0_i_3_n_0;
  wire mem_reg_1_0_0_i_4_n_0;
  wire mem_reg_1_0_0_i_5_n_0;
  wire mem_reg_1_0_0_i_6_n_0;
  wire mem_reg_1_0_0_i_7_n_0;
  wire mem_reg_1_0_0_i_8_n_0;
  wire mem_reg_1_0_0_i_9_n_0;
  wire mem_reg_1_0_0_n_0;
  wire mem_reg_1_0_0_n_1;
  wire mem_reg_1_0_1_0;
  wire mem_reg_1_0_1_i_10_n_0;
  wire mem_reg_1_0_1_i_11_n_0;
  wire mem_reg_1_0_1_i_12_n_0;
  wire mem_reg_1_0_1_i_13_n_0;
  wire mem_reg_1_0_1_i_14_n_0;
  wire mem_reg_1_0_1_i_15_n_0;
  wire mem_reg_1_0_1_i_16_n_0;
  wire mem_reg_1_0_1_i_17_n_0;
  wire mem_reg_1_0_1_i_18_n_0;
  wire mem_reg_1_0_1_i_19_n_0;
  wire mem_reg_1_0_1_i_1_n_0;
  wire mem_reg_1_0_1_i_3_n_0;
  wire mem_reg_1_0_1_i_4_n_0;
  wire mem_reg_1_0_1_i_5_n_0;
  wire mem_reg_1_0_1_i_6_n_0;
  wire mem_reg_1_0_1_i_7_n_0;
  wire mem_reg_1_0_1_i_8_n_0;
  wire mem_reg_1_0_1_i_9_n_0;
  wire mem_reg_1_0_1_n_0;
  wire mem_reg_1_0_1_n_1;
  wire mem_reg_1_0_2_0;
  wire mem_reg_1_0_2_i_10_n_0;
  wire mem_reg_1_0_2_i_11_n_0;
  wire mem_reg_1_0_2_i_12_n_0;
  wire mem_reg_1_0_2_i_13_n_0;
  wire mem_reg_1_0_2_i_14_n_0;
  wire mem_reg_1_0_2_i_15_n_0;
  wire mem_reg_1_0_2_i_16_n_0;
  wire mem_reg_1_0_2_i_17_n_0;
  wire mem_reg_1_0_2_i_18_n_0;
  wire mem_reg_1_0_2_i_19_n_0;
  wire mem_reg_1_0_2_i_1_n_0;
  wire mem_reg_1_0_2_i_3_n_0;
  wire mem_reg_1_0_2_i_4_n_0;
  wire mem_reg_1_0_2_i_5_n_0;
  wire mem_reg_1_0_2_i_6_n_0;
  wire mem_reg_1_0_2_i_7_n_0;
  wire mem_reg_1_0_2_i_8_n_0;
  wire mem_reg_1_0_2_i_9_n_0;
  wire mem_reg_1_0_2_n_0;
  wire mem_reg_1_0_2_n_1;
  wire mem_reg_1_0_3_0;
  wire mem_reg_1_0_3_i_10_n_0;
  wire mem_reg_1_0_3_i_11_n_0;
  wire mem_reg_1_0_3_i_12_n_0;
  wire mem_reg_1_0_3_i_13_n_0;
  wire mem_reg_1_0_3_i_14_n_0;
  wire mem_reg_1_0_3_i_15_n_0;
  wire mem_reg_1_0_3_i_16_n_0;
  wire mem_reg_1_0_3_i_17_n_0;
  wire mem_reg_1_0_3_i_18_n_0;
  wire mem_reg_1_0_3_i_19_n_0;
  wire mem_reg_1_0_3_i_1_n_0;
  wire mem_reg_1_0_3_i_3_n_0;
  wire mem_reg_1_0_3_i_4_n_0;
  wire mem_reg_1_0_3_i_5_n_0;
  wire mem_reg_1_0_3_i_6_n_0;
  wire mem_reg_1_0_3_i_7_n_0;
  wire mem_reg_1_0_3_i_8_n_0;
  wire mem_reg_1_0_3_i_9_n_0;
  wire mem_reg_1_0_3_n_0;
  wire mem_reg_1_0_3_n_1;
  wire mem_reg_1_0_4_0;
  wire mem_reg_1_0_4_i_10_n_0;
  wire mem_reg_1_0_4_i_11_n_0;
  wire mem_reg_1_0_4_i_12_n_0;
  wire mem_reg_1_0_4_i_13_n_0;
  wire mem_reg_1_0_4_i_14_n_0;
  wire mem_reg_1_0_4_i_15_n_0;
  wire mem_reg_1_0_4_i_16_n_0;
  wire mem_reg_1_0_4_i_17_n_0;
  wire mem_reg_1_0_4_i_18_n_0;
  wire mem_reg_1_0_4_i_19_n_0;
  wire mem_reg_1_0_4_i_1_n_0;
  wire mem_reg_1_0_4_i_3_n_0;
  wire mem_reg_1_0_4_i_4_n_0;
  wire mem_reg_1_0_4_i_5_n_0;
  wire mem_reg_1_0_4_i_6_n_0;
  wire mem_reg_1_0_4_i_7_n_0;
  wire mem_reg_1_0_4_i_8_n_0;
  wire mem_reg_1_0_4_i_9_n_0;
  wire mem_reg_1_0_4_n_0;
  wire mem_reg_1_0_4_n_1;
  wire mem_reg_1_0_5_0;
  wire mem_reg_1_0_5_i_10_n_0;
  wire mem_reg_1_0_5_i_11_n_0;
  wire mem_reg_1_0_5_i_12_n_0;
  wire mem_reg_1_0_5_i_13_n_0;
  wire mem_reg_1_0_5_i_14_n_0;
  wire mem_reg_1_0_5_i_15_n_0;
  wire mem_reg_1_0_5_i_16_n_0;
  wire mem_reg_1_0_5_i_17_n_0;
  wire mem_reg_1_0_5_i_18_n_0;
  wire mem_reg_1_0_5_i_19_n_0;
  wire mem_reg_1_0_5_i_1_n_0;
  wire mem_reg_1_0_5_i_3_n_0;
  wire mem_reg_1_0_5_i_4_n_0;
  wire mem_reg_1_0_5_i_5_n_0;
  wire mem_reg_1_0_5_i_6_n_0;
  wire mem_reg_1_0_5_i_7_n_0;
  wire mem_reg_1_0_5_i_8_n_0;
  wire mem_reg_1_0_5_i_9_n_0;
  wire mem_reg_1_0_5_n_0;
  wire mem_reg_1_0_5_n_1;
  wire mem_reg_1_0_6_0;
  wire mem_reg_1_0_6_i_10_n_0;
  wire mem_reg_1_0_6_i_11_n_0;
  wire mem_reg_1_0_6_i_12_n_0;
  wire mem_reg_1_0_6_i_13_n_0;
  wire mem_reg_1_0_6_i_14_n_0;
  wire mem_reg_1_0_6_i_15_n_0;
  wire mem_reg_1_0_6_i_16_n_0;
  wire mem_reg_1_0_6_i_17_n_0;
  wire mem_reg_1_0_6_i_18_n_0;
  wire mem_reg_1_0_6_i_19_n_0;
  wire mem_reg_1_0_6_i_1_n_0;
  wire mem_reg_1_0_6_i_3_n_0;
  wire mem_reg_1_0_6_i_4_n_0;
  wire mem_reg_1_0_6_i_5_n_0;
  wire mem_reg_1_0_6_i_6_n_0;
  wire mem_reg_1_0_6_i_7_n_0;
  wire mem_reg_1_0_6_i_8_n_0;
  wire mem_reg_1_0_6_i_9_n_0;
  wire mem_reg_1_0_6_n_0;
  wire mem_reg_1_0_6_n_1;
  wire mem_reg_1_0_7_0;
  wire mem_reg_1_0_7_i_10_n_0;
  wire mem_reg_1_0_7_i_11_n_0;
  wire mem_reg_1_0_7_i_12_n_0;
  wire mem_reg_1_0_7_i_13_n_0;
  wire mem_reg_1_0_7_i_14_n_0;
  wire mem_reg_1_0_7_i_15_n_0;
  wire mem_reg_1_0_7_i_16_n_0;
  wire mem_reg_1_0_7_i_17_n_0;
  wire mem_reg_1_0_7_i_18_n_0;
  wire mem_reg_1_0_7_i_19_n_0;
  wire mem_reg_1_0_7_i_1_n_0;
  wire mem_reg_1_0_7_i_3_n_0;
  wire mem_reg_1_0_7_i_4_n_0;
  wire mem_reg_1_0_7_i_5_n_0;
  wire mem_reg_1_0_7_i_6_n_0;
  wire mem_reg_1_0_7_i_7_n_0;
  wire mem_reg_1_0_7_i_8_n_0;
  wire mem_reg_1_0_7_i_9_n_0;
  wire mem_reg_1_0_7_n_0;
  wire mem_reg_1_0_7_n_1;
  wire mem_reg_1_1_0_0;
  wire mem_reg_1_1_0_i_10_n_0;
  wire mem_reg_1_1_0_i_11_n_0;
  wire mem_reg_1_1_0_i_12_n_0;
  wire mem_reg_1_1_0_i_13_n_0;
  wire mem_reg_1_1_0_i_14_n_0;
  wire mem_reg_1_1_0_i_15_n_0;
  wire mem_reg_1_1_0_i_16_n_0;
  wire mem_reg_1_1_0_i_17_n_0;
  wire mem_reg_1_1_0_i_18_n_0;
  wire mem_reg_1_1_0_i_1_n_0;
  wire mem_reg_1_1_0_i_3_n_0;
  wire mem_reg_1_1_0_i_4_n_0;
  wire mem_reg_1_1_0_i_5_n_0;
  wire mem_reg_1_1_0_i_6_n_0;
  wire mem_reg_1_1_0_i_7_n_0;
  wire mem_reg_1_1_0_i_8_n_0;
  wire mem_reg_1_1_0_i_9_n_0;
  wire mem_reg_1_1_1_0;
  wire mem_reg_1_1_1_i_10_n_0;
  wire mem_reg_1_1_1_i_11_n_0;
  wire mem_reg_1_1_1_i_12_n_0;
  wire mem_reg_1_1_1_i_13_n_0;
  wire mem_reg_1_1_1_i_14_n_0;
  wire mem_reg_1_1_1_i_15_n_0;
  wire mem_reg_1_1_1_i_16_n_0;
  wire mem_reg_1_1_1_i_17_n_0;
  wire mem_reg_1_1_1_i_18_n_0;
  wire mem_reg_1_1_1_i_19_n_0;
  wire mem_reg_1_1_1_i_1_n_0;
  wire mem_reg_1_1_1_i_3_n_0;
  wire mem_reg_1_1_1_i_4_n_0;
  wire mem_reg_1_1_1_i_5_n_0;
  wire mem_reg_1_1_1_i_6_n_0;
  wire mem_reg_1_1_1_i_7_n_0;
  wire mem_reg_1_1_1_i_8_n_0;
  wire mem_reg_1_1_1_i_9_n_0;
  wire mem_reg_1_1_2_0;
  wire mem_reg_1_1_2_i_10_n_0;
  wire mem_reg_1_1_2_i_11_n_0;
  wire mem_reg_1_1_2_i_12_n_0;
  wire mem_reg_1_1_2_i_13_n_0;
  wire mem_reg_1_1_2_i_14_n_0;
  wire mem_reg_1_1_2_i_15_n_0;
  wire mem_reg_1_1_2_i_16_n_0;
  wire mem_reg_1_1_2_i_17_n_0;
  wire mem_reg_1_1_2_i_18_n_0;
  wire mem_reg_1_1_2_i_19_n_0;
  wire mem_reg_1_1_2_i_1_n_0;
  wire mem_reg_1_1_2_i_3_n_0;
  wire mem_reg_1_1_2_i_4_n_0;
  wire mem_reg_1_1_2_i_5_n_0;
  wire mem_reg_1_1_2_i_6_n_0;
  wire mem_reg_1_1_2_i_7_n_0;
  wire mem_reg_1_1_2_i_8_n_0;
  wire mem_reg_1_1_2_i_9_n_0;
  wire mem_reg_1_1_3_0;
  wire mem_reg_1_1_3_i_10_n_0;
  wire mem_reg_1_1_3_i_11_n_0;
  wire mem_reg_1_1_3_i_12_n_0;
  wire mem_reg_1_1_3_i_13_n_0;
  wire mem_reg_1_1_3_i_14_n_0;
  wire mem_reg_1_1_3_i_15_n_0;
  wire mem_reg_1_1_3_i_16_n_0;
  wire mem_reg_1_1_3_i_17_n_0;
  wire mem_reg_1_1_3_i_18_n_0;
  wire mem_reg_1_1_3_i_19_n_0;
  wire mem_reg_1_1_3_i_1_n_0;
  wire mem_reg_1_1_3_i_3_n_0;
  wire mem_reg_1_1_3_i_4_n_0;
  wire mem_reg_1_1_3_i_5_n_0;
  wire mem_reg_1_1_3_i_6_n_0;
  wire mem_reg_1_1_3_i_7_n_0;
  wire mem_reg_1_1_3_i_8_n_0;
  wire mem_reg_1_1_3_i_9_n_0;
  wire mem_reg_1_1_4_0;
  wire mem_reg_1_1_4_i_10_n_0;
  wire mem_reg_1_1_4_i_11_n_0;
  wire mem_reg_1_1_4_i_12_n_0;
  wire mem_reg_1_1_4_i_13_n_0;
  wire mem_reg_1_1_4_i_14_n_0;
  wire mem_reg_1_1_4_i_15_n_0;
  wire mem_reg_1_1_4_i_16_n_0;
  wire mem_reg_1_1_4_i_17_n_0;
  wire mem_reg_1_1_4_i_18_n_0;
  wire mem_reg_1_1_4_i_19_n_0;
  wire mem_reg_1_1_4_i_1_n_0;
  wire mem_reg_1_1_4_i_3_n_0;
  wire mem_reg_1_1_4_i_4_n_0;
  wire mem_reg_1_1_4_i_5_n_0;
  wire mem_reg_1_1_4_i_6_n_0;
  wire mem_reg_1_1_4_i_7_n_0;
  wire mem_reg_1_1_4_i_8_n_0;
  wire mem_reg_1_1_4_i_9_n_0;
  wire mem_reg_1_1_5_0;
  wire mem_reg_1_1_5_i_10_n_0;
  wire mem_reg_1_1_5_i_11_n_0;
  wire mem_reg_1_1_5_i_12_n_0;
  wire mem_reg_1_1_5_i_13_n_0;
  wire mem_reg_1_1_5_i_14_n_0;
  wire mem_reg_1_1_5_i_15_n_0;
  wire mem_reg_1_1_5_i_16_n_0;
  wire mem_reg_1_1_5_i_17_n_0;
  wire mem_reg_1_1_5_i_18_n_0;
  wire mem_reg_1_1_5_i_19_n_0;
  wire mem_reg_1_1_5_i_1_n_0;
  wire mem_reg_1_1_5_i_3_n_0;
  wire mem_reg_1_1_5_i_4_n_0;
  wire mem_reg_1_1_5_i_5_n_0;
  wire mem_reg_1_1_5_i_6_n_0;
  wire mem_reg_1_1_5_i_7_n_0;
  wire mem_reg_1_1_5_i_8_n_0;
  wire mem_reg_1_1_5_i_9_n_0;
  wire mem_reg_1_1_6_0;
  wire mem_reg_1_1_6_i_10_n_0;
  wire mem_reg_1_1_6_i_11_n_0;
  wire mem_reg_1_1_6_i_12_n_0;
  wire mem_reg_1_1_6_i_13_n_0;
  wire mem_reg_1_1_6_i_14_n_0;
  wire mem_reg_1_1_6_i_15_n_0;
  wire mem_reg_1_1_6_i_16_n_0;
  wire mem_reg_1_1_6_i_17_n_0;
  wire mem_reg_1_1_6_i_18_n_0;
  wire mem_reg_1_1_6_i_19_n_0;
  wire mem_reg_1_1_6_i_1_n_0;
  wire mem_reg_1_1_6_i_3_n_0;
  wire mem_reg_1_1_6_i_4_n_0;
  wire mem_reg_1_1_6_i_5_n_0;
  wire mem_reg_1_1_6_i_6_n_0;
  wire mem_reg_1_1_6_i_7_n_0;
  wire mem_reg_1_1_6_i_8_n_0;
  wire mem_reg_1_1_6_i_9_n_0;
  wire mem_reg_1_1_7_0;
  wire mem_reg_1_1_7_i_10_n_0;
  wire mem_reg_1_1_7_i_11_n_0;
  wire mem_reg_1_1_7_i_12_n_0;
  wire mem_reg_1_1_7_i_13_n_0;
  wire mem_reg_1_1_7_i_14_n_0;
  wire mem_reg_1_1_7_i_15_n_0;
  wire mem_reg_1_1_7_i_16_n_0;
  wire mem_reg_1_1_7_i_17_n_0;
  wire mem_reg_1_1_7_i_18_n_0;
  wire mem_reg_1_1_7_i_19_n_0;
  wire mem_reg_1_1_7_i_1_n_0;
  wire mem_reg_1_1_7_i_3_n_0;
  wire mem_reg_1_1_7_i_4_n_0;
  wire mem_reg_1_1_7_i_5_n_0;
  wire mem_reg_1_1_7_i_6_n_0;
  wire mem_reg_1_1_7_i_7_n_0;
  wire mem_reg_1_1_7_i_8_n_0;
  wire mem_reg_1_1_7_i_9_n_0;
  wire mem_reg_2_0_0_0;
  wire mem_reg_2_0_0_i_10_n_0;
  wire mem_reg_2_0_0_i_11_n_0;
  wire mem_reg_2_0_0_i_12_n_0;
  wire mem_reg_2_0_0_i_13_n_0;
  wire mem_reg_2_0_0_i_14_n_0;
  wire mem_reg_2_0_0_i_15_n_0;
  wire mem_reg_2_0_0_i_16_n_0;
  wire mem_reg_2_0_0_i_17_n_0;
  wire mem_reg_2_0_0_i_18_n_0;
  wire mem_reg_2_0_0_i_19_n_0;
  wire mem_reg_2_0_0_i_1_n_0;
  wire mem_reg_2_0_0_i_3_n_0;
  wire mem_reg_2_0_0_i_4_n_0;
  wire mem_reg_2_0_0_i_5_n_0;
  wire mem_reg_2_0_0_i_6_n_0;
  wire mem_reg_2_0_0_i_7_n_0;
  wire mem_reg_2_0_0_i_8_n_0;
  wire mem_reg_2_0_0_i_9_n_0;
  wire mem_reg_2_0_0_n_0;
  wire mem_reg_2_0_0_n_1;
  wire mem_reg_2_0_1_0;
  wire mem_reg_2_0_1_i_10_n_0;
  wire mem_reg_2_0_1_i_11_n_0;
  wire mem_reg_2_0_1_i_12_n_0;
  wire mem_reg_2_0_1_i_13_n_0;
  wire mem_reg_2_0_1_i_14_n_0;
  wire mem_reg_2_0_1_i_15_n_0;
  wire mem_reg_2_0_1_i_16_n_0;
  wire mem_reg_2_0_1_i_17_n_0;
  wire mem_reg_2_0_1_i_18_n_0;
  wire mem_reg_2_0_1_i_19_n_0;
  wire mem_reg_2_0_1_i_1_n_0;
  wire mem_reg_2_0_1_i_3_n_0;
  wire mem_reg_2_0_1_i_4_n_0;
  wire mem_reg_2_0_1_i_5_n_0;
  wire mem_reg_2_0_1_i_6_n_0;
  wire mem_reg_2_0_1_i_7_n_0;
  wire mem_reg_2_0_1_i_8_n_0;
  wire mem_reg_2_0_1_i_9_n_0;
  wire mem_reg_2_0_1_n_0;
  wire mem_reg_2_0_1_n_1;
  wire mem_reg_2_0_2_0;
  wire mem_reg_2_0_2_i_10_n_0;
  wire mem_reg_2_0_2_i_11_n_0;
  wire mem_reg_2_0_2_i_12_n_0;
  wire mem_reg_2_0_2_i_13_n_0;
  wire mem_reg_2_0_2_i_14_n_0;
  wire mem_reg_2_0_2_i_15_n_0;
  wire mem_reg_2_0_2_i_16_n_0;
  wire mem_reg_2_0_2_i_17_n_0;
  wire mem_reg_2_0_2_i_18_n_0;
  wire mem_reg_2_0_2_i_1_n_0;
  wire mem_reg_2_0_2_i_3_n_0;
  wire mem_reg_2_0_2_i_4_n_0;
  wire mem_reg_2_0_2_i_5_n_0;
  wire mem_reg_2_0_2_i_6_n_0;
  wire mem_reg_2_0_2_i_7_n_0;
  wire mem_reg_2_0_2_i_8_n_0;
  wire mem_reg_2_0_2_i_9_n_0;
  wire mem_reg_2_0_2_n_0;
  wire mem_reg_2_0_2_n_1;
  wire mem_reg_2_0_3_0;
  wire mem_reg_2_0_3_i_10_n_0;
  wire mem_reg_2_0_3_i_11_n_0;
  wire mem_reg_2_0_3_i_12_n_0;
  wire mem_reg_2_0_3_i_13_n_0;
  wire mem_reg_2_0_3_i_14_n_0;
  wire mem_reg_2_0_3_i_15_n_0;
  wire mem_reg_2_0_3_i_16_n_0;
  wire mem_reg_2_0_3_i_17_n_0;
  wire mem_reg_2_0_3_i_18_n_0;
  wire mem_reg_2_0_3_i_1_n_0;
  wire mem_reg_2_0_3_i_3_n_0;
  wire mem_reg_2_0_3_i_4_n_0;
  wire mem_reg_2_0_3_i_5_n_0;
  wire mem_reg_2_0_3_i_6_n_0;
  wire mem_reg_2_0_3_i_7_n_0;
  wire mem_reg_2_0_3_i_8_n_0;
  wire mem_reg_2_0_3_i_9_n_0;
  wire mem_reg_2_0_3_n_0;
  wire mem_reg_2_0_3_n_1;
  wire mem_reg_2_0_4_0;
  wire mem_reg_2_0_4_i_10_n_0;
  wire mem_reg_2_0_4_i_11_n_0;
  wire mem_reg_2_0_4_i_12_n_0;
  wire mem_reg_2_0_4_i_13_n_0;
  wire mem_reg_2_0_4_i_14_n_0;
  wire mem_reg_2_0_4_i_15_n_0;
  wire mem_reg_2_0_4_i_16_n_0;
  wire mem_reg_2_0_4_i_17_n_0;
  wire mem_reg_2_0_4_i_18_n_0;
  wire mem_reg_2_0_4_i_19_n_0;
  wire mem_reg_2_0_4_i_1_n_0;
  wire mem_reg_2_0_4_i_3_n_0;
  wire mem_reg_2_0_4_i_4_n_0;
  wire mem_reg_2_0_4_i_5_n_0;
  wire mem_reg_2_0_4_i_6_n_0;
  wire mem_reg_2_0_4_i_7_n_0;
  wire mem_reg_2_0_4_i_8_n_0;
  wire mem_reg_2_0_4_i_9_n_0;
  wire mem_reg_2_0_4_n_0;
  wire mem_reg_2_0_4_n_1;
  wire mem_reg_2_0_5_0;
  wire [15:0]mem_reg_2_0_5_1;
  wire mem_reg_2_0_5_i_10_n_0;
  wire mem_reg_2_0_5_i_11_n_0;
  wire mem_reg_2_0_5_i_12_n_0;
  wire mem_reg_2_0_5_i_13_n_0;
  wire mem_reg_2_0_5_i_14_n_0;
  wire mem_reg_2_0_5_i_15_n_0;
  wire mem_reg_2_0_5_i_16_n_0;
  wire mem_reg_2_0_5_i_17_n_0;
  wire mem_reg_2_0_5_i_18_n_0;
  wire mem_reg_2_0_5_i_19_n_0;
  wire mem_reg_2_0_5_i_1_n_0;
  wire mem_reg_2_0_5_i_3_n_0;
  wire mem_reg_2_0_5_i_4_n_0;
  wire mem_reg_2_0_5_i_5_n_0;
  wire mem_reg_2_0_5_i_6_n_0;
  wire mem_reg_2_0_5_i_7_n_0;
  wire mem_reg_2_0_5_i_8_n_0;
  wire mem_reg_2_0_5_i_9_n_0;
  wire mem_reg_2_0_5_n_0;
  wire mem_reg_2_0_5_n_1;
  wire mem_reg_2_0_6_0;
  wire mem_reg_2_0_6_i_10_n_0;
  wire mem_reg_2_0_6_i_11_n_0;
  wire mem_reg_2_0_6_i_12_n_0;
  wire mem_reg_2_0_6_i_13_n_0;
  wire mem_reg_2_0_6_i_14_n_0;
  wire mem_reg_2_0_6_i_15_n_0;
  wire mem_reg_2_0_6_i_16_n_0;
  wire mem_reg_2_0_6_i_17_n_0;
  wire mem_reg_2_0_6_i_18_n_0;
  wire mem_reg_2_0_6_i_19_n_0;
  wire mem_reg_2_0_6_i_1_n_0;
  wire mem_reg_2_0_6_i_3_n_0;
  wire mem_reg_2_0_6_i_4_n_0;
  wire mem_reg_2_0_6_i_5_n_0;
  wire mem_reg_2_0_6_i_6_n_0;
  wire mem_reg_2_0_6_i_7_n_0;
  wire mem_reg_2_0_6_i_8_n_0;
  wire mem_reg_2_0_6_i_9_n_0;
  wire mem_reg_2_0_6_n_0;
  wire mem_reg_2_0_6_n_1;
  wire mem_reg_2_0_7_0;
  wire mem_reg_2_0_7_i_10_n_0;
  wire mem_reg_2_0_7_i_11_n_0;
  wire mem_reg_2_0_7_i_12_n_0;
  wire mem_reg_2_0_7_i_13_n_0;
  wire mem_reg_2_0_7_i_14_n_0;
  wire mem_reg_2_0_7_i_15_n_0;
  wire mem_reg_2_0_7_i_16_n_0;
  wire mem_reg_2_0_7_i_17_n_0;
  wire mem_reg_2_0_7_i_18_n_0;
  wire mem_reg_2_0_7_i_19_n_0;
  wire mem_reg_2_0_7_i_1_n_0;
  wire mem_reg_2_0_7_i_3_n_0;
  wire mem_reg_2_0_7_i_4_n_0;
  wire mem_reg_2_0_7_i_5_n_0;
  wire mem_reg_2_0_7_i_6_n_0;
  wire mem_reg_2_0_7_i_7_n_0;
  wire mem_reg_2_0_7_i_8_n_0;
  wire mem_reg_2_0_7_i_9_n_0;
  wire mem_reg_2_0_7_n_0;
  wire mem_reg_2_0_7_n_1;
  wire mem_reg_2_1_0_0;
  wire mem_reg_2_1_0_i_10_n_0;
  wire mem_reg_2_1_0_i_11_n_0;
  wire mem_reg_2_1_0_i_12_n_0;
  wire mem_reg_2_1_0_i_13_n_0;
  wire mem_reg_2_1_0_i_14_n_0;
  wire mem_reg_2_1_0_i_15_n_0;
  wire mem_reg_2_1_0_i_16_n_0;
  wire mem_reg_2_1_0_i_17_n_0;
  wire mem_reg_2_1_0_i_18_n_0;
  wire mem_reg_2_1_0_i_19_n_0;
  wire mem_reg_2_1_0_i_1_n_0;
  wire mem_reg_2_1_0_i_3_n_0;
  wire mem_reg_2_1_0_i_4_n_0;
  wire mem_reg_2_1_0_i_5_n_0;
  wire mem_reg_2_1_0_i_6_n_0;
  wire mem_reg_2_1_0_i_7_n_0;
  wire mem_reg_2_1_0_i_8_n_0;
  wire mem_reg_2_1_0_i_9_n_0;
  wire mem_reg_2_1_1_0;
  wire mem_reg_2_1_1_i_10_n_0;
  wire mem_reg_2_1_1_i_11_n_0;
  wire mem_reg_2_1_1_i_12_n_0;
  wire mem_reg_2_1_1_i_13_n_0;
  wire mem_reg_2_1_1_i_14_n_0;
  wire mem_reg_2_1_1_i_15_n_0;
  wire mem_reg_2_1_1_i_16_n_0;
  wire mem_reg_2_1_1_i_17_n_0;
  wire mem_reg_2_1_1_i_18_n_0;
  wire mem_reg_2_1_1_i_19_n_0;
  wire mem_reg_2_1_1_i_1_n_0;
  wire mem_reg_2_1_1_i_3_n_0;
  wire mem_reg_2_1_1_i_4_n_0;
  wire mem_reg_2_1_1_i_5_n_0;
  wire mem_reg_2_1_1_i_6_n_0;
  wire mem_reg_2_1_1_i_7_n_0;
  wire mem_reg_2_1_1_i_8_n_0;
  wire mem_reg_2_1_1_i_9_n_0;
  wire mem_reg_2_1_2_0;
  wire mem_reg_2_1_2_i_10_n_0;
  wire mem_reg_2_1_2_i_11_n_0;
  wire mem_reg_2_1_2_i_12_n_0;
  wire mem_reg_2_1_2_i_13_n_0;
  wire mem_reg_2_1_2_i_14_n_0;
  wire mem_reg_2_1_2_i_15_n_0;
  wire mem_reg_2_1_2_i_16_n_0;
  wire mem_reg_2_1_2_i_17_n_0;
  wire mem_reg_2_1_2_i_18_n_0;
  wire mem_reg_2_1_2_i_1_n_0;
  wire mem_reg_2_1_2_i_3_n_0;
  wire mem_reg_2_1_2_i_4_n_0;
  wire mem_reg_2_1_2_i_5_n_0;
  wire mem_reg_2_1_2_i_6_n_0;
  wire mem_reg_2_1_2_i_7_n_0;
  wire mem_reg_2_1_2_i_8_n_0;
  wire mem_reg_2_1_2_i_9_n_0;
  wire mem_reg_2_1_3_0;
  wire mem_reg_2_1_3_i_10_n_0;
  wire mem_reg_2_1_3_i_11_n_0;
  wire mem_reg_2_1_3_i_12_n_0;
  wire mem_reg_2_1_3_i_13_n_0;
  wire mem_reg_2_1_3_i_14_n_0;
  wire mem_reg_2_1_3_i_15_n_0;
  wire mem_reg_2_1_3_i_16_n_0;
  wire mem_reg_2_1_3_i_17_n_0;
  wire mem_reg_2_1_3_i_18_n_0;
  wire mem_reg_2_1_3_i_1_n_0;
  wire mem_reg_2_1_3_i_3_n_0;
  wire mem_reg_2_1_3_i_4_n_0;
  wire mem_reg_2_1_3_i_5_n_0;
  wire mem_reg_2_1_3_i_6_n_0;
  wire mem_reg_2_1_3_i_7_n_0;
  wire mem_reg_2_1_3_i_8_n_0;
  wire mem_reg_2_1_3_i_9_n_0;
  wire mem_reg_2_1_4_0;
  wire mem_reg_2_1_4_i_10_n_0;
  wire mem_reg_2_1_4_i_11_n_0;
  wire mem_reg_2_1_4_i_12_n_0;
  wire mem_reg_2_1_4_i_13_n_0;
  wire mem_reg_2_1_4_i_14_n_0;
  wire mem_reg_2_1_4_i_15_n_0;
  wire mem_reg_2_1_4_i_16_n_0;
  wire mem_reg_2_1_4_i_17_n_0;
  wire mem_reg_2_1_4_i_18_n_0;
  wire mem_reg_2_1_4_i_19_n_0;
  wire mem_reg_2_1_4_i_1_n_0;
  wire mem_reg_2_1_4_i_3_n_0;
  wire mem_reg_2_1_4_i_4_n_0;
  wire mem_reg_2_1_4_i_5_n_0;
  wire mem_reg_2_1_4_i_6_n_0;
  wire mem_reg_2_1_4_i_7_n_0;
  wire mem_reg_2_1_4_i_8_n_0;
  wire mem_reg_2_1_4_i_9_n_0;
  wire mem_reg_2_1_5_0;
  wire mem_reg_2_1_5_i_10_n_0;
  wire mem_reg_2_1_5_i_11_n_0;
  wire mem_reg_2_1_5_i_12_n_0;
  wire mem_reg_2_1_5_i_13_n_0;
  wire mem_reg_2_1_5_i_14_n_0;
  wire mem_reg_2_1_5_i_15_n_0;
  wire mem_reg_2_1_5_i_16_n_0;
  wire mem_reg_2_1_5_i_17_n_0;
  wire mem_reg_2_1_5_i_18_n_0;
  wire mem_reg_2_1_5_i_19_n_0;
  wire mem_reg_2_1_5_i_1_n_0;
  wire mem_reg_2_1_5_i_3_n_0;
  wire mem_reg_2_1_5_i_4_n_0;
  wire mem_reg_2_1_5_i_5_n_0;
  wire mem_reg_2_1_5_i_6_n_0;
  wire mem_reg_2_1_5_i_7_n_0;
  wire mem_reg_2_1_5_i_8_n_0;
  wire mem_reg_2_1_5_i_9_n_0;
  wire mem_reg_2_1_6_0;
  wire mem_reg_2_1_6_i_10_n_0;
  wire mem_reg_2_1_6_i_11_n_0;
  wire mem_reg_2_1_6_i_12_n_0;
  wire mem_reg_2_1_6_i_13_n_0;
  wire mem_reg_2_1_6_i_14_n_0;
  wire mem_reg_2_1_6_i_15_n_0;
  wire mem_reg_2_1_6_i_16_n_0;
  wire mem_reg_2_1_6_i_17_n_0;
  wire mem_reg_2_1_6_i_18_n_0;
  wire mem_reg_2_1_6_i_19_n_0;
  wire mem_reg_2_1_6_i_1_n_0;
  wire mem_reg_2_1_6_i_3_n_0;
  wire mem_reg_2_1_6_i_4_n_0;
  wire mem_reg_2_1_6_i_5_n_0;
  wire mem_reg_2_1_6_i_6_n_0;
  wire mem_reg_2_1_6_i_7_n_0;
  wire mem_reg_2_1_6_i_8_n_0;
  wire mem_reg_2_1_6_i_9_n_0;
  wire mem_reg_2_1_7_0;
  wire mem_reg_2_1_7_i_10_n_0;
  wire mem_reg_2_1_7_i_11_n_0;
  wire mem_reg_2_1_7_i_12_n_0;
  wire mem_reg_2_1_7_i_13_n_0;
  wire mem_reg_2_1_7_i_14_n_0;
  wire mem_reg_2_1_7_i_15_n_0;
  wire mem_reg_2_1_7_i_16_n_0;
  wire mem_reg_2_1_7_i_17_n_0;
  wire mem_reg_2_1_7_i_18_n_0;
  wire mem_reg_2_1_7_i_19_n_0;
  wire mem_reg_2_1_7_i_1_n_0;
  wire mem_reg_2_1_7_i_3_n_0;
  wire mem_reg_2_1_7_i_4_n_0;
  wire mem_reg_2_1_7_i_5_n_0;
  wire mem_reg_2_1_7_i_6_n_0;
  wire mem_reg_2_1_7_i_7_n_0;
  wire mem_reg_2_1_7_i_8_n_0;
  wire mem_reg_2_1_7_i_9_n_0;
  wire mem_reg_3_0_0_0;
  wire mem_reg_3_0_0_i_10_n_0;
  wire mem_reg_3_0_0_i_11_n_0;
  wire mem_reg_3_0_0_i_12_n_0;
  wire mem_reg_3_0_0_i_13_n_0;
  wire mem_reg_3_0_0_i_14_n_0;
  wire mem_reg_3_0_0_i_15_n_0;
  wire mem_reg_3_0_0_i_16_n_0;
  wire mem_reg_3_0_0_i_17_n_0;
  wire mem_reg_3_0_0_i_18_n_0;
  wire mem_reg_3_0_0_i_1_n_0;
  wire mem_reg_3_0_0_i_20_n_0;
  wire mem_reg_3_0_0_i_3_n_0;
  wire mem_reg_3_0_0_i_4_n_0;
  wire mem_reg_3_0_0_i_5_n_0;
  wire mem_reg_3_0_0_i_6_n_0;
  wire mem_reg_3_0_0_i_7_n_0;
  wire mem_reg_3_0_0_i_8_n_0;
  wire mem_reg_3_0_0_i_9_n_0;
  wire mem_reg_3_0_0_n_0;
  wire mem_reg_3_0_0_n_1;
  wire mem_reg_3_0_1_0;
  wire mem_reg_3_0_1_i_10_n_0;
  wire mem_reg_3_0_1_i_11_n_0;
  wire mem_reg_3_0_1_i_12_n_0;
  wire mem_reg_3_0_1_i_13_n_0;
  wire mem_reg_3_0_1_i_14_n_0;
  wire mem_reg_3_0_1_i_15_n_0;
  wire mem_reg_3_0_1_i_16_n_0;
  wire mem_reg_3_0_1_i_17_n_0;
  wire mem_reg_3_0_1_i_18_n_0;
  wire mem_reg_3_0_1_i_1_n_0;
  wire mem_reg_3_0_1_i_20_n_0;
  wire mem_reg_3_0_1_i_3_n_0;
  wire mem_reg_3_0_1_i_4_n_0;
  wire mem_reg_3_0_1_i_5_n_0;
  wire mem_reg_3_0_1_i_6_n_0;
  wire mem_reg_3_0_1_i_7_n_0;
  wire mem_reg_3_0_1_i_8_n_0;
  wire mem_reg_3_0_1_i_9_n_0;
  wire mem_reg_3_0_1_n_0;
  wire mem_reg_3_0_1_n_1;
  wire mem_reg_3_0_2_0;
  wire mem_reg_3_0_2_i_10_n_0;
  wire mem_reg_3_0_2_i_11_n_0;
  wire mem_reg_3_0_2_i_12_n_0;
  wire mem_reg_3_0_2_i_13_n_0;
  wire mem_reg_3_0_2_i_14_n_0;
  wire mem_reg_3_0_2_i_15_n_0;
  wire mem_reg_3_0_2_i_16_n_0;
  wire mem_reg_3_0_2_i_17_n_0;
  wire mem_reg_3_0_2_i_18_n_0;
  wire mem_reg_3_0_2_i_1_n_0;
  wire mem_reg_3_0_2_i_20_n_0;
  wire mem_reg_3_0_2_i_3_n_0;
  wire mem_reg_3_0_2_i_4_n_0;
  wire mem_reg_3_0_2_i_5_n_0;
  wire mem_reg_3_0_2_i_6_n_0;
  wire mem_reg_3_0_2_i_7_n_0;
  wire mem_reg_3_0_2_i_8_n_0;
  wire mem_reg_3_0_2_i_9_n_0;
  wire mem_reg_3_0_2_n_0;
  wire mem_reg_3_0_2_n_1;
  wire mem_reg_3_0_3_0;
  wire mem_reg_3_0_3_i_10_n_0;
  wire mem_reg_3_0_3_i_11_n_0;
  wire mem_reg_3_0_3_i_12_n_0;
  wire mem_reg_3_0_3_i_13_n_0;
  wire mem_reg_3_0_3_i_14_n_0;
  wire mem_reg_3_0_3_i_15_n_0;
  wire mem_reg_3_0_3_i_16_n_0;
  wire mem_reg_3_0_3_i_17_n_0;
  wire mem_reg_3_0_3_i_18_n_0;
  wire mem_reg_3_0_3_i_1_n_0;
  wire mem_reg_3_0_3_i_20_n_0;
  wire mem_reg_3_0_3_i_3_n_0;
  wire mem_reg_3_0_3_i_4_n_0;
  wire mem_reg_3_0_3_i_5_n_0;
  wire mem_reg_3_0_3_i_6_n_0;
  wire mem_reg_3_0_3_i_7_n_0;
  wire mem_reg_3_0_3_i_8_n_0;
  wire mem_reg_3_0_3_i_9_n_0;
  wire mem_reg_3_0_3_n_0;
  wire mem_reg_3_0_3_n_1;
  wire mem_reg_3_0_4_0;
  wire mem_reg_3_0_4_i_10_n_0;
  wire mem_reg_3_0_4_i_11_n_0;
  wire mem_reg_3_0_4_i_12_n_0;
  wire mem_reg_3_0_4_i_13_n_0;
  wire mem_reg_3_0_4_i_14_n_0;
  wire mem_reg_3_0_4_i_15_n_0;
  wire mem_reg_3_0_4_i_16_n_0;
  wire mem_reg_3_0_4_i_17_n_0;
  wire mem_reg_3_0_4_i_18_n_0;
  wire mem_reg_3_0_4_i_1_n_0;
  wire mem_reg_3_0_4_i_20_n_0;
  wire mem_reg_3_0_4_i_3_n_0;
  wire mem_reg_3_0_4_i_4_n_0;
  wire mem_reg_3_0_4_i_5_n_0;
  wire mem_reg_3_0_4_i_6_n_0;
  wire mem_reg_3_0_4_i_7_n_0;
  wire mem_reg_3_0_4_i_8_n_0;
  wire mem_reg_3_0_4_i_9_n_0;
  wire mem_reg_3_0_4_n_0;
  wire mem_reg_3_0_4_n_1;
  wire mem_reg_3_0_5_0;
  wire mem_reg_3_0_5_i_10_n_0;
  wire mem_reg_3_0_5_i_11_n_0;
  wire mem_reg_3_0_5_i_12_n_0;
  wire mem_reg_3_0_5_i_13_n_0;
  wire mem_reg_3_0_5_i_14_n_0;
  wire mem_reg_3_0_5_i_15_n_0;
  wire mem_reg_3_0_5_i_16_n_0;
  wire mem_reg_3_0_5_i_17_n_0;
  wire mem_reg_3_0_5_i_18_n_0;
  wire mem_reg_3_0_5_i_1_n_0;
  wire mem_reg_3_0_5_i_20_n_0;
  wire mem_reg_3_0_5_i_3_n_0;
  wire mem_reg_3_0_5_i_4_n_0;
  wire mem_reg_3_0_5_i_5_n_0;
  wire mem_reg_3_0_5_i_6_n_0;
  wire mem_reg_3_0_5_i_7_n_0;
  wire mem_reg_3_0_5_i_8_n_0;
  wire mem_reg_3_0_5_i_9_n_0;
  wire mem_reg_3_0_5_n_0;
  wire mem_reg_3_0_5_n_1;
  wire mem_reg_3_0_6_0;
  wire mem_reg_3_0_6_i_10_n_0;
  wire mem_reg_3_0_6_i_11_n_0;
  wire mem_reg_3_0_6_i_12_n_0;
  wire mem_reg_3_0_6_i_13_n_0;
  wire mem_reg_3_0_6_i_14_n_0;
  wire mem_reg_3_0_6_i_15_n_0;
  wire mem_reg_3_0_6_i_16_n_0;
  wire mem_reg_3_0_6_i_17_n_0;
  wire mem_reg_3_0_6_i_18_n_0;
  wire mem_reg_3_0_6_i_1_n_0;
  wire mem_reg_3_0_6_i_20_n_0;
  wire mem_reg_3_0_6_i_3_n_0;
  wire mem_reg_3_0_6_i_4_n_0;
  wire mem_reg_3_0_6_i_5_n_0;
  wire mem_reg_3_0_6_i_6_n_0;
  wire mem_reg_3_0_6_i_7_n_0;
  wire mem_reg_3_0_6_i_8_n_0;
  wire mem_reg_3_0_6_i_9_n_0;
  wire mem_reg_3_0_6_n_0;
  wire mem_reg_3_0_6_n_1;
  wire mem_reg_3_0_7_0;
  wire mem_reg_3_0_7_i_10_n_0;
  wire mem_reg_3_0_7_i_11_n_0;
  wire mem_reg_3_0_7_i_12_n_0;
  wire mem_reg_3_0_7_i_13_n_0;
  wire mem_reg_3_0_7_i_14_n_0;
  wire mem_reg_3_0_7_i_15_n_0;
  wire mem_reg_3_0_7_i_16_n_0;
  wire mem_reg_3_0_7_i_17_n_0;
  wire mem_reg_3_0_7_i_18_n_0;
  wire mem_reg_3_0_7_i_1_n_0;
  wire mem_reg_3_0_7_i_20_n_0;
  wire mem_reg_3_0_7_i_3_n_0;
  wire mem_reg_3_0_7_i_4_n_0;
  wire mem_reg_3_0_7_i_5_n_0;
  wire mem_reg_3_0_7_i_6_n_0;
  wire mem_reg_3_0_7_i_7_n_0;
  wire mem_reg_3_0_7_i_8_n_0;
  wire mem_reg_3_0_7_i_9_n_0;
  wire mem_reg_3_0_7_n_0;
  wire mem_reg_3_0_7_n_1;
  wire mem_reg_3_1_0_0;
  wire mem_reg_3_1_0_i_10_n_0;
  wire mem_reg_3_1_0_i_11_n_0;
  wire mem_reg_3_1_0_i_12_n_0;
  wire mem_reg_3_1_0_i_13_n_0;
  wire mem_reg_3_1_0_i_14_n_0;
  wire mem_reg_3_1_0_i_15_n_0;
  wire mem_reg_3_1_0_i_16_n_0;
  wire mem_reg_3_1_0_i_17_n_0;
  wire mem_reg_3_1_0_i_18_n_0;
  wire mem_reg_3_1_0_i_19_n_0;
  wire mem_reg_3_1_0_i_1_n_0;
  wire mem_reg_3_1_0_i_3_n_0;
  wire mem_reg_3_1_0_i_4_n_0;
  wire mem_reg_3_1_0_i_5_n_0;
  wire mem_reg_3_1_0_i_6_n_0;
  wire mem_reg_3_1_0_i_7_n_0;
  wire mem_reg_3_1_0_i_8_n_0;
  wire mem_reg_3_1_0_i_9_n_0;
  wire mem_reg_3_1_1_0;
  wire mem_reg_3_1_1_1;
  wire mem_reg_3_1_1_i_10_n_0;
  wire mem_reg_3_1_1_i_11_n_0;
  wire mem_reg_3_1_1_i_12_n_0;
  wire mem_reg_3_1_1_i_13_n_0;
  wire mem_reg_3_1_1_i_14_n_0;
  wire mem_reg_3_1_1_i_15_n_0;
  wire mem_reg_3_1_1_i_16_n_0;
  wire mem_reg_3_1_1_i_17_n_0;
  wire mem_reg_3_1_1_i_18_n_0;
  wire mem_reg_3_1_1_i_19_n_0;
  wire mem_reg_3_1_1_i_1_n_0;
  wire mem_reg_3_1_1_i_3_n_0;
  wire mem_reg_3_1_1_i_4_n_0;
  wire mem_reg_3_1_1_i_5_n_0;
  wire mem_reg_3_1_1_i_6_n_0;
  wire mem_reg_3_1_1_i_7_n_0;
  wire mem_reg_3_1_1_i_8_n_0;
  wire mem_reg_3_1_1_i_9_n_0;
  wire mem_reg_3_1_2_0;
  wire mem_reg_3_1_2_1;
  wire mem_reg_3_1_2_i_10_n_0;
  wire mem_reg_3_1_2_i_11_n_0;
  wire mem_reg_3_1_2_i_12_n_0;
  wire mem_reg_3_1_2_i_13_n_0;
  wire mem_reg_3_1_2_i_14_n_0;
  wire mem_reg_3_1_2_i_15_n_0;
  wire mem_reg_3_1_2_i_16_n_0;
  wire mem_reg_3_1_2_i_17_n_0;
  wire mem_reg_3_1_2_i_18_n_0;
  wire mem_reg_3_1_2_i_19_n_0;
  wire mem_reg_3_1_2_i_1_n_0;
  wire mem_reg_3_1_2_i_3_n_0;
  wire mem_reg_3_1_2_i_4_n_0;
  wire mem_reg_3_1_2_i_5_n_0;
  wire mem_reg_3_1_2_i_6_n_0;
  wire mem_reg_3_1_2_i_7_n_0;
  wire mem_reg_3_1_2_i_8_n_0;
  wire mem_reg_3_1_2_i_9_n_0;
  wire mem_reg_3_1_3_0;
  wire mem_reg_3_1_3_1;
  wire mem_reg_3_1_3_i_10_n_0;
  wire mem_reg_3_1_3_i_11_n_0;
  wire mem_reg_3_1_3_i_12_n_0;
  wire mem_reg_3_1_3_i_13_n_0;
  wire mem_reg_3_1_3_i_14_n_0;
  wire mem_reg_3_1_3_i_15_n_0;
  wire mem_reg_3_1_3_i_16_n_0;
  wire mem_reg_3_1_3_i_17_n_0;
  wire mem_reg_3_1_3_i_18_n_0;
  wire mem_reg_3_1_3_i_19_n_0;
  wire mem_reg_3_1_3_i_1_n_0;
  wire mem_reg_3_1_3_i_3_n_0;
  wire mem_reg_3_1_3_i_4_n_0;
  wire mem_reg_3_1_3_i_5_n_0;
  wire mem_reg_3_1_3_i_6_n_0;
  wire mem_reg_3_1_3_i_7_n_0;
  wire mem_reg_3_1_3_i_8_n_0;
  wire mem_reg_3_1_3_i_9_n_0;
  wire mem_reg_3_1_4_0;
  wire mem_reg_3_1_4_1;
  wire mem_reg_3_1_4_i_10_n_0;
  wire mem_reg_3_1_4_i_11_n_0;
  wire mem_reg_3_1_4_i_12_n_0;
  wire mem_reg_3_1_4_i_13_n_0;
  wire mem_reg_3_1_4_i_14_n_0;
  wire mem_reg_3_1_4_i_15_n_0;
  wire mem_reg_3_1_4_i_16_n_0;
  wire mem_reg_3_1_4_i_17_n_0;
  wire mem_reg_3_1_4_i_18_n_0;
  wire mem_reg_3_1_4_i_19_n_0;
  wire mem_reg_3_1_4_i_1_n_0;
  wire mem_reg_3_1_4_i_3_n_0;
  wire mem_reg_3_1_4_i_4_n_0;
  wire mem_reg_3_1_4_i_5_n_0;
  wire mem_reg_3_1_4_i_6_n_0;
  wire mem_reg_3_1_4_i_7_n_0;
  wire mem_reg_3_1_4_i_8_n_0;
  wire mem_reg_3_1_4_i_9_n_0;
  wire mem_reg_3_1_5_0;
  wire mem_reg_3_1_5_1;
  wire mem_reg_3_1_5_i_10_n_0;
  wire mem_reg_3_1_5_i_11_n_0;
  wire mem_reg_3_1_5_i_12_n_0;
  wire mem_reg_3_1_5_i_13_n_0;
  wire mem_reg_3_1_5_i_14_n_0;
  wire mem_reg_3_1_5_i_15_n_0;
  wire mem_reg_3_1_5_i_16_n_0;
  wire mem_reg_3_1_5_i_17_n_0;
  wire mem_reg_3_1_5_i_18_n_0;
  wire mem_reg_3_1_5_i_19_n_0;
  wire mem_reg_3_1_5_i_1_n_0;
  wire mem_reg_3_1_5_i_3_n_0;
  wire mem_reg_3_1_5_i_4_n_0;
  wire mem_reg_3_1_5_i_5_n_0;
  wire mem_reg_3_1_5_i_6_n_0;
  wire mem_reg_3_1_5_i_7_n_0;
  wire mem_reg_3_1_5_i_8_n_0;
  wire mem_reg_3_1_5_i_9_n_0;
  wire mem_reg_3_1_6_0;
  wire mem_reg_3_1_6_1;
  wire mem_reg_3_1_6_i_10_n_0;
  wire mem_reg_3_1_6_i_11_n_0;
  wire mem_reg_3_1_6_i_12_n_0;
  wire mem_reg_3_1_6_i_13_n_0;
  wire mem_reg_3_1_6_i_14_n_0;
  wire mem_reg_3_1_6_i_15_n_0;
  wire mem_reg_3_1_6_i_16_n_0;
  wire mem_reg_3_1_6_i_17_n_0;
  wire mem_reg_3_1_6_i_18_n_0;
  wire mem_reg_3_1_6_i_19_n_0;
  wire mem_reg_3_1_6_i_1_n_0;
  wire mem_reg_3_1_6_i_3_n_0;
  wire mem_reg_3_1_6_i_4_n_0;
  wire mem_reg_3_1_6_i_5_n_0;
  wire mem_reg_3_1_6_i_6_n_0;
  wire mem_reg_3_1_6_i_7_n_0;
  wire mem_reg_3_1_6_i_8_n_0;
  wire mem_reg_3_1_6_i_9_n_0;
  wire mem_reg_3_1_7_0;
  wire mem_reg_3_1_7_1;
  wire mem_reg_3_1_7_2;
  wire mem_reg_3_1_7_3;
  wire mem_reg_3_1_7_4;
  wire mem_reg_3_1_7_5;
  wire mem_reg_3_1_7_6;
  wire mem_reg_3_1_7_i_10_n_0;
  wire mem_reg_3_1_7_i_11_n_0;
  wire mem_reg_3_1_7_i_12_n_0;
  wire mem_reg_3_1_7_i_13_n_0;
  wire mem_reg_3_1_7_i_14_n_0;
  wire mem_reg_3_1_7_i_15_n_0;
  wire mem_reg_3_1_7_i_16_n_0;
  wire mem_reg_3_1_7_i_17_n_0;
  wire mem_reg_3_1_7_i_18_n_0;
  wire mem_reg_3_1_7_i_19_n_0;
  wire mem_reg_3_1_7_i_1_n_0;
  wire mem_reg_3_1_7_i_3_n_0;
  wire mem_reg_3_1_7_i_4_n_0;
  wire mem_reg_3_1_7_i_5_n_0;
  wire mem_reg_3_1_7_i_6_n_0;
  wire mem_reg_3_1_7_i_7_n_0;
  wire mem_reg_3_1_7_i_8_n_0;
  wire mem_reg_3_1_7_i_9_n_0;
  wire [31:24]p_1_in;
  wire \rdata_reg[0] ;
  wire \rdata_reg[0]_0 ;
  wire \rdata_reg[0]_1 ;
  wire \rdata_reg[0]_2 ;
  wire \rdata_reg[1] ;
  wire \rdata_reg[2] ;
  wire [25:0]\rdata_reg[31] ;
  wire [25:0]\rdata_reg[31]_0 ;
  wire \rdata_reg[3] ;
  wire \rdata_reg[4] ;
  wire \rdata_reg[4]_0 ;
  wire \rdata_reg[7] ;
  wire \rdata_reg[9] ;
  wire [15:0]s_axi_control_ARADDR;
  wire s_axi_control_ARVALID;
  wire [31:0]s_axi_control_WDATA;
  wire [3:0]s_axi_control_WSTRB;
  wire s_axi_control_WVALID;
  wire [3:0]trunc_ln34_fu_144_p1;
  wire \trunc_ln34_reg_187[10]_i_2_n_0 ;
  wire \trunc_ln34_reg_187[1]_i_2_n_0 ;
  wire \trunc_ln34_reg_187[2]_i_2_n_0 ;
  wire \trunc_ln34_reg_187[3]_i_2_n_0 ;
  wire \trunc_ln34_reg_187[4]_i_2_n_0 ;
  wire \trunc_ln34_reg_187[9]_i_2_n_0 ;
  wire NLW_mem_reg_0_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_0_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_0_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_1_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_2_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_3_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_0_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_0_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_0_1_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_0_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_0_1_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_0_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_0_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_0_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_0_1_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_1_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_0_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_1_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_2_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_3_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_1_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_1_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_1_1_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_1_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_1_1_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_1_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_1_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_1_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_1_1_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_2_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_0_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_1_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_2_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_3_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_2_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_2_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_2_1_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_2_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_2_1_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_2_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_2_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_2_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_2_1_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_0_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_0_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_1_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_1_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_2_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_2_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_3_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_3_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_4_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_4_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_5_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_5_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_6_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_6_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_0_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_0_7_DIPBDIP_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_7_DOADO_UNCONNECTED;
  wire [31:0]NLW_mem_reg_3_0_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_0_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_0_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_0_7_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_0_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_0_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_0_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_0_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_0_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_0_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_0_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_0_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_0_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_0_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_0_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_0_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_0_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_0_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_1_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_1_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_1_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_1_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_1_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_1_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_1_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_1_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_1_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_1_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_1_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_1_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_1_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_1_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_2_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_2_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_2_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_2_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_2_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_2_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_2_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_2_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_2_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_2_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_2_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_2_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_2_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_2_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_3_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_3_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_3_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_3_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_3_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_3_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_3_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_3_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_3_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_3_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_3_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_3_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_3_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_3_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_4_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_4_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_4_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_4_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_4_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_4_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_4_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_4_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_4_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_4_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_4_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_4_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_4_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_4_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_5_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_5_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_5_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_5_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_5_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_5_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_5_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_5_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_5_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_5_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_5_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_5_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_5_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_5_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_6_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_6_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_6_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_6_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_6_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_6_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_6_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_6_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_6_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_6_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_6_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_6_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_6_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_6_RDADDRECC_UNCONNECTED;
  wire NLW_mem_reg_3_1_7_CASCADEOUTA_UNCONNECTED;
  wire NLW_mem_reg_3_1_7_CASCADEOUTB_UNCONNECTED;
  wire NLW_mem_reg_3_1_7_DBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_7_INJECTDBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_7_INJECTSBITERR_UNCONNECTED;
  wire NLW_mem_reg_3_1_7_SBITERR_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_7_DIPADIP_UNCONNECTED;
  wire [0:0]NLW_mem_reg_3_1_7_DIPBDIP_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_7_DOADO_UNCONNECTED;
  wire [31:1]NLW_mem_reg_3_1_7_DOBDO_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_7_DOPADOP_UNCONNECTED;
  wire [3:0]NLW_mem_reg_3_1_7_DOPBDOP_UNCONNECTED;
  wire [7:0]NLW_mem_reg_3_1_7_ECCPARITY_UNCONNECTED;
  wire [8:0]NLW_mem_reg_3_1_7_RDADDRECC_UNCONNECTED;

  LUT6 #(
    .INIT(64'h8888888888888808)) 
    ap_enable_reg_pp0_iter0_i_1
       (.I0(ap_enable_reg_pp0_iter0_reg),
        .I1(ap_rst_n),
        .I2(Q),
        .I3(\is_running_V_reg_192[0]_i_5_n_0 ),
        .I4(\is_running_V_reg_192[0]_i_4_n_0 ),
        .I5(ap_enable_reg_pp0_iter0_i_3_n_0),
        .O(ap_rst_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    ap_enable_reg_pp0_iter0_i_3
       (.I0(ap_enable_reg_pp0_iter0_i_4_n_0),
        .I1(ap_enable_reg_pp0_iter0_i_5_n_0),
        .I2(\is_running_V_reg_192[0]_i_6_n_0 ),
        .I3(ap_enable_reg_pp0_iter0_i_6_n_0),
        .I4(\is_running_V_reg_192[0]_i_7_n_0 ),
        .I5(\is_running_V_reg_192[0]_i_8_n_0 ),
        .O(ap_enable_reg_pp0_iter0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    ap_enable_reg_pp0_iter0_i_4
       (.I0(code_ram_q0[24]),
        .I1(code_ram_q0[25]),
        .O(ap_enable_reg_pp0_iter0_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFEFFFFF)) 
    ap_enable_reg_pp0_iter0_i_5
       (.I0(code_ram_q0[14]),
        .I1(code_ram_q0[13]),
        .I2(code_ram_q0[6]),
        .I3(code_ram_q0[4]),
        .I4(code_ram_q0[2]),
        .O(ap_enable_reg_pp0_iter0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    ap_enable_reg_pp0_iter0_i_6
       (.I0(code_ram_q0[30]),
        .I1(code_ram_q0[31]),
        .I2(code_ram_q0[8]),
        .O(ap_enable_reg_pp0_iter0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hF4FFFFEE)) 
    \d_i_type_V_reg_182[0]_i_1 
       (.I0(code_ram_q0[2]),
        .I1(code_ram_q0[3]),
        .I2(code_ram_q0[4]),
        .I3(code_ram_q0[6]),
        .I4(code_ram_q0[5]),
        .O(mem_reg_0_1_2_2));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEFFF3F7)) 
    \d_i_type_V_reg_182[1]_i_1 
       (.I0(code_ram_q0[2]),
        .I1(code_ram_q0[4]),
        .I2(code_ram_q0[3]),
        .I3(code_ram_q0[5]),
        .I4(code_ram_q0[6]),
        .O(mem_reg_0_1_2_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFDFAFFFA)) 
    \d_i_type_V_reg_182[2]_i_1 
       (.I0(code_ram_q0[2]),
        .I1(code_ram_q0[4]),
        .I2(code_ram_q0[3]),
        .I3(code_ram_q0[6]),
        .I4(code_ram_q0[5]),
        .O(mem_reg_0_1_2_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \is_running_V_reg_192[0]_i_1 
       (.I0(code_ram_q0[25]),
        .I1(code_ram_q0[24]),
        .I2(\is_running_V_reg_192[0]_i_2_n_0 ),
        .I3(\is_running_V_reg_192[0]_i_3_n_0 ),
        .I4(\is_running_V_reg_192[0]_i_4_n_0 ),
        .I5(\is_running_V_reg_192[0]_i_5_n_0 ),
        .O(is_running_V_running_cond_update_fu_100_ap_return));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFDF)) 
    \is_running_V_reg_192[0]_i_2 
       (.I0(code_ram_q0[2]),
        .I1(code_ram_q0[4]),
        .I2(code_ram_q0[6]),
        .I3(code_ram_q0[13]),
        .I4(code_ram_q0[14]),
        .I5(\is_running_V_reg_192[0]_i_6_n_0 ),
        .O(\is_running_V_reg_192[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \is_running_V_reg_192[0]_i_3 
       (.I0(code_ram_q0[30]),
        .I1(code_ram_q0[31]),
        .I2(code_ram_q0[8]),
        .I3(\is_running_V_reg_192[0]_i_7_n_0 ),
        .I4(\is_running_V_reg_192[0]_i_8_n_0 ),
        .O(\is_running_V_reg_192[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \is_running_V_reg_192[0]_i_4 
       (.I0(code_ram_q0[21]),
        .I1(code_ram_q0[20]),
        .I2(code_ram_q0[29]),
        .I3(code_ram_q0[28]),
        .O(\is_running_V_reg_192[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \is_running_V_reg_192[0]_i_5 
       (.I0(code_ram_q0[17]),
        .I1(code_ram_q0[16]),
        .I2(code_ram_q0[23]),
        .I3(code_ram_q0[22]),
        .O(\is_running_V_reg_192[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \is_running_V_reg_192[0]_i_6 
       (.I0(code_ram_q0[1]),
        .I1(code_ram_q0[0]),
        .I2(code_ram_q0[18]),
        .I3(code_ram_q0[19]),
        .I4(code_ram_q0[26]),
        .I5(code_ram_q0[27]),
        .O(\is_running_V_reg_192[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \is_running_V_reg_192[0]_i_7 
       (.I0(code_ram_q0[5]),
        .I1(code_ram_q0[15]),
        .I2(code_ram_q0[3]),
        .I3(code_ram_q0[7]),
        .O(\is_running_V_reg_192[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \is_running_V_reg_192[0]_i_8 
       (.I0(code_ram_q0[10]),
        .I1(code_ram_q0[9]),
        .I2(code_ram_q0[12]),
        .I3(code_ram_q0[11]),
        .O(\is_running_V_reg_192[0]_i_8_n_0 ));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_0
       (.ADDRARDADDR({mem_reg_0_0_0_i_3_n_0,mem_reg_0_0_0_i_4_n_0,mem_reg_0_0_0_i_5_n_0,mem_reg_0_0_0_i_6_n_0,mem_reg_0_0_0_i_7_n_0,mem_reg_0_0_0_i_8_n_0,mem_reg_0_0_0_i_9_n_0,mem_reg_0_0_0_i_10_n_0,mem_reg_0_0_0_i_11_n_0,mem_reg_0_0_0_i_12_n_0,mem_reg_0_0_0_i_13_n_0,mem_reg_0_0_0_i_14_n_0,mem_reg_0_0_0_i_15_n_0,mem_reg_0_0_0_i_16_n_0,mem_reg_0_0_0_i_17_n_0,mem_reg_0_0_0_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_0_n_0),
        .CASCADEOUTB(mem_reg_0_0_0_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_0_i_1_n_0),
        .ENBWREN(mem_reg_0_0_0_1),
        .INJECTDBITERR(NLW_mem_reg_0_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_0_i_19_n_0,mem_reg_0_0_0_i_19_n_0,mem_reg_0_0_0_i_19_n_0,mem_reg_0_0_0_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_0_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_0_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_1
       (.ADDRARDADDR({mem_reg_0_0_1_i_3_n_0,mem_reg_0_0_1_i_4_n_0,mem_reg_0_0_1_i_5_n_0,mem_reg_0_0_1_i_6_n_0,mem_reg_0_0_1_i_7_n_0,mem_reg_0_0_1_i_8_n_0,mem_reg_0_0_1_i_9_n_0,mem_reg_0_0_1_i_10_n_0,mem_reg_0_0_1_i_11_n_0,mem_reg_0_0_1_i_12_n_0,mem_reg_0_0_1_i_13_n_0,mem_reg_0_0_1_i_14_n_0,mem_reg_0_0_1_i_15_n_0,mem_reg_0_0_1_i_16_n_0,mem_reg_0_0_1_i_17_n_0,mem_reg_0_0_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_1_n_0),
        .CASCADEOUTB(mem_reg_0_0_1_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_1_i_1_n_0),
        .ENBWREN(mem_reg_0_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_1_i_19_n_0,mem_reg_0_0_1_i_19_n_0,mem_reg_0_0_1_i_19_n_0,mem_reg_0_0_1_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_1_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_2
       (.ADDRARDADDR({mem_reg_0_0_2_i_3_n_0,mem_reg_0_0_2_i_4_n_0,mem_reg_0_0_2_i_5_n_0,mem_reg_0_0_2_i_6_n_0,mem_reg_0_0_2_i_7_n_0,mem_reg_0_0_2_i_8_n_0,mem_reg_0_0_2_i_9_n_0,mem_reg_0_0_2_i_10_n_0,mem_reg_0_0_2_i_11_n_0,mem_reg_0_0_2_i_12_n_0,mem_reg_0_0_2_i_13_n_0,mem_reg_0_0_2_i_14_n_0,mem_reg_0_0_2_i_15_n_0,mem_reg_0_0_2_i_16_n_0,mem_reg_0_0_2_i_17_n_0,mem_reg_0_0_2_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_2_n_0),
        .CASCADEOUTB(mem_reg_0_0_2_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_2_i_1_n_0),
        .ENBWREN(mem_reg_0_0_2_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_2_i_19_n_0,mem_reg_0_0_2_i_19_n_0,mem_reg_0_0_2_i_19_n_0,mem_reg_0_0_2_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_2_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_2_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_2_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_3
       (.ADDRARDADDR({mem_reg_0_0_3_i_3_n_0,mem_reg_0_0_3_i_4_n_0,mem_reg_0_0_3_i_5_n_0,mem_reg_0_0_3_i_6_n_0,mem_reg_0_0_3_i_7_n_0,mem_reg_0_0_3_i_8_n_0,mem_reg_0_0_3_i_9_n_0,mem_reg_0_0_3_i_10_n_0,mem_reg_0_0_3_i_11_n_0,mem_reg_0_0_3_i_12_n_0,mem_reg_0_0_3_i_13_n_0,mem_reg_0_0_3_i_14_n_0,mem_reg_0_0_3_i_15_n_0,mem_reg_0_0_3_i_16_n_0,mem_reg_0_0_3_i_17_n_0,mem_reg_0_0_3_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_3_n_0),
        .CASCADEOUTB(mem_reg_0_0_3_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_3_i_1_n_0),
        .ENBWREN(mem_reg_0_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_3_i_19_n_0,mem_reg_0_0_3_i_19_n_0,mem_reg_0_0_3_i_19_n_0,mem_reg_0_0_3_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_3_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_3_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_3_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_4
       (.ADDRARDADDR({mem_reg_0_0_4_i_3_n_0,mem_reg_0_0_4_i_4_n_0,mem_reg_0_0_4_i_5_n_0,mem_reg_0_0_4_i_6_n_0,mem_reg_0_0_4_i_7_n_0,mem_reg_0_0_4_i_8_n_0,mem_reg_0_0_4_i_9_n_0,mem_reg_0_0_4_i_10_n_0,mem_reg_0_0_4_i_11_n_0,mem_reg_0_0_4_i_12_n_0,mem_reg_0_0_4_i_13_n_0,mem_reg_0_0_4_i_14_n_0,mem_reg_0_0_4_i_15_n_0,mem_reg_0_0_4_i_16_n_0,mem_reg_0_0_4_i_17_n_0,mem_reg_0_0_4_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_4_n_0),
        .CASCADEOUTB(mem_reg_0_0_4_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_4_i_1_n_0),
        .ENBWREN(mem_reg_0_0_4_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_4_i_19_n_0,mem_reg_0_0_4_i_19_n_0,mem_reg_0_0_4_i_19_n_0,mem_reg_0_0_4_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_4_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_4_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_4_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_5
       (.ADDRARDADDR({mem_reg_0_0_5_i_3_n_0,mem_reg_0_0_5_i_4_n_0,mem_reg_0_0_5_i_5_n_0,mem_reg_0_0_5_i_6_n_0,mem_reg_0_0_5_i_7_n_0,mem_reg_0_0_5_i_8_n_0,mem_reg_0_0_5_i_9_n_0,mem_reg_0_0_5_i_10_n_0,mem_reg_0_0_5_i_11_n_0,mem_reg_0_0_5_i_12_n_0,mem_reg_0_0_5_i_13_n_0,mem_reg_0_0_5_i_14_n_0,mem_reg_0_0_5_i_15_n_0,mem_reg_0_0_5_i_16_n_0,mem_reg_0_0_5_i_17_n_0,mem_reg_0_0_5_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_5_n_0),
        .CASCADEOUTB(mem_reg_0_0_5_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_5_i_1_n_0),
        .ENBWREN(mem_reg_0_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_5_i_19_n_0,mem_reg_0_0_5_i_19_n_0,mem_reg_0_0_5_i_19_n_0,mem_reg_0_0_5_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_5_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_5_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_5_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_6
       (.ADDRARDADDR({mem_reg_0_0_6_i_3_n_0,mem_reg_0_0_6_i_4_n_0,mem_reg_0_0_6_i_5_n_0,mem_reg_0_0_6_i_6_n_0,mem_reg_0_0_6_i_7_n_0,mem_reg_0_0_6_i_8_n_0,mem_reg_0_0_6_i_9_n_0,mem_reg_0_0_6_i_10_n_0,mem_reg_0_0_6_i_11_n_0,mem_reg_0_0_6_i_12_n_0,mem_reg_0_0_6_i_13_n_0,mem_reg_0_0_6_i_14_n_0,mem_reg_0_0_6_i_15_n_0,mem_reg_0_0_6_i_16_n_0,mem_reg_0_0_6_i_17_n_0,mem_reg_0_0_6_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_6_n_0),
        .CASCADEOUTB(mem_reg_0_0_6_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_6_i_1_n_0),
        .ENBWREN(mem_reg_0_0_6_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_6_i_19_n_0,mem_reg_0_0_6_i_19_n_0,mem_reg_0_0_6_i_19_n_0,mem_reg_0_0_6_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_6_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_6_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_6_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_0_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_0_7
       (.ADDRARDADDR({mem_reg_0_0_7_i_3_n_0,mem_reg_0_0_7_i_4_n_0,mem_reg_0_0_7_i_5_n_0,mem_reg_0_0_7_i_6_n_0,mem_reg_0_0_7_i_7_n_0,mem_reg_0_0_7_i_8_n_0,mem_reg_0_0_7_i_9_n_0,mem_reg_0_0_7_i_10_n_0,mem_reg_0_0_7_i_11_n_0,mem_reg_0_0_7_i_12_n_0,mem_reg_0_0_7_i_13_n_0,mem_reg_0_0_7_i_14_n_0,mem_reg_0_0_7_i_15_n_0,mem_reg_0_0_7_i_16_n_0,mem_reg_0_0_7_i_17_n_0,mem_reg_0_0_7_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_0_0_7_n_0),
        .CASCADEOUTB(mem_reg_0_0_7_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_0_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_0_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_0_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_0_7_i_1_n_0),
        .ENBWREN(mem_reg_0_0_7_0),
        .INJECTDBITERR(NLW_mem_reg_0_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_0_7_i_19_n_0,mem_reg_0_0_7_i_19_n_0,mem_reg_0_0_7_i_19_n_0,mem_reg_0_0_7_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_0_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_0_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_0_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_0_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_0_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_0_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_0_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_0_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_0_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_0_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_0_7_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_0_7_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_0_7_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_0_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_0_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_0_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_0_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_0_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_0_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_0_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_0_7_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "0" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_0
       (.ADDRARDADDR({mem_reg_0_1_0_i_3_n_0,mem_reg_0_1_0_i_4_n_0,mem_reg_0_1_0_i_5_n_0,mem_reg_0_1_0_i_6_n_0,mem_reg_0_1_0_i_7_n_0,mem_reg_0_1_0_i_8_n_0,mem_reg_0_1_0_i_9_n_0,mem_reg_0_1_0_i_10_n_0,mem_reg_0_1_0_i_11_n_0,mem_reg_0_1_0_i_12_n_0,mem_reg_0_1_0_i_13_n_0,mem_reg_0_1_0_i_14_n_0,mem_reg_0_1_0_i_15_n_0,mem_reg_0_1_0_i_16_n_0,mem_reg_0_1_0_i_17_n_0,mem_reg_0_1_0_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_0_0_0_n_0),
        .CASCADEINB(mem_reg_0_0_0_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[0]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_0_DOADO_UNCONNECTED[31:1],int_code_ram_q1[0]}),
        .DOBDO({NLW_mem_reg_0_1_0_DOBDO_UNCONNECTED[31:1],code_ram_q0[0]}),
        .DOPADOP(NLW_mem_reg_0_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_0_i_1_n_0),
        .ENBWREN(mem_reg_0_1_0_1),
        .INJECTDBITERR(NLW_mem_reg_0_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_0_i_19_n_0,mem_reg_0_1_0_i_19_n_0,mem_reg_0_1_0_i_19_n_0,mem_reg_0_1_0_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_0_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_0_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "1" *) 
  (* ram_slice_end = "1" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_1
       (.ADDRARDADDR({mem_reg_0_1_1_i_3_n_0,mem_reg_0_1_1_i_4_n_0,mem_reg_0_1_1_i_5_n_0,mem_reg_0_1_1_i_6_n_0,mem_reg_0_1_1_i_7_n_0,mem_reg_0_1_1_i_8_n_0,mem_reg_0_1_1_i_9_n_0,mem_reg_0_1_1_i_10_n_0,mem_reg_0_1_1_i_11_n_0,mem_reg_0_1_1_i_12_n_0,mem_reg_0_1_1_i_13_n_0,mem_reg_0_1_1_i_14_n_0,mem_reg_0_1_1_i_15_n_0,mem_reg_0_1_1_i_16_n_0,mem_reg_0_1_1_i_17_n_0,mem_reg_0_1_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_0_0_1_n_0),
        .CASCADEINB(mem_reg_0_0_1_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[1]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_1_DOADO_UNCONNECTED[31:1],int_code_ram_q1[1]}),
        .DOBDO({NLW_mem_reg_0_1_1_DOBDO_UNCONNECTED[31:1],code_ram_q0[1]}),
        .DOPADOP(NLW_mem_reg_0_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_1_i_1_n_0),
        .ENBWREN(mem_reg_0_1_1_0),
        .INJECTDBITERR(NLW_mem_reg_0_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_1_i_19_n_0,mem_reg_0_1_1_i_19_n_0,mem_reg_0_1_1_i_19_n_0,mem_reg_0_1_1_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_1_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "2" *) 
  (* ram_slice_end = "2" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_2
       (.ADDRARDADDR({mem_reg_0_1_2_i_3_n_0,mem_reg_0_1_2_i_4_n_0,mem_reg_0_1_2_i_5_n_0,mem_reg_0_1_2_i_6_n_0,mem_reg_0_1_2_i_7_n_0,mem_reg_0_1_2_i_8_n_0,mem_reg_0_1_2_i_9_n_0,mem_reg_0_1_2_i_10_n_0,mem_reg_0_1_2_i_11_n_0,mem_reg_0_1_2_i_12_n_0,mem_reg_0_1_2_i_13_n_0,mem_reg_0_1_2_i_14_n_0,mem_reg_0_1_2_i_15_n_0,mem_reg_0_1_2_i_16_n_0,mem_reg_0_1_2_i_17_n_0,mem_reg_0_1_2_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_0_0_2_n_0),
        .CASCADEINB(mem_reg_0_0_2_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[2]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_2_DOADO_UNCONNECTED[31:1],int_code_ram_q1[2]}),
        .DOBDO({NLW_mem_reg_0_1_2_DOBDO_UNCONNECTED[31:1],code_ram_q0[2]}),
        .DOPADOP(NLW_mem_reg_0_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_2_i_1_n_0),
        .ENBWREN(mem_reg_0_1_2_3),
        .INJECTDBITERR(NLW_mem_reg_0_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_2_i_19_n_0,mem_reg_0_1_2_i_19_n_0,mem_reg_0_1_2_i_19_n_0,mem_reg_0_1_2_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_2_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_2_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_2_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "3" *) 
  (* ram_slice_end = "3" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_3
       (.ADDRARDADDR({mem_reg_0_1_3_i_3_n_0,mem_reg_0_1_3_i_4_n_0,mem_reg_0_1_3_i_5_n_0,mem_reg_0_1_3_i_6_n_0,mem_reg_0_1_3_i_7_n_0,mem_reg_0_1_3_i_8_n_0,mem_reg_0_1_3_i_9_n_0,mem_reg_0_1_3_i_10_n_0,mem_reg_0_1_3_i_11_n_0,mem_reg_0_1_3_i_12_n_0,mem_reg_0_1_3_i_13_n_0,mem_reg_0_1_3_i_14_n_0,mem_reg_0_1_3_i_15_n_0,mem_reg_0_1_3_i_16_n_0,mem_reg_0_1_3_i_17_n_0,mem_reg_0_1_3_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_0_0_3_n_0),
        .CASCADEINB(mem_reg_0_0_3_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[3]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_3_DOADO_UNCONNECTED[31:1],int_code_ram_q1[3]}),
        .DOBDO({NLW_mem_reg_0_1_3_DOBDO_UNCONNECTED[31:1],code_ram_q0[3]}),
        .DOPADOP(NLW_mem_reg_0_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_3_i_1_n_0),
        .ENBWREN(mem_reg_0_1_3_0),
        .INJECTDBITERR(NLW_mem_reg_0_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_3_i_19_n_0,mem_reg_0_1_3_i_19_n_0,mem_reg_0_1_3_i_19_n_0,mem_reg_0_1_3_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_3_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_3_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_3_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "4" *) 
  (* ram_slice_end = "4" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_4
       (.ADDRARDADDR({mem_reg_0_1_4_i_3_n_0,mem_reg_0_1_4_i_4_n_0,mem_reg_0_1_4_i_5_n_0,mem_reg_0_1_4_i_6_n_0,mem_reg_0_1_4_i_7_n_0,mem_reg_0_1_4_i_8_n_0,mem_reg_0_1_4_i_9_n_0,mem_reg_0_1_4_i_10_n_0,mem_reg_0_1_4_i_11_n_0,mem_reg_0_1_4_i_12_n_0,mem_reg_0_1_4_i_13_n_0,mem_reg_0_1_4_i_14_n_0,mem_reg_0_1_4_i_15_n_0,mem_reg_0_1_4_i_16_n_0,mem_reg_0_1_4_i_17_n_0,mem_reg_0_1_4_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_0_0_4_n_0),
        .CASCADEINB(mem_reg_0_0_4_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[4]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_4_DOADO_UNCONNECTED[31:1],int_code_ram_q1[4]}),
        .DOBDO({NLW_mem_reg_0_1_4_DOBDO_UNCONNECTED[31:1],code_ram_q0[4]}),
        .DOPADOP(NLW_mem_reg_0_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_4_i_1_n_0),
        .ENBWREN(mem_reg_0_1_4_0),
        .INJECTDBITERR(NLW_mem_reg_0_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_4_i_19_n_0,mem_reg_0_1_4_i_19_n_0,mem_reg_0_1_4_i_19_n_0,mem_reg_0_1_4_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_4_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_4_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_4_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "5" *) 
  (* ram_slice_end = "5" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_5
       (.ADDRARDADDR({mem_reg_0_1_5_i_3_n_0,mem_reg_0_1_5_i_4_n_0,mem_reg_0_1_5_i_5_n_0,mem_reg_0_1_5_i_6_n_0,mem_reg_0_1_5_i_7_n_0,mem_reg_0_1_5_i_8_n_0,mem_reg_0_1_5_i_9_n_0,mem_reg_0_1_5_i_10_n_0,mem_reg_0_1_5_i_11_n_0,mem_reg_0_1_5_i_12_n_0,mem_reg_0_1_5_i_13_n_0,mem_reg_0_1_5_i_14_n_0,mem_reg_0_1_5_i_15_n_0,mem_reg_0_1_5_i_16_n_0,mem_reg_0_1_5_i_17_n_0,mem_reg_0_1_5_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_0_0_5_n_0),
        .CASCADEINB(mem_reg_0_0_5_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[5]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_5_DOADO_UNCONNECTED[31:1],int_code_ram_q1[5]}),
        .DOBDO({NLW_mem_reg_0_1_5_DOBDO_UNCONNECTED[31:1],code_ram_q0[5]}),
        .DOPADOP(NLW_mem_reg_0_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_5_i_1_n_0),
        .ENBWREN(mem_reg_0_1_5_0),
        .INJECTDBITERR(NLW_mem_reg_0_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_5_i_19_n_0,mem_reg_0_1_5_i_19_n_0,mem_reg_0_1_5_i_19_n_0,mem_reg_0_1_5_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_5_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_5_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_5_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "6" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_6
       (.ADDRARDADDR({mem_reg_0_1_6_i_3_n_0,mem_reg_0_1_6_i_4_n_0,mem_reg_0_1_6_i_5_n_0,mem_reg_0_1_6_i_6_n_0,mem_reg_0_1_6_i_7_n_0,mem_reg_0_1_6_i_8_n_0,mem_reg_0_1_6_i_9_n_0,mem_reg_0_1_6_i_10_n_0,mem_reg_0_1_6_i_11_n_0,mem_reg_0_1_6_i_12_n_0,mem_reg_0_1_6_i_13_n_0,mem_reg_0_1_6_i_14_n_0,mem_reg_0_1_6_i_15_n_0,mem_reg_0_1_6_i_16_n_0,mem_reg_0_1_6_i_17_n_0,mem_reg_0_1_6_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_0_0_6_n_0),
        .CASCADEINB(mem_reg_0_0_6_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[6]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_6_DOADO_UNCONNECTED[31:1],int_code_ram_q1[6]}),
        .DOBDO({NLW_mem_reg_0_1_6_DOBDO_UNCONNECTED[31:1],code_ram_q0[6]}),
        .DOPADOP(NLW_mem_reg_0_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_6_i_1_n_0),
        .ENBWREN(mem_reg_0_1_6_1),
        .INJECTDBITERR(NLW_mem_reg_0_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_6_i_19_n_0,mem_reg_0_1_6_i_19_n_0,mem_reg_0_1_6_i_19_n_0,mem_reg_0_1_6_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_6_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_6_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_6_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_0_1_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "7" *) 
  (* ram_slice_end = "7" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_0_1_7
       (.ADDRARDADDR({mem_reg_0_1_7_i_3_n_0,mem_reg_0_1_7_i_4_n_0,mem_reg_0_1_7_i_5_n_0,mem_reg_0_1_7_i_6_n_0,mem_reg_0_1_7_i_7_n_0,mem_reg_0_1_7_i_8_n_0,mem_reg_0_1_7_i_9_n_0,mem_reg_0_1_7_i_10_n_0,mem_reg_0_1_7_i_11_n_0,mem_reg_0_1_7_i_12_n_0,mem_reg_0_1_7_i_13_n_0,mem_reg_0_1_7_i_14_n_0,mem_reg_0_1_7_i_15_n_0,mem_reg_0_1_7_i_16_n_0,mem_reg_0_1_7_i_17_n_0,mem_reg_0_1_7_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_0_0_7_n_0),
        .CASCADEINB(mem_reg_0_0_7_n_1),
        .CASCADEOUTA(NLW_mem_reg_0_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_0_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_0_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[7]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_0_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_0_1_7_DOADO_UNCONNECTED[31:1],int_code_ram_q1[7]}),
        .DOBDO({NLW_mem_reg_0_1_7_DOBDO_UNCONNECTED[31:1],code_ram_q0[7]}),
        .DOPADOP(NLW_mem_reg_0_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_0_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_0_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_0_1_7_i_1_n_0),
        .ENBWREN(mem_reg_0_1_7_0),
        .INJECTDBITERR(NLW_mem_reg_0_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_0_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_0_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_0_1_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_0_1_7_i_19_n_0,mem_reg_0_1_7_i_19_n_0,mem_reg_0_1_7_i_19_n_0,mem_reg_0_1_7_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_0_1_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_0_1_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_0_1_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_0_1_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_0_1_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_0_1_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_0_1_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_0_1_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_0_1_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_0_1_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_0_1_7_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_0_1_7_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[0]),
        .O(mem_reg_0_1_7_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_0_1_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_0_1_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_0_1_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_0_1_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_0_1_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_0_1_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_0_1_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_0_1_7_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_0
       (.ADDRARDADDR({mem_reg_1_0_0_i_3_n_0,mem_reg_1_0_0_i_4_n_0,mem_reg_1_0_0_i_5_n_0,mem_reg_1_0_0_i_6_n_0,mem_reg_1_0_0_i_7_n_0,mem_reg_1_0_0_i_8_n_0,mem_reg_1_0_0_i_9_n_0,mem_reg_1_0_0_i_10_n_0,mem_reg_1_0_0_i_11_n_0,mem_reg_1_0_0_i_12_n_0,mem_reg_1_0_0_i_13_n_0,mem_reg_1_0_0_i_14_n_0,mem_reg_1_0_0_i_15_n_0,mem_reg_1_0_0_i_16_n_0,mem_reg_1_0_0_i_17_n_0,mem_reg_1_0_0_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_0_n_0),
        .CASCADEOUTB(mem_reg_1_0_0_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_0_i_1_n_0),
        .ENBWREN(mem_reg_1_0_0_2),
        .INJECTDBITERR(NLW_mem_reg_1_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_0_SBITERR_UNCONNECTED),
        .WEA({int_code_ram_be1[1],int_code_ram_be1[1],int_code_ram_be1[1],int_code_ram_be1[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_0_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(int_code_ram_be1[1]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_1
       (.ADDRARDADDR({mem_reg_1_0_1_i_3_n_0,mem_reg_1_0_1_i_4_n_0,mem_reg_1_0_1_i_5_n_0,mem_reg_1_0_1_i_6_n_0,mem_reg_1_0_1_i_7_n_0,mem_reg_1_0_1_i_8_n_0,mem_reg_1_0_1_i_9_n_0,mem_reg_1_0_1_i_10_n_0,mem_reg_1_0_1_i_11_n_0,mem_reg_1_0_1_i_12_n_0,mem_reg_1_0_1_i_13_n_0,mem_reg_1_0_1_i_14_n_0,mem_reg_1_0_1_i_15_n_0,mem_reg_1_0_1_i_16_n_0,mem_reg_1_0_1_i_17_n_0,mem_reg_1_0_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_1_n_0),
        .CASCADEOUTB(mem_reg_1_0_1_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_1_i_1_n_0),
        .ENBWREN(mem_reg_1_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_1_i_19_n_0,mem_reg_1_0_1_i_19_n_0,mem_reg_1_0_1_i_19_n_0,mem_reg_1_0_1_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_1_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_2
       (.ADDRARDADDR({mem_reg_1_0_2_i_3_n_0,mem_reg_1_0_2_i_4_n_0,mem_reg_1_0_2_i_5_n_0,mem_reg_1_0_2_i_6_n_0,mem_reg_1_0_2_i_7_n_0,mem_reg_1_0_2_i_8_n_0,mem_reg_1_0_2_i_9_n_0,mem_reg_1_0_2_i_10_n_0,mem_reg_1_0_2_i_11_n_0,mem_reg_1_0_2_i_12_n_0,mem_reg_1_0_2_i_13_n_0,mem_reg_1_0_2_i_14_n_0,mem_reg_1_0_2_i_15_n_0,mem_reg_1_0_2_i_16_n_0,mem_reg_1_0_2_i_17_n_0,mem_reg_1_0_2_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_2_n_0),
        .CASCADEOUTB(mem_reg_1_0_2_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_2_i_1_n_0),
        .ENBWREN(mem_reg_1_0_2_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_2_i_19_n_0,mem_reg_1_0_2_i_19_n_0,mem_reg_1_0_2_i_19_n_0,mem_reg_1_0_2_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_2_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_2_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_2_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_3
       (.ADDRARDADDR({mem_reg_1_0_3_i_3_n_0,mem_reg_1_0_3_i_4_n_0,mem_reg_1_0_3_i_5_n_0,mem_reg_1_0_3_i_6_n_0,mem_reg_1_0_3_i_7_n_0,mem_reg_1_0_3_i_8_n_0,mem_reg_1_0_3_i_9_n_0,mem_reg_1_0_3_i_10_n_0,mem_reg_1_0_3_i_11_n_0,mem_reg_1_0_3_i_12_n_0,mem_reg_1_0_3_i_13_n_0,mem_reg_1_0_3_i_14_n_0,mem_reg_1_0_3_i_15_n_0,mem_reg_1_0_3_i_16_n_0,mem_reg_1_0_3_i_17_n_0,mem_reg_1_0_3_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_3_n_0),
        .CASCADEOUTB(mem_reg_1_0_3_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_3_i_1_n_0),
        .ENBWREN(mem_reg_1_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_3_i_19_n_0,mem_reg_1_0_3_i_19_n_0,mem_reg_1_0_3_i_19_n_0,mem_reg_1_0_3_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_3_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_3_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_3_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_4
       (.ADDRARDADDR({mem_reg_1_0_4_i_3_n_0,mem_reg_1_0_4_i_4_n_0,mem_reg_1_0_4_i_5_n_0,mem_reg_1_0_4_i_6_n_0,mem_reg_1_0_4_i_7_n_0,mem_reg_1_0_4_i_8_n_0,mem_reg_1_0_4_i_9_n_0,mem_reg_1_0_4_i_10_n_0,mem_reg_1_0_4_i_11_n_0,mem_reg_1_0_4_i_12_n_0,mem_reg_1_0_4_i_13_n_0,mem_reg_1_0_4_i_14_n_0,mem_reg_1_0_4_i_15_n_0,mem_reg_1_0_4_i_16_n_0,mem_reg_1_0_4_i_17_n_0,mem_reg_1_0_4_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_4_n_0),
        .CASCADEOUTB(mem_reg_1_0_4_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_4_i_1_n_0),
        .ENBWREN(mem_reg_1_0_4_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_4_i_19_n_0,mem_reg_1_0_4_i_19_n_0,mem_reg_1_0_4_i_19_n_0,mem_reg_1_0_4_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_4_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_4_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_4_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_5
       (.ADDRARDADDR({mem_reg_1_0_5_i_3_n_0,mem_reg_1_0_5_i_4_n_0,mem_reg_1_0_5_i_5_n_0,mem_reg_1_0_5_i_6_n_0,mem_reg_1_0_5_i_7_n_0,mem_reg_1_0_5_i_8_n_0,mem_reg_1_0_5_i_9_n_0,mem_reg_1_0_5_i_10_n_0,mem_reg_1_0_5_i_11_n_0,mem_reg_1_0_5_i_12_n_0,mem_reg_1_0_5_i_13_n_0,mem_reg_1_0_5_i_14_n_0,mem_reg_1_0_5_i_15_n_0,mem_reg_1_0_5_i_16_n_0,mem_reg_1_0_5_i_17_n_0,mem_reg_1_0_5_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_5_n_0),
        .CASCADEOUTB(mem_reg_1_0_5_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_5_i_1_n_0),
        .ENBWREN(mem_reg_1_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_5_i_19_n_0,mem_reg_1_0_5_i_19_n_0,mem_reg_1_0_5_i_19_n_0,mem_reg_1_0_5_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_5_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_5_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_5_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_6
       (.ADDRARDADDR({mem_reg_1_0_6_i_3_n_0,mem_reg_1_0_6_i_4_n_0,mem_reg_1_0_6_i_5_n_0,mem_reg_1_0_6_i_6_n_0,mem_reg_1_0_6_i_7_n_0,mem_reg_1_0_6_i_8_n_0,mem_reg_1_0_6_i_9_n_0,mem_reg_1_0_6_i_10_n_0,mem_reg_1_0_6_i_11_n_0,mem_reg_1_0_6_i_12_n_0,mem_reg_1_0_6_i_13_n_0,mem_reg_1_0_6_i_14_n_0,mem_reg_1_0_6_i_15_n_0,mem_reg_1_0_6_i_16_n_0,mem_reg_1_0_6_i_17_n_0,mem_reg_1_0_6_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_6_n_0),
        .CASCADEOUTB(mem_reg_1_0_6_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_6_i_1_n_0),
        .ENBWREN(mem_reg_1_0_6_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_6_i_19_n_0,mem_reg_1_0_6_i_19_n_0,mem_reg_1_0_6_i_19_n_0,mem_reg_1_0_6_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_6_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_6_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_6_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_0_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_0_7
       (.ADDRARDADDR({mem_reg_1_0_7_i_3_n_0,mem_reg_1_0_7_i_4_n_0,mem_reg_1_0_7_i_5_n_0,mem_reg_1_0_7_i_6_n_0,mem_reg_1_0_7_i_7_n_0,mem_reg_1_0_7_i_8_n_0,mem_reg_1_0_7_i_9_n_0,mem_reg_1_0_7_i_10_n_0,mem_reg_1_0_7_i_11_n_0,mem_reg_1_0_7_i_12_n_0,mem_reg_1_0_7_i_13_n_0,mem_reg_1_0_7_i_14_n_0,mem_reg_1_0_7_i_15_n_0,mem_reg_1_0_7_i_16_n_0,mem_reg_1_0_7_i_17_n_0,mem_reg_1_0_7_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_1_0_7_n_0),
        .CASCADEOUTB(mem_reg_1_0_7_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_1_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_1_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_1_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_0_7_i_1_n_0),
        .ENBWREN(mem_reg_1_0_7_0),
        .INJECTDBITERR(NLW_mem_reg_1_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_0_7_i_19_n_0,mem_reg_1_0_7_i_19_n_0,mem_reg_1_0_7_i_19_n_0,mem_reg_1_0_7_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_0_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_0_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_0_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_0_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_0_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_0_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_0_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_0_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_0_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_0_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_0_7_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_0_7_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_0_7_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_0_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_0_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_0_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_0_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_0_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_0_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_0_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_0_7_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "8" *) 
  (* ram_slice_end = "8" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_0
       (.ADDRARDADDR({mem_reg_1_1_0_i_3_n_0,mem_reg_1_1_0_i_4_n_0,mem_reg_1_1_0_i_5_n_0,mem_reg_1_1_0_i_6_n_0,mem_reg_1_1_0_i_7_n_0,mem_reg_1_1_0_i_8_n_0,mem_reg_1_1_0_i_9_n_0,mem_reg_1_1_0_i_10_n_0,mem_reg_1_1_0_i_11_n_0,mem_reg_1_1_0_i_12_n_0,mem_reg_1_1_0_i_13_n_0,mem_reg_1_1_0_i_14_n_0,mem_reg_1_1_0_i_15_n_0,mem_reg_1_1_0_i_16_n_0,mem_reg_1_1_0_i_17_n_0,mem_reg_1_1_0_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_1_0_0_n_0),
        .CASCADEINB(mem_reg_1_0_0_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[8]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_0_DOADO_UNCONNECTED[31:1],int_code_ram_q1[8]}),
        .DOBDO({NLW_mem_reg_1_1_0_DOBDO_UNCONNECTED[31:1],code_ram_q0[8]}),
        .DOPADOP(NLW_mem_reg_1_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_0_i_1_n_0),
        .ENBWREN(mem_reg_1_1_0_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_0_SBITERR_UNCONNECTED),
        .WEA({int_code_ram_be1[1],int_code_ram_be1[1],int_code_ram_be1[1],int_code_ram_be1[1]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_0_i_18_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "9" *) 
  (* ram_slice_end = "9" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_1
       (.ADDRARDADDR({mem_reg_1_1_1_i_3_n_0,mem_reg_1_1_1_i_4_n_0,mem_reg_1_1_1_i_5_n_0,mem_reg_1_1_1_i_6_n_0,mem_reg_1_1_1_i_7_n_0,mem_reg_1_1_1_i_8_n_0,mem_reg_1_1_1_i_9_n_0,mem_reg_1_1_1_i_10_n_0,mem_reg_1_1_1_i_11_n_0,mem_reg_1_1_1_i_12_n_0,mem_reg_1_1_1_i_13_n_0,mem_reg_1_1_1_i_14_n_0,mem_reg_1_1_1_i_15_n_0,mem_reg_1_1_1_i_16_n_0,mem_reg_1_1_1_i_17_n_0,mem_reg_1_1_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_1_0_1_n_0),
        .CASCADEINB(mem_reg_1_0_1_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[9]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_1_DOADO_UNCONNECTED[31:1],int_code_ram_q1[9]}),
        .DOBDO({NLW_mem_reg_1_1_1_DOBDO_UNCONNECTED[31:1],code_ram_q0[9]}),
        .DOPADOP(NLW_mem_reg_1_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_1_i_1_n_0),
        .ENBWREN(mem_reg_1_1_1_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_1_1_i_19_n_0,mem_reg_1_1_1_i_19_n_0,mem_reg_1_1_1_i_19_n_0,mem_reg_1_1_1_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_1_1_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_1_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "10" *) 
  (* ram_slice_end = "10" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_2
       (.ADDRARDADDR({mem_reg_1_1_2_i_3_n_0,mem_reg_1_1_2_i_4_n_0,mem_reg_1_1_2_i_5_n_0,mem_reg_1_1_2_i_6_n_0,mem_reg_1_1_2_i_7_n_0,mem_reg_1_1_2_i_8_n_0,mem_reg_1_1_2_i_9_n_0,mem_reg_1_1_2_i_10_n_0,mem_reg_1_1_2_i_11_n_0,mem_reg_1_1_2_i_12_n_0,mem_reg_1_1_2_i_13_n_0,mem_reg_1_1_2_i_14_n_0,mem_reg_1_1_2_i_15_n_0,mem_reg_1_1_2_i_16_n_0,mem_reg_1_1_2_i_17_n_0,mem_reg_1_1_2_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_1_0_2_n_0),
        .CASCADEINB(mem_reg_1_0_2_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[10]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_2_DOADO_UNCONNECTED[31:1],int_code_ram_q1[10]}),
        .DOBDO({NLW_mem_reg_1_1_2_DOBDO_UNCONNECTED[31:1],code_ram_q0[10]}),
        .DOPADOP(NLW_mem_reg_1_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_2_i_1_n_0),
        .ENBWREN(mem_reg_1_1_2_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_1_2_i_19_n_0,mem_reg_1_1_2_i_19_n_0,mem_reg_1_1_2_i_19_n_0,mem_reg_1_1_2_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_2_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_1_2_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_1_2_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "11" *) 
  (* ram_slice_end = "11" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_3
       (.ADDRARDADDR({mem_reg_1_1_3_i_3_n_0,mem_reg_1_1_3_i_4_n_0,mem_reg_1_1_3_i_5_n_0,mem_reg_1_1_3_i_6_n_0,mem_reg_1_1_3_i_7_n_0,mem_reg_1_1_3_i_8_n_0,mem_reg_1_1_3_i_9_n_0,mem_reg_1_1_3_i_10_n_0,mem_reg_1_1_3_i_11_n_0,mem_reg_1_1_3_i_12_n_0,mem_reg_1_1_3_i_13_n_0,mem_reg_1_1_3_i_14_n_0,mem_reg_1_1_3_i_15_n_0,mem_reg_1_1_3_i_16_n_0,mem_reg_1_1_3_i_17_n_0,mem_reg_1_1_3_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_1_0_3_n_0),
        .CASCADEINB(mem_reg_1_0_3_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[11]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_3_DOADO_UNCONNECTED[31:1],int_code_ram_q1[11]}),
        .DOBDO({NLW_mem_reg_1_1_3_DOBDO_UNCONNECTED[31:1],code_ram_q0[11]}),
        .DOPADOP(NLW_mem_reg_1_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_3_i_1_n_0),
        .ENBWREN(mem_reg_1_1_3_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_1_3_i_19_n_0,mem_reg_1_1_3_i_19_n_0,mem_reg_1_1_3_i_19_n_0,mem_reg_1_1_3_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_3_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_1_3_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_1_3_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "12" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_4
       (.ADDRARDADDR({mem_reg_1_1_4_i_3_n_0,mem_reg_1_1_4_i_4_n_0,mem_reg_1_1_4_i_5_n_0,mem_reg_1_1_4_i_6_n_0,mem_reg_1_1_4_i_7_n_0,mem_reg_1_1_4_i_8_n_0,mem_reg_1_1_4_i_9_n_0,mem_reg_1_1_4_i_10_n_0,mem_reg_1_1_4_i_11_n_0,mem_reg_1_1_4_i_12_n_0,mem_reg_1_1_4_i_13_n_0,mem_reg_1_1_4_i_14_n_0,mem_reg_1_1_4_i_15_n_0,mem_reg_1_1_4_i_16_n_0,mem_reg_1_1_4_i_17_n_0,mem_reg_1_1_4_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_1_0_4_n_0),
        .CASCADEINB(mem_reg_1_0_4_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[12]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_4_DOADO_UNCONNECTED[31:1],int_code_ram_q1[12]}),
        .DOBDO({NLW_mem_reg_1_1_4_DOBDO_UNCONNECTED[31:1],code_ram_q0[12]}),
        .DOPADOP(NLW_mem_reg_1_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_4_i_1_n_0),
        .ENBWREN(mem_reg_1_1_4_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_1_4_i_19_n_0,mem_reg_1_1_4_i_19_n_0,mem_reg_1_1_4_i_19_n_0,mem_reg_1_1_4_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_4_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_1_4_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_1_4_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "13" *) 
  (* ram_slice_end = "13" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_5
       (.ADDRARDADDR({mem_reg_1_1_5_i_3_n_0,mem_reg_1_1_5_i_4_n_0,mem_reg_1_1_5_i_5_n_0,mem_reg_1_1_5_i_6_n_0,mem_reg_1_1_5_i_7_n_0,mem_reg_1_1_5_i_8_n_0,mem_reg_1_1_5_i_9_n_0,mem_reg_1_1_5_i_10_n_0,mem_reg_1_1_5_i_11_n_0,mem_reg_1_1_5_i_12_n_0,mem_reg_1_1_5_i_13_n_0,mem_reg_1_1_5_i_14_n_0,mem_reg_1_1_5_i_15_n_0,mem_reg_1_1_5_i_16_n_0,mem_reg_1_1_5_i_17_n_0,mem_reg_1_1_5_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_1_0_5_n_0),
        .CASCADEINB(mem_reg_1_0_5_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[13]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_5_DOADO_UNCONNECTED[31:1],int_code_ram_q1[13]}),
        .DOBDO({NLW_mem_reg_1_1_5_DOBDO_UNCONNECTED[31:1],code_ram_q0[13]}),
        .DOPADOP(NLW_mem_reg_1_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_5_i_1_n_0),
        .ENBWREN(mem_reg_1_1_5_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_1_5_i_19_n_0,mem_reg_1_1_5_i_19_n_0,mem_reg_1_1_5_i_19_n_0,mem_reg_1_1_5_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_5_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_1_5_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_1_5_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "14" *) 
  (* ram_slice_end = "14" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_6
       (.ADDRARDADDR({mem_reg_1_1_6_i_3_n_0,mem_reg_1_1_6_i_4_n_0,mem_reg_1_1_6_i_5_n_0,mem_reg_1_1_6_i_6_n_0,mem_reg_1_1_6_i_7_n_0,mem_reg_1_1_6_i_8_n_0,mem_reg_1_1_6_i_9_n_0,mem_reg_1_1_6_i_10_n_0,mem_reg_1_1_6_i_11_n_0,mem_reg_1_1_6_i_12_n_0,mem_reg_1_1_6_i_13_n_0,mem_reg_1_1_6_i_14_n_0,mem_reg_1_1_6_i_15_n_0,mem_reg_1_1_6_i_16_n_0,mem_reg_1_1_6_i_17_n_0,mem_reg_1_1_6_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_1_0_6_n_0),
        .CASCADEINB(mem_reg_1_0_6_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[14]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_6_DOADO_UNCONNECTED[31:1],int_code_ram_q1[14]}),
        .DOBDO({NLW_mem_reg_1_1_6_DOBDO_UNCONNECTED[31:1],code_ram_q0[14]}),
        .DOPADOP(NLW_mem_reg_1_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_6_i_1_n_0),
        .ENBWREN(mem_reg_1_1_6_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_1_6_i_19_n_0,mem_reg_1_1_6_i_19_n_0,mem_reg_1_1_6_i_19_n_0,mem_reg_1_1_6_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_6_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_1_6_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_1_6_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_1_1_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "15" *) 
  (* ram_slice_end = "15" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_1_1_7
       (.ADDRARDADDR({mem_reg_1_1_7_i_3_n_0,mem_reg_1_1_7_i_4_n_0,mem_reg_1_1_7_i_5_n_0,mem_reg_1_1_7_i_6_n_0,mem_reg_1_1_7_i_7_n_0,mem_reg_1_1_7_i_8_n_0,mem_reg_1_1_7_i_9_n_0,mem_reg_1_1_7_i_10_n_0,mem_reg_1_1_7_i_11_n_0,mem_reg_1_1_7_i_12_n_0,mem_reg_1_1_7_i_13_n_0,mem_reg_1_1_7_i_14_n_0,mem_reg_1_1_7_i_15_n_0,mem_reg_1_1_7_i_16_n_0,mem_reg_1_1_7_i_17_n_0,mem_reg_1_1_7_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_1_0_7_n_0),
        .CASCADEINB(mem_reg_1_0_7_n_1),
        .CASCADEOUTA(NLW_mem_reg_1_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_1_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_1_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[15]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_1_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_1_1_7_DOADO_UNCONNECTED[31:1],int_code_ram_q1[15]}),
        .DOBDO({NLW_mem_reg_1_1_7_DOBDO_UNCONNECTED[31:1],code_ram_q0[15]}),
        .DOPADOP(NLW_mem_reg_1_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_1_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_1_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_1_1_7_i_1_n_0),
        .ENBWREN(mem_reg_1_1_7_0),
        .INJECTDBITERR(NLW_mem_reg_1_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_1_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_1_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_1_1_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_1_1_7_i_19_n_0,mem_reg_1_1_7_i_19_n_0,mem_reg_1_1_7_i_19_n_0,mem_reg_1_1_7_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_1_1_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_1_1_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_1_1_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_1_1_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_1_1_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_1_1_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_1_1_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_1_1_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_1_1_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_1_1_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_1_1_7_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_1_1_7_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[1]),
        .O(mem_reg_1_1_7_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_1_1_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_1_1_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_1_1_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_1_1_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_1_1_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_1_1_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_1_1_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_1_1_7_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_0
       (.ADDRARDADDR({mem_reg_2_0_0_i_3_n_0,mem_reg_2_0_0_i_4_n_0,mem_reg_2_0_0_i_5_n_0,mem_reg_2_0_0_i_6_n_0,mem_reg_2_0_0_i_7_n_0,mem_reg_2_0_0_i_8_n_0,mem_reg_2_0_0_i_9_n_0,mem_reg_2_0_0_i_10_n_0,mem_reg_2_0_0_i_11_n_0,mem_reg_2_0_0_i_12_n_0,mem_reg_2_0_0_i_13_n_0,mem_reg_2_0_0_i_14_n_0,mem_reg_2_0_0_i_15_n_0,mem_reg_2_0_0_i_16_n_0,mem_reg_2_0_0_i_17_n_0,mem_reg_2_0_0_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_0_n_0),
        .CASCADEOUTB(mem_reg_2_0_0_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_0_i_1_n_0),
        .ENBWREN(mem_reg_2_0_0_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_0_i_19_n_0,mem_reg_2_0_0_i_19_n_0,mem_reg_2_0_0_i_19_n_0,mem_reg_2_0_0_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_0_0_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_0_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_1
       (.ADDRARDADDR({mem_reg_2_0_1_i_3_n_0,mem_reg_2_0_1_i_4_n_0,mem_reg_2_0_1_i_5_n_0,mem_reg_2_0_1_i_6_n_0,mem_reg_2_0_1_i_7_n_0,mem_reg_2_0_1_i_8_n_0,mem_reg_2_0_1_i_9_n_0,mem_reg_2_0_1_i_10_n_0,mem_reg_2_0_1_i_11_n_0,mem_reg_2_0_1_i_12_n_0,mem_reg_2_0_1_i_13_n_0,mem_reg_2_0_1_i_14_n_0,mem_reg_2_0_1_i_15_n_0,mem_reg_2_0_1_i_16_n_0,mem_reg_2_0_1_i_17_n_0,mem_reg_2_0_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_1_n_0),
        .CASCADEOUTB(mem_reg_2_0_1_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[17]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_1_i_1_n_0),
        .ENBWREN(mem_reg_2_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_1_i_19_n_0,mem_reg_2_0_1_i_19_n_0,mem_reg_2_0_1_i_19_n_0,mem_reg_2_0_1_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_0_1_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_2
       (.ADDRARDADDR({mem_reg_2_0_2_i_3_n_0,mem_reg_2_0_2_i_4_n_0,mem_reg_2_0_2_i_5_n_0,mem_reg_2_0_2_i_6_n_0,mem_reg_2_0_2_i_7_n_0,mem_reg_2_0_2_i_8_n_0,mem_reg_2_0_2_i_9_n_0,mem_reg_2_0_2_i_10_n_0,mem_reg_2_0_2_i_11_n_0,mem_reg_2_0_2_i_12_n_0,mem_reg_2_0_2_i_13_n_0,mem_reg_2_0_2_i_14_n_0,mem_reg_2_0_2_i_15_n_0,mem_reg_2_0_2_i_16_n_0,mem_reg_2_0_2_i_17_n_0,mem_reg_2_0_2_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_2_n_0),
        .CASCADEOUTB(mem_reg_2_0_2_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_2_i_1_n_0),
        .ENBWREN(mem_reg_2_0_2_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_2_SBITERR_UNCONNECTED),
        .WEA({int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_2_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_0_2_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(int_code_ram_be1[2]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_3
       (.ADDRARDADDR({mem_reg_2_0_3_i_3_n_0,mem_reg_2_0_3_i_4_n_0,mem_reg_2_0_3_i_5_n_0,mem_reg_2_0_3_i_6_n_0,mem_reg_2_0_3_i_7_n_0,mem_reg_2_0_3_i_8_n_0,mem_reg_2_0_3_i_9_n_0,mem_reg_2_0_3_i_10_n_0,mem_reg_2_0_3_i_11_n_0,mem_reg_2_0_3_i_12_n_0,mem_reg_2_0_3_i_13_n_0,mem_reg_2_0_3_i_14_n_0,mem_reg_2_0_3_i_15_n_0,mem_reg_2_0_3_i_16_n_0,mem_reg_2_0_3_i_17_n_0,mem_reg_2_0_3_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_3_n_0),
        .CASCADEOUTB(mem_reg_2_0_3_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[19]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_3_i_1_n_0),
        .ENBWREN(mem_reg_2_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_3_SBITERR_UNCONNECTED),
        .WEA({int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_3_i_18_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_4
       (.ADDRARDADDR({mem_reg_2_0_4_i_3_n_0,mem_reg_2_0_4_i_4_n_0,mem_reg_2_0_4_i_5_n_0,mem_reg_2_0_4_i_6_n_0,mem_reg_2_0_4_i_7_n_0,mem_reg_2_0_4_i_8_n_0,mem_reg_2_0_4_i_9_n_0,mem_reg_2_0_4_i_10_n_0,mem_reg_2_0_4_i_11_n_0,mem_reg_2_0_4_i_12_n_0,mem_reg_2_0_4_i_13_n_0,mem_reg_2_0_4_i_14_n_0,mem_reg_2_0_4_i_15_n_0,mem_reg_2_0_4_i_16_n_0,mem_reg_2_0_4_i_17_n_0,mem_reg_2_0_4_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_4_n_0),
        .CASCADEOUTB(mem_reg_2_0_4_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_4_i_1_n_0),
        .ENBWREN(mem_reg_2_0_4_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_4_i_19_n_0,mem_reg_2_0_4_i_19_n_0,mem_reg_2_0_4_i_19_n_0,mem_reg_2_0_4_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_4_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_0_4_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_4_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_5
       (.ADDRARDADDR({mem_reg_2_0_5_i_3_n_0,mem_reg_2_0_5_i_4_n_0,mem_reg_2_0_5_i_5_n_0,mem_reg_2_0_5_i_6_n_0,mem_reg_2_0_5_i_7_n_0,mem_reg_2_0_5_i_8_n_0,mem_reg_2_0_5_i_9_n_0,mem_reg_2_0_5_i_10_n_0,mem_reg_2_0_5_i_11_n_0,mem_reg_2_0_5_i_12_n_0,mem_reg_2_0_5_i_13_n_0,mem_reg_2_0_5_i_14_n_0,mem_reg_2_0_5_i_15_n_0,mem_reg_2_0_5_i_16_n_0,mem_reg_2_0_5_i_17_n_0,mem_reg_2_0_5_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_5_n_0),
        .CASCADEOUTB(mem_reg_2_0_5_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[21]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_5_i_1_n_0),
        .ENBWREN(mem_reg_2_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_5_i_19_n_0,mem_reg_2_0_5_i_19_n_0,mem_reg_2_0_5_i_19_n_0,mem_reg_2_0_5_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_5_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_0_5_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_5_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_6
       (.ADDRARDADDR({mem_reg_2_0_6_i_3_n_0,mem_reg_2_0_6_i_4_n_0,mem_reg_2_0_6_i_5_n_0,mem_reg_2_0_6_i_6_n_0,mem_reg_2_0_6_i_7_n_0,mem_reg_2_0_6_i_8_n_0,mem_reg_2_0_6_i_9_n_0,mem_reg_2_0_6_i_10_n_0,mem_reg_2_0_6_i_11_n_0,mem_reg_2_0_6_i_12_n_0,mem_reg_2_0_6_i_13_n_0,mem_reg_2_0_6_i_14_n_0,mem_reg_2_0_6_i_15_n_0,mem_reg_2_0_6_i_16_n_0,mem_reg_2_0_6_i_17_n_0,mem_reg_2_0_6_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_6_n_0),
        .CASCADEOUTB(mem_reg_2_0_6_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_6_i_1_n_0),
        .ENBWREN(mem_reg_2_0_6_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_6_i_19_n_0,mem_reg_2_0_6_i_19_n_0,mem_reg_2_0_6_i_19_n_0,mem_reg_2_0_6_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_6_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_0_6_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_6_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_0_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_0_7
       (.ADDRARDADDR({mem_reg_2_0_7_i_3_n_0,mem_reg_2_0_7_i_4_n_0,mem_reg_2_0_7_i_5_n_0,mem_reg_2_0_7_i_6_n_0,mem_reg_2_0_7_i_7_n_0,mem_reg_2_0_7_i_8_n_0,mem_reg_2_0_7_i_9_n_0,mem_reg_2_0_7_i_10_n_0,mem_reg_2_0_7_i_11_n_0,mem_reg_2_0_7_i_12_n_0,mem_reg_2_0_7_i_13_n_0,mem_reg_2_0_7_i_14_n_0,mem_reg_2_0_7_i_15_n_0,mem_reg_2_0_7_i_16_n_0,mem_reg_2_0_7_i_17_n_0,mem_reg_2_0_7_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_2_0_7_n_0),
        .CASCADEOUTB(mem_reg_2_0_7_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[23]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_2_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_2_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_2_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_0_7_i_1_n_0),
        .ENBWREN(mem_reg_2_0_7_0),
        .INJECTDBITERR(NLW_mem_reg_2_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_0_7_i_19_n_0,mem_reg_2_0_7_i_19_n_0,mem_reg_2_0_7_i_19_n_0,mem_reg_2_0_7_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_0_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_0_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_0_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_0_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_0_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_0_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_0_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_0_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_0_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_0_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_0_7_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_0_7_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_0_7_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_0_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_0_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_0_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_0_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_0_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_0_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_0_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_0_7_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "16" *) 
  (* ram_slice_end = "16" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_0
       (.ADDRARDADDR({mem_reg_2_1_0_i_3_n_0,mem_reg_2_1_0_i_4_n_0,mem_reg_2_1_0_i_5_n_0,mem_reg_2_1_0_i_6_n_0,mem_reg_2_1_0_i_7_n_0,mem_reg_2_1_0_i_8_n_0,mem_reg_2_1_0_i_9_n_0,mem_reg_2_1_0_i_10_n_0,mem_reg_2_1_0_i_11_n_0,mem_reg_2_1_0_i_12_n_0,mem_reg_2_1_0_i_13_n_0,mem_reg_2_1_0_i_14_n_0,mem_reg_2_1_0_i_15_n_0,mem_reg_2_1_0_i_16_n_0,mem_reg_2_1_0_i_17_n_0,mem_reg_2_1_0_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_2_0_0_n_0),
        .CASCADEINB(mem_reg_2_0_0_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[16]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_0_DOADO_UNCONNECTED[31:1],int_code_ram_q1[16]}),
        .DOBDO({NLW_mem_reg_2_1_0_DOBDO_UNCONNECTED[31:1],code_ram_q0[16]}),
        .DOPADOP(NLW_mem_reg_2_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_0_i_1_n_0),
        .ENBWREN(mem_reg_2_1_0_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_1_0_i_19_n_0,mem_reg_2_1_0_i_19_n_0,mem_reg_2_1_0_i_19_n_0,mem_reg_2_1_0_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_1_0_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_1_0_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "17" *) 
  (* ram_slice_end = "17" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_1
       (.ADDRARDADDR({mem_reg_2_1_1_i_3_n_0,mem_reg_2_1_1_i_4_n_0,mem_reg_2_1_1_i_5_n_0,mem_reg_2_1_1_i_6_n_0,mem_reg_2_1_1_i_7_n_0,mem_reg_2_1_1_i_8_n_0,mem_reg_2_1_1_i_9_n_0,mem_reg_2_1_1_i_10_n_0,mem_reg_2_1_1_i_11_n_0,mem_reg_2_1_1_i_12_n_0,mem_reg_2_1_1_i_13_n_0,mem_reg_2_1_1_i_14_n_0,mem_reg_2_1_1_i_15_n_0,mem_reg_2_1_1_i_16_n_0,mem_reg_2_1_1_i_17_n_0,mem_reg_2_1_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_2_0_1_n_0),
        .CASCADEINB(mem_reg_2_0_1_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[17]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_1_DOADO_UNCONNECTED[31:1],int_code_ram_q1[17]}),
        .DOBDO({NLW_mem_reg_2_1_1_DOBDO_UNCONNECTED[31:1],code_ram_q0[17]}),
        .DOPADOP(NLW_mem_reg_2_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_1_i_1_n_0),
        .ENBWREN(mem_reg_2_1_1_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_1_1_i_19_n_0,mem_reg_2_1_1_i_19_n_0,mem_reg_2_1_1_i_19_n_0,mem_reg_2_1_1_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_1_1_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_1_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "18" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_2
       (.ADDRARDADDR({mem_reg_2_1_2_i_3_n_0,mem_reg_2_1_2_i_4_n_0,mem_reg_2_1_2_i_5_n_0,mem_reg_2_1_2_i_6_n_0,mem_reg_2_1_2_i_7_n_0,mem_reg_2_1_2_i_8_n_0,mem_reg_2_1_2_i_9_n_0,mem_reg_2_1_2_i_10_n_0,mem_reg_2_1_2_i_11_n_0,mem_reg_2_1_2_i_12_n_0,mem_reg_2_1_2_i_13_n_0,mem_reg_2_1_2_i_14_n_0,mem_reg_2_1_2_i_15_n_0,mem_reg_2_1_2_i_16_n_0,mem_reg_2_1_2_i_17_n_0,mem_reg_2_1_2_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_2_0_2_n_0),
        .CASCADEINB(mem_reg_2_0_2_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[18]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_2_DOADO_UNCONNECTED[31:1],int_code_ram_q1[18]}),
        .DOBDO({NLW_mem_reg_2_1_2_DOBDO_UNCONNECTED[31:1],code_ram_q0[18]}),
        .DOPADOP(NLW_mem_reg_2_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_2_i_1_n_0),
        .ENBWREN(mem_reg_2_1_2_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_2_SBITERR_UNCONNECTED),
        .WEA({int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_2_i_18_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "19" *) 
  (* ram_slice_end = "19" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_3
       (.ADDRARDADDR({mem_reg_2_1_3_i_3_n_0,mem_reg_2_1_3_i_4_n_0,mem_reg_2_1_3_i_5_n_0,mem_reg_2_1_3_i_6_n_0,mem_reg_2_1_3_i_7_n_0,mem_reg_2_1_3_i_8_n_0,mem_reg_2_1_3_i_9_n_0,mem_reg_2_1_3_i_10_n_0,mem_reg_2_1_3_i_11_n_0,mem_reg_2_1_3_i_12_n_0,mem_reg_2_1_3_i_13_n_0,mem_reg_2_1_3_i_14_n_0,mem_reg_2_1_3_i_15_n_0,mem_reg_2_1_3_i_16_n_0,mem_reg_2_1_3_i_17_n_0,mem_reg_2_1_3_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_0_1_0_0),
        .CASCADEINA(mem_reg_2_0_3_n_0),
        .CASCADEINB(mem_reg_2_0_3_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[19]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_3_DOADO_UNCONNECTED[31:1],int_code_ram_q1[19]}),
        .DOBDO({NLW_mem_reg_2_1_3_DOBDO_UNCONNECTED[31:1],code_ram_q0[19]}),
        .DOPADOP(NLW_mem_reg_2_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_3_i_1_n_0),
        .ENBWREN(mem_reg_2_1_3_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_3_SBITERR_UNCONNECTED),
        .WEA({int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2],int_code_ram_be1[2]}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_3_i_18_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "20" *) 
  (* ram_slice_end = "20" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_4
       (.ADDRARDADDR({mem_reg_2_1_4_i_3_n_0,mem_reg_2_1_4_i_4_n_0,mem_reg_2_1_4_i_5_n_0,mem_reg_2_1_4_i_6_n_0,mem_reg_2_1_4_i_7_n_0,mem_reg_2_1_4_i_8_n_0,mem_reg_2_1_4_i_9_n_0,mem_reg_2_1_4_i_10_n_0,mem_reg_2_1_4_i_11_n_0,mem_reg_2_1_4_i_12_n_0,mem_reg_2_1_4_i_13_n_0,mem_reg_2_1_4_i_14_n_0,mem_reg_2_1_4_i_15_n_0,mem_reg_2_1_4_i_16_n_0,mem_reg_2_1_4_i_17_n_0,mem_reg_2_1_4_i_18_n_0}),
        .ADDRBWRADDR(ADDRBWRADDR),
        .CASCADEINA(mem_reg_2_0_4_n_0),
        .CASCADEINB(mem_reg_2_0_4_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[20]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_4_DOADO_UNCONNECTED[31:1],int_code_ram_q1[20]}),
        .DOBDO({NLW_mem_reg_2_1_4_DOBDO_UNCONNECTED[31:1],code_ram_q0[20]}),
        .DOPADOP(NLW_mem_reg_2_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_4_i_1_n_0),
        .ENBWREN(mem_reg_2_1_4_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_1_4_i_19_n_0,mem_reg_2_1_4_i_19_n_0,mem_reg_2_1_4_i_19_n_0,mem_reg_2_1_4_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_4_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_1_4_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_1_4_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "21" *) 
  (* ram_slice_end = "21" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_5
       (.ADDRARDADDR({mem_reg_2_1_5_i_3_n_0,mem_reg_2_1_5_i_4_n_0,mem_reg_2_1_5_i_5_n_0,mem_reg_2_1_5_i_6_n_0,mem_reg_2_1_5_i_7_n_0,mem_reg_2_1_5_i_8_n_0,mem_reg_2_1_5_i_9_n_0,mem_reg_2_1_5_i_10_n_0,mem_reg_2_1_5_i_11_n_0,mem_reg_2_1_5_i_12_n_0,mem_reg_2_1_5_i_13_n_0,mem_reg_2_1_5_i_14_n_0,mem_reg_2_1_5_i_15_n_0,mem_reg_2_1_5_i_16_n_0,mem_reg_2_1_5_i_17_n_0,mem_reg_2_1_5_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_2_0_5_n_0),
        .CASCADEINB(mem_reg_2_0_5_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[21]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_5_DOADO_UNCONNECTED[31:1],int_code_ram_q1[21]}),
        .DOBDO({NLW_mem_reg_2_1_5_DOBDO_UNCONNECTED[31:1],code_ram_q0[21]}),
        .DOPADOP(NLW_mem_reg_2_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_5_i_1_n_0),
        .ENBWREN(mem_reg_2_1_5_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_1_5_i_19_n_0,mem_reg_2_1_5_i_19_n_0,mem_reg_2_1_5_i_19_n_0,mem_reg_2_1_5_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_5_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_1_5_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_1_5_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "22" *) 
  (* ram_slice_end = "22" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_6
       (.ADDRARDADDR({mem_reg_2_1_6_i_3_n_0,mem_reg_2_1_6_i_4_n_0,mem_reg_2_1_6_i_5_n_0,mem_reg_2_1_6_i_6_n_0,mem_reg_2_1_6_i_7_n_0,mem_reg_2_1_6_i_8_n_0,mem_reg_2_1_6_i_9_n_0,mem_reg_2_1_6_i_10_n_0,mem_reg_2_1_6_i_11_n_0,mem_reg_2_1_6_i_12_n_0,mem_reg_2_1_6_i_13_n_0,mem_reg_2_1_6_i_14_n_0,mem_reg_2_1_6_i_15_n_0,mem_reg_2_1_6_i_16_n_0,mem_reg_2_1_6_i_17_n_0,mem_reg_2_1_6_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_2_0_6_n_0),
        .CASCADEINB(mem_reg_2_0_6_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[22]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_6_DOADO_UNCONNECTED[31:1],int_code_ram_q1[22]}),
        .DOBDO({NLW_mem_reg_2_1_6_DOBDO_UNCONNECTED[31:1],code_ram_q0[22]}),
        .DOPADOP(NLW_mem_reg_2_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_6_i_1_n_0),
        .ENBWREN(mem_reg_2_1_6_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_1_6_i_19_n_0,mem_reg_2_1_6_i_19_n_0,mem_reg_2_1_6_i_19_n_0,mem_reg_2_1_6_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_6_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_1_6_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_1_6_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_2_1_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "23" *) 
  (* ram_slice_end = "23" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_2_1_7
       (.ADDRARDADDR({mem_reg_2_1_7_i_3_n_0,mem_reg_2_1_7_i_4_n_0,mem_reg_2_1_7_i_5_n_0,mem_reg_2_1_7_i_6_n_0,mem_reg_2_1_7_i_7_n_0,mem_reg_2_1_7_i_8_n_0,mem_reg_2_1_7_i_9_n_0,mem_reg_2_1_7_i_10_n_0,mem_reg_2_1_7_i_11_n_0,mem_reg_2_1_7_i_12_n_0,mem_reg_2_1_7_i_13_n_0,mem_reg_2_1_7_i_14_n_0,mem_reg_2_1_7_i_15_n_0,mem_reg_2_1_7_i_16_n_0,mem_reg_2_1_7_i_17_n_0,mem_reg_2_1_7_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_2_0_7_n_0),
        .CASCADEINB(mem_reg_2_0_7_n_1),
        .CASCADEOUTA(NLW_mem_reg_2_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_2_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_2_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_control_WDATA[23]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_2_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_2_1_7_DOADO_UNCONNECTED[31:1],int_code_ram_q1[23]}),
        .DOBDO({NLW_mem_reg_2_1_7_DOBDO_UNCONNECTED[31:1],code_ram_q0[23]}),
        .DOPADOP(NLW_mem_reg_2_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_2_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_2_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_2_1_7_i_1_n_0),
        .ENBWREN(mem_reg_2_1_7_0),
        .INJECTDBITERR(NLW_mem_reg_2_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_2_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_2_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_2_1_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_2_1_7_i_19_n_0,mem_reg_2_1_7_i_19_n_0,mem_reg_2_1_7_i_19_n_0,mem_reg_2_1_7_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_2_1_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_2_1_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_2_1_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_2_1_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_2_1_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_2_1_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_2_1_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_2_1_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_2_1_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_2_1_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_2_1_7_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_2_1_7_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[2]),
        .O(mem_reg_2_1_7_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_2_1_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_2_1_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_2_1_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_2_1_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_2_1_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_2_1_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_2_1_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_2_1_7_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_0
       (.ADDRARDADDR({mem_reg_3_0_0_i_3_n_0,mem_reg_3_0_0_i_4_n_0,mem_reg_3_0_0_i_5_n_0,mem_reg_3_0_0_i_6_n_0,mem_reg_3_0_0_i_7_n_0,mem_reg_3_0_0_i_8_n_0,mem_reg_3_0_0_i_9_n_0,mem_reg_3_0_0_i_10_n_0,mem_reg_3_0_0_i_11_n_0,mem_reg_3_0_0_i_12_n_0,mem_reg_3_0_0_i_13_n_0,mem_reg_3_0_0_i_14_n_0,mem_reg_3_0_0_i_15_n_0,mem_reg_3_0_0_i_16_n_0,mem_reg_3_0_0_i_17_n_0,mem_reg_3_0_0_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_0_n_0),
        .CASCADEOUTB(mem_reg_3_0_0_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_0_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_0_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_0_i_1_n_0),
        .ENBWREN(mem_reg_3_0_0_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_0_i_20_n_0,mem_reg_3_0_0_i_20_n_0,mem_reg_3_0_0_i_20_n_0,mem_reg_3_0_0_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_0_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_0_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[24]),
        .O(p_1_in[24]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_0_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_0_i_20_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_0_i_21
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(int_code_ram_be1[3]));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_1
       (.ADDRARDADDR({mem_reg_3_0_1_i_3_n_0,mem_reg_3_0_1_i_4_n_0,mem_reg_3_0_1_i_5_n_0,mem_reg_3_0_1_i_6_n_0,mem_reg_3_0_1_i_7_n_0,mem_reg_3_0_1_i_8_n_0,mem_reg_3_0_1_i_9_n_0,mem_reg_3_0_1_i_10_n_0,mem_reg_3_0_1_i_11_n_0,mem_reg_3_0_1_i_12_n_0,mem_reg_3_0_1_i_13_n_0,mem_reg_3_0_1_i_14_n_0,mem_reg_3_0_1_i_15_n_0,mem_reg_3_0_1_i_16_n_0,mem_reg_3_0_1_i_17_n_0,mem_reg_3_0_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_1_n_0),
        .CASCADEOUTB(mem_reg_3_0_1_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[25]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_1_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_1_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_1_i_1_n_0),
        .ENBWREN(mem_reg_3_0_1_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_1_i_20_n_0,mem_reg_3_0_1_i_20_n_0,mem_reg_3_0_1_i_20_n_0,mem_reg_3_0_1_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_1_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_1_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[25]),
        .O(p_1_in[25]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_1_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_1_i_20_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_2
       (.ADDRARDADDR({mem_reg_3_0_2_i_3_n_0,mem_reg_3_0_2_i_4_n_0,mem_reg_3_0_2_i_5_n_0,mem_reg_3_0_2_i_6_n_0,mem_reg_3_0_2_i_7_n_0,mem_reg_3_0_2_i_8_n_0,mem_reg_3_0_2_i_9_n_0,mem_reg_3_0_2_i_10_n_0,mem_reg_3_0_2_i_11_n_0,mem_reg_3_0_2_i_12_n_0,mem_reg_3_0_2_i_13_n_0,mem_reg_3_0_2_i_14_n_0,mem_reg_3_0_2_i_15_n_0,mem_reg_3_0_2_i_16_n_0,mem_reg_3_0_2_i_17_n_0,mem_reg_3_0_2_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_2_n_0),
        .CASCADEOUTB(mem_reg_3_0_2_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[26]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_2_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_2_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_2_i_1_n_0),
        .ENBWREN(mem_reg_3_0_2_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_2_i_20_n_0,mem_reg_3_0_2_i_20_n_0,mem_reg_3_0_2_i_20_n_0,mem_reg_3_0_2_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_2_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_2_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[26]),
        .O(p_1_in[26]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_2_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_2_i_20_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_3
       (.ADDRARDADDR({mem_reg_3_0_3_i_3_n_0,mem_reg_3_0_3_i_4_n_0,mem_reg_3_0_3_i_5_n_0,mem_reg_3_0_3_i_6_n_0,mem_reg_3_0_3_i_7_n_0,mem_reg_3_0_3_i_8_n_0,mem_reg_3_0_3_i_9_n_0,mem_reg_3_0_3_i_10_n_0,mem_reg_3_0_3_i_11_n_0,mem_reg_3_0_3_i_12_n_0,mem_reg_3_0_3_i_13_n_0,mem_reg_3_0_3_i_14_n_0,mem_reg_3_0_3_i_15_n_0,mem_reg_3_0_3_i_16_n_0,mem_reg_3_0_3_i_17_n_0,mem_reg_3_0_3_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_3_n_0),
        .CASCADEOUTB(mem_reg_3_0_3_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[27]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_3_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_3_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_3_i_1_n_0),
        .ENBWREN(mem_reg_3_0_3_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_3_i_20_n_0,mem_reg_3_0_3_i_20_n_0,mem_reg_3_0_3_i_20_n_0,mem_reg_3_0_3_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_3_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_3_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[27]),
        .O(p_1_in[27]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_3_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_3_i_20_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_4
       (.ADDRARDADDR({mem_reg_3_0_4_i_3_n_0,mem_reg_3_0_4_i_4_n_0,mem_reg_3_0_4_i_5_n_0,mem_reg_3_0_4_i_6_n_0,mem_reg_3_0_4_i_7_n_0,mem_reg_3_0_4_i_8_n_0,mem_reg_3_0_4_i_9_n_0,mem_reg_3_0_4_i_10_n_0,mem_reg_3_0_4_i_11_n_0,mem_reg_3_0_4_i_12_n_0,mem_reg_3_0_4_i_13_n_0,mem_reg_3_0_4_i_14_n_0,mem_reg_3_0_4_i_15_n_0,mem_reg_3_0_4_i_16_n_0,mem_reg_3_0_4_i_17_n_0,mem_reg_3_0_4_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_4_n_0),
        .CASCADEOUTB(mem_reg_3_0_4_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[28]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_4_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_4_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_4_i_1_n_0),
        .ENBWREN(mem_reg_3_0_4_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_4_i_20_n_0,mem_reg_3_0_4_i_20_n_0,mem_reg_3_0_4_i_20_n_0,mem_reg_3_0_4_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_4_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_4_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[28]),
        .O(p_1_in[28]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_4_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_4_i_20_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_5
       (.ADDRARDADDR({mem_reg_3_0_5_i_3_n_0,mem_reg_3_0_5_i_4_n_0,mem_reg_3_0_5_i_5_n_0,mem_reg_3_0_5_i_6_n_0,mem_reg_3_0_5_i_7_n_0,mem_reg_3_0_5_i_8_n_0,mem_reg_3_0_5_i_9_n_0,mem_reg_3_0_5_i_10_n_0,mem_reg_3_0_5_i_11_n_0,mem_reg_3_0_5_i_12_n_0,mem_reg_3_0_5_i_13_n_0,mem_reg_3_0_5_i_14_n_0,mem_reg_3_0_5_i_15_n_0,mem_reg_3_0_5_i_16_n_0,mem_reg_3_0_5_i_17_n_0,mem_reg_3_0_5_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_5_n_0),
        .CASCADEOUTB(mem_reg_3_0_5_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[29]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_5_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_5_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_5_i_1_n_0),
        .ENBWREN(mem_reg_3_0_5_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_5_i_20_n_0,mem_reg_3_0_5_i_20_n_0,mem_reg_3_0_5_i_20_n_0,mem_reg_3_0_5_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_5_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_5_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[29]),
        .O(p_1_in[29]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_5_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_5_i_20_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_6
       (.ADDRARDADDR({mem_reg_3_0_6_i_3_n_0,mem_reg_3_0_6_i_4_n_0,mem_reg_3_0_6_i_5_n_0,mem_reg_3_0_6_i_6_n_0,mem_reg_3_0_6_i_7_n_0,mem_reg_3_0_6_i_8_n_0,mem_reg_3_0_6_i_9_n_0,mem_reg_3_0_6_i_10_n_0,mem_reg_3_0_6_i_11_n_0,mem_reg_3_0_6_i_12_n_0,mem_reg_3_0_6_i_13_n_0,mem_reg_3_0_6_i_14_n_0,mem_reg_3_0_6_i_15_n_0,mem_reg_3_0_6_i_16_n_0,mem_reg_3_0_6_i_17_n_0,mem_reg_3_0_6_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_6_n_0),
        .CASCADEOUTB(mem_reg_3_0_6_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[30]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_6_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_6_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_6_i_1_n_0),
        .ENBWREN(mem_reg_3_0_6_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_6_i_20_n_0,mem_reg_3_0_6_i_20_n_0,mem_reg_3_0_6_i_20_n_0,mem_reg_3_0_6_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_6_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_6_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[30]),
        .O(p_1_in[30]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_6_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_6_i_20_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_0_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "32767" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("LOWER"),
    .RAM_EXTENSION_B("LOWER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_0_7
       (.ADDRARDADDR({mem_reg_3_0_7_i_3_n_0,mem_reg_3_0_7_i_4_n_0,mem_reg_3_0_7_i_5_n_0,mem_reg_3_0_7_i_6_n_0,mem_reg_3_0_7_i_7_n_0,mem_reg_3_0_7_i_8_n_0,mem_reg_3_0_7_i_9_n_0,mem_reg_3_0_7_i_10_n_0,mem_reg_3_0_7_i_11_n_0,mem_reg_3_0_7_i_12_n_0,mem_reg_3_0_7_i_13_n_0,mem_reg_3_0_7_i_14_n_0,mem_reg_3_0_7_i_15_n_0,mem_reg_3_0_7_i_16_n_0,mem_reg_3_0_7_i_17_n_0,mem_reg_3_0_7_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b1),
        .CASCADEOUTA(mem_reg_3_0_7_n_0),
        .CASCADEOUTB(mem_reg_3_0_7_n_1),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_0_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[31]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_0_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO(NLW_mem_reg_3_0_7_DOADO_UNCONNECTED[31:0]),
        .DOBDO(NLW_mem_reg_3_0_7_DOBDO_UNCONNECTED[31:0]),
        .DOPADOP(NLW_mem_reg_3_0_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_0_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_0_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_0_7_i_1_n_0),
        .ENBWREN(mem_reg_3_0_7_0),
        .INJECTDBITERR(NLW_mem_reg_3_0_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_0_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_0_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_0_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_0_7_i_20_n_0,mem_reg_3_0_7_i_20_n_0,mem_reg_3_0_7_i_20_n_0,mem_reg_3_0_7_i_20_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_0_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_0_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_0_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_0_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_0_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_0_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_0_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_0_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_0_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_0_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_0_7_i_18_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_7_i_19
       (.I0(int_code_ram_be1[3]),
        .I1(s_axi_control_WDATA[31]),
        .O(p_1_in[31]));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_0_7_i_20
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_0_7_i_20_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_0_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_0_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_0_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_0_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_0_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_0_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_0_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_0_7_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_0" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "24" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_0
       (.ADDRARDADDR({mem_reg_3_1_0_i_3_n_0,mem_reg_3_1_0_i_4_n_0,mem_reg_3_1_0_i_5_n_0,mem_reg_3_1_0_i_6_n_0,mem_reg_3_1_0_i_7_n_0,mem_reg_3_1_0_i_8_n_0,mem_reg_3_1_0_i_9_n_0,mem_reg_3_1_0_i_10_n_0,mem_reg_3_1_0_i_11_n_0,mem_reg_3_1_0_i_12_n_0,mem_reg_3_1_0_i_13_n_0,mem_reg_3_1_0_i_14_n_0,mem_reg_3_1_0_i_15_n_0,mem_reg_3_1_0_i_16_n_0,mem_reg_3_1_0_i_17_n_0,mem_reg_3_1_0_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_0_n_0),
        .CASCADEINB(mem_reg_3_0_0_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_0_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_0_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_0_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[24]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_0_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_0_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_0_DOADO_UNCONNECTED[31:1],int_code_ram_q1[24]}),
        .DOBDO({NLW_mem_reg_3_1_0_DOBDO_UNCONNECTED[31:1],code_ram_q0[24]}),
        .DOPADOP(NLW_mem_reg_3_1_0_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_0_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_0_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_0_i_1_n_0),
        .ENBWREN(mem_reg_3_1_0_0),
        .INJECTDBITERR(NLW_mem_reg_3_1_0_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_0_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_0_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_0_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_0_i_19_n_0,mem_reg_3_1_0_i_19_n_0,mem_reg_3_1_0_i_19_n_0,mem_reg_3_1_0_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_0_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_0_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_0_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_0_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_0_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_0_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_0_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_0_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_0_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_0_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_0_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_0_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_0_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_0_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_0_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_1" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "25" *) 
  (* ram_slice_end = "25" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_1
       (.ADDRARDADDR({mem_reg_3_1_1_i_3_n_0,mem_reg_3_1_1_i_4_n_0,mem_reg_3_1_1_i_5_n_0,mem_reg_3_1_1_i_6_n_0,mem_reg_3_1_1_i_7_n_0,mem_reg_3_1_1_i_8_n_0,mem_reg_3_1_1_i_9_n_0,mem_reg_3_1_1_i_10_n_0,mem_reg_3_1_1_i_11_n_0,mem_reg_3_1_1_i_12_n_0,mem_reg_3_1_1_i_13_n_0,mem_reg_3_1_1_i_14_n_0,mem_reg_3_1_1_i_15_n_0,mem_reg_3_1_1_i_16_n_0,mem_reg_3_1_1_i_17_n_0,mem_reg_3_1_1_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_1_n_0),
        .CASCADEINB(mem_reg_3_0_1_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_1_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_1_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_1_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[25]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_1_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_1_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_1_DOADO_UNCONNECTED[31:1],int_code_ram_q1[25]}),
        .DOBDO({NLW_mem_reg_3_1_1_DOBDO_UNCONNECTED[31:1],code_ram_q0[25]}),
        .DOPADOP(NLW_mem_reg_3_1_1_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_1_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_1_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_1_i_1_n_0),
        .ENBWREN(mem_reg_3_1_1_1),
        .INJECTDBITERR(NLW_mem_reg_3_1_1_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_1_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_1_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_1_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_1_i_19_n_0,mem_reg_3_1_1_i_19_n_0,mem_reg_3_1_1_i_19_n_0,mem_reg_3_1_1_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_1_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_1_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_1_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_1_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_1_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_1_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_1_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_1_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_1_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_1_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_1_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_1_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_1_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_1_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_1_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_1_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_1_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_1_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_1_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_1_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_1_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_2" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "26" *) 
  (* ram_slice_end = "26" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_2
       (.ADDRARDADDR({mem_reg_3_1_2_i_3_n_0,mem_reg_3_1_2_i_4_n_0,mem_reg_3_1_2_i_5_n_0,mem_reg_3_1_2_i_6_n_0,mem_reg_3_1_2_i_7_n_0,mem_reg_3_1_2_i_8_n_0,mem_reg_3_1_2_i_9_n_0,mem_reg_3_1_2_i_10_n_0,mem_reg_3_1_2_i_11_n_0,mem_reg_3_1_2_i_12_n_0,mem_reg_3_1_2_i_13_n_0,mem_reg_3_1_2_i_14_n_0,mem_reg_3_1_2_i_15_n_0,mem_reg_3_1_2_i_16_n_0,mem_reg_3_1_2_i_17_n_0,mem_reg_3_1_2_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_2_n_0),
        .CASCADEINB(mem_reg_3_0_2_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_2_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_2_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_2_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[26]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_2_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_2_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_2_DOADO_UNCONNECTED[31:1],int_code_ram_q1[26]}),
        .DOBDO({NLW_mem_reg_3_1_2_DOBDO_UNCONNECTED[31:1],code_ram_q0[26]}),
        .DOPADOP(NLW_mem_reg_3_1_2_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_2_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_2_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_2_i_1_n_0),
        .ENBWREN(mem_reg_3_1_2_1),
        .INJECTDBITERR(NLW_mem_reg_3_1_2_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_2_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_2_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_2_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_2_i_19_n_0,mem_reg_3_1_2_i_19_n_0,mem_reg_3_1_2_i_19_n_0,mem_reg_3_1_2_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_2_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_2_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_2_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_2_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_2_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_2_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_2_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_2_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_2_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_2_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_2_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_2_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_2_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_2_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_2_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_2_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_2_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_2_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_2_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_2_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_2_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_3" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "27" *) 
  (* ram_slice_end = "27" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_3
       (.ADDRARDADDR({mem_reg_3_1_3_i_3_n_0,mem_reg_3_1_3_i_4_n_0,mem_reg_3_1_3_i_5_n_0,mem_reg_3_1_3_i_6_n_0,mem_reg_3_1_3_i_7_n_0,mem_reg_3_1_3_i_8_n_0,mem_reg_3_1_3_i_9_n_0,mem_reg_3_1_3_i_10_n_0,mem_reg_3_1_3_i_11_n_0,mem_reg_3_1_3_i_12_n_0,mem_reg_3_1_3_i_13_n_0,mem_reg_3_1_3_i_14_n_0,mem_reg_3_1_3_i_15_n_0,mem_reg_3_1_3_i_16_n_0,mem_reg_3_1_3_i_17_n_0,mem_reg_3_1_3_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_3_n_0),
        .CASCADEINB(mem_reg_3_0_3_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_3_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_3_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_3_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[27]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_3_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_3_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_3_DOADO_UNCONNECTED[31:1],int_code_ram_q1[27]}),
        .DOBDO({NLW_mem_reg_3_1_3_DOBDO_UNCONNECTED[31:1],code_ram_q0[27]}),
        .DOPADOP(NLW_mem_reg_3_1_3_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_3_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_3_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_3_i_1_n_0),
        .ENBWREN(mem_reg_3_1_3_1),
        .INJECTDBITERR(NLW_mem_reg_3_1_3_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_3_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_3_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_3_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_3_i_19_n_0,mem_reg_3_1_3_i_19_n_0,mem_reg_3_1_3_i_19_n_0,mem_reg_3_1_3_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_3_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_3_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_3_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_3_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_3_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_3_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_3_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_3_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_3_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_3_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_3_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_3_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_3_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_3_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_3_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_3_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_3_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_3_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_3_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_3_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_3_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_4" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "28" *) 
  (* ram_slice_end = "28" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_4
       (.ADDRARDADDR({mem_reg_3_1_4_i_3_n_0,mem_reg_3_1_4_i_4_n_0,mem_reg_3_1_4_i_5_n_0,mem_reg_3_1_4_i_6_n_0,mem_reg_3_1_4_i_7_n_0,mem_reg_3_1_4_i_8_n_0,mem_reg_3_1_4_i_9_n_0,mem_reg_3_1_4_i_10_n_0,mem_reg_3_1_4_i_11_n_0,mem_reg_3_1_4_i_12_n_0,mem_reg_3_1_4_i_13_n_0,mem_reg_3_1_4_i_14_n_0,mem_reg_3_1_4_i_15_n_0,mem_reg_3_1_4_i_16_n_0,mem_reg_3_1_4_i_17_n_0,mem_reg_3_1_4_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_4_n_0),
        .CASCADEINB(mem_reg_3_0_4_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_4_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_4_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_4_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[28]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_4_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_4_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_4_DOADO_UNCONNECTED[31:1],int_code_ram_q1[28]}),
        .DOBDO({NLW_mem_reg_3_1_4_DOBDO_UNCONNECTED[31:1],code_ram_q0[28]}),
        .DOPADOP(NLW_mem_reg_3_1_4_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_4_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_4_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_4_i_1_n_0),
        .ENBWREN(mem_reg_3_1_4_1),
        .INJECTDBITERR(NLW_mem_reg_3_1_4_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_4_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_4_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_4_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_4_i_19_n_0,mem_reg_3_1_4_i_19_n_0,mem_reg_3_1_4_i_19_n_0,mem_reg_3_1_4_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_4_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_4_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_4_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_4_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_4_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_4_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_4_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_4_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_4_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_4_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_4_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_4_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_4_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_4_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_4_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_4_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_4_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_4_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_4_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_4_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_4_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_5" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "29" *) 
  (* ram_slice_end = "29" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_5
       (.ADDRARDADDR({mem_reg_3_1_5_i_3_n_0,mem_reg_3_1_5_i_4_n_0,mem_reg_3_1_5_i_5_n_0,mem_reg_3_1_5_i_6_n_0,mem_reg_3_1_5_i_7_n_0,mem_reg_3_1_5_i_8_n_0,mem_reg_3_1_5_i_9_n_0,mem_reg_3_1_5_i_10_n_0,mem_reg_3_1_5_i_11_n_0,mem_reg_3_1_5_i_12_n_0,mem_reg_3_1_5_i_13_n_0,mem_reg_3_1_5_i_14_n_0,mem_reg_3_1_5_i_15_n_0,mem_reg_3_1_5_i_16_n_0,mem_reg_3_1_5_i_17_n_0,mem_reg_3_1_5_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_5_n_0),
        .CASCADEINB(mem_reg_3_0_5_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_5_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_5_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_5_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[29]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_5_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_5_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_5_DOADO_UNCONNECTED[31:1],int_code_ram_q1[29]}),
        .DOBDO({NLW_mem_reg_3_1_5_DOBDO_UNCONNECTED[31:1],code_ram_q0[29]}),
        .DOPADOP(NLW_mem_reg_3_1_5_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_5_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_5_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_5_i_1_n_0),
        .ENBWREN(mem_reg_3_1_5_1),
        .INJECTDBITERR(NLW_mem_reg_3_1_5_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_5_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_5_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_5_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_5_i_19_n_0,mem_reg_3_1_5_i_19_n_0,mem_reg_3_1_5_i_19_n_0,mem_reg_3_1_5_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_5_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_5_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_5_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_5_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_5_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_5_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_5_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_5_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_5_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_5_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_5_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_5_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_5_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_5_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_5_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_5_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_5_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_5_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_5_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_5_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_5_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_6" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "30" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_6
       (.ADDRARDADDR({mem_reg_3_1_6_i_3_n_0,mem_reg_3_1_6_i_4_n_0,mem_reg_3_1_6_i_5_n_0,mem_reg_3_1_6_i_6_n_0,mem_reg_3_1_6_i_7_n_0,mem_reg_3_1_6_i_8_n_0,mem_reg_3_1_6_i_9_n_0,mem_reg_3_1_6_i_10_n_0,mem_reg_3_1_6_i_11_n_0,mem_reg_3_1_6_i_12_n_0,mem_reg_3_1_6_i_13_n_0,mem_reg_3_1_6_i_14_n_0,mem_reg_3_1_6_i_15_n_0,mem_reg_3_1_6_i_16_n_0,mem_reg_3_1_6_i_17_n_0,mem_reg_3_1_6_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_6_n_0),
        .CASCADEINB(mem_reg_3_0_6_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_6_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_6_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_6_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[30]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_6_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_6_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_6_DOADO_UNCONNECTED[31:1],int_code_ram_q1[30]}),
        .DOBDO({NLW_mem_reg_3_1_6_DOBDO_UNCONNECTED[31:1],code_ram_q0[30]}),
        .DOPADOP(NLW_mem_reg_3_1_6_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_6_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_6_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_6_i_1_n_0),
        .ENBWREN(mem_reg_3_1_6_1),
        .INJECTDBITERR(NLW_mem_reg_3_1_6_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_6_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_6_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_6_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_6_i_19_n_0,mem_reg_3_1_6_i_19_n_0,mem_reg_3_1_6_i_19_n_0,mem_reg_3_1_6_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_6_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_6_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_6_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_6_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_6_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_6_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_6_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_6_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_6_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_6_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_6_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_6_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_6_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_6_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_6_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_6_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_6_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_6_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_6_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_6_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_6_i_9_n_0));
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* \MEM.PORTB.DATA_BIT_LAYOUT  = "p0_d1" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-15 {cell *THIS*} {string {address width (16) is more than optimal threshold of 12. Implementing using BWWE will require more logic and timing would be suboptimal. Please use attribute ram_decomp = power if BWWE is desired.}}} {SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "2097152" *) 
  (* RTL_RAM_NAME = "inst/control_s_axi_U/int_code_ram/mem_reg_3_1_7" *) 
  (* RTL_RAM_TYPE = "RAM_TDP" *) 
  (* ram_addr_begin = "32768" *) 
  (* ram_addr_end = "65535" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "31" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("UPPER"),
    .RAM_EXTENSION_B("UPPER"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(1),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(1),
    .WRITE_WIDTH_B(1)) 
    mem_reg_3_1_7
       (.ADDRARDADDR({mem_reg_3_1_7_i_3_n_0,mem_reg_3_1_7_i_4_n_0,mem_reg_3_1_7_i_5_n_0,mem_reg_3_1_7_i_6_n_0,mem_reg_3_1_7_i_7_n_0,mem_reg_3_1_7_i_8_n_0,mem_reg_3_1_7_i_9_n_0,mem_reg_3_1_7_i_10_n_0,mem_reg_3_1_7_i_11_n_0,mem_reg_3_1_7_i_12_n_0,mem_reg_3_1_7_i_13_n_0,mem_reg_3_1_7_i_14_n_0,mem_reg_3_1_7_i_15_n_0,mem_reg_3_1_7_i_16_n_0,mem_reg_3_1_7_i_17_n_0,mem_reg_3_1_7_i_18_n_0}),
        .ADDRBWRADDR(mem_reg_2_0_5_1),
        .CASCADEINA(mem_reg_3_0_7_n_0),
        .CASCADEINB(mem_reg_3_0_7_n_1),
        .CASCADEOUTA(NLW_mem_reg_3_1_7_CASCADEOUTA_UNCONNECTED),
        .CASCADEOUTB(NLW_mem_reg_3_1_7_CASCADEOUTB_UNCONNECTED),
        .CLKARDCLK(ap_clk),
        .CLKBWRCLK(ap_clk),
        .DBITERR(NLW_mem_reg_3_1_7_DBITERR_UNCONNECTED),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,p_1_in[31]}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .DIPADIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_7_DIPADIP_UNCONNECTED[0]}),
        .DIPBDIP({1'b0,1'b0,1'b0,NLW_mem_reg_3_1_7_DIPBDIP_UNCONNECTED[0]}),
        .DOADO({NLW_mem_reg_3_1_7_DOADO_UNCONNECTED[31:1],int_code_ram_q1[31]}),
        .DOBDO({NLW_mem_reg_3_1_7_DOBDO_UNCONNECTED[31:1],code_ram_q0[31]}),
        .DOPADOP(NLW_mem_reg_3_1_7_DOPADOP_UNCONNECTED[3:0]),
        .DOPBDOP(NLW_mem_reg_3_1_7_DOPBDOP_UNCONNECTED[3:0]),
        .ECCPARITY(NLW_mem_reg_3_1_7_ECCPARITY_UNCONNECTED[7:0]),
        .ENARDEN(mem_reg_3_1_7_i_1_n_0),
        .ENBWREN(ce0),
        .INJECTDBITERR(NLW_mem_reg_3_1_7_INJECTDBITERR_UNCONNECTED),
        .INJECTSBITERR(NLW_mem_reg_3_1_7_INJECTSBITERR_UNCONNECTED),
        .RDADDRECC(NLW_mem_reg_3_1_7_RDADDRECC_UNCONNECTED[8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(NLW_mem_reg_3_1_7_SBITERR_UNCONNECTED),
        .WEA({mem_reg_3_1_7_i_19_n_0,mem_reg_3_1_7_i_19_n_0,mem_reg_3_1_7_i_19_n_0,mem_reg_3_1_7_i_19_n_0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT4 #(
    .INIT(16'hF888)) 
    mem_reg_3_1_7_i_1
       (.I0(mem_reg_1_0_0_0),
        .I1(s_axi_control_WVALID),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_3_1_7_6),
        .O(mem_reg_3_1_7_i_1_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_10
       (.I0(s_axi_control_ARADDR[8]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[8]),
        .O(mem_reg_3_1_7_i_10_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_11
       (.I0(s_axi_control_ARADDR[7]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[7]),
        .O(mem_reg_3_1_7_i_11_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_12
       (.I0(s_axi_control_ARADDR[6]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[6]),
        .O(mem_reg_3_1_7_i_12_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_13
       (.I0(s_axi_control_ARADDR[5]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[5]),
        .O(mem_reg_3_1_7_i_13_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_14
       (.I0(s_axi_control_ARADDR[4]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[4]),
        .O(mem_reg_3_1_7_i_14_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_15
       (.I0(s_axi_control_ARADDR[3]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[3]),
        .O(mem_reg_3_1_7_i_15_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_16
       (.I0(s_axi_control_ARADDR[2]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[2]),
        .O(mem_reg_3_1_7_i_16_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_17
       (.I0(s_axi_control_ARADDR[1]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[1]),
        .O(mem_reg_3_1_7_i_17_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_18
       (.I0(s_axi_control_ARADDR[0]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[0]),
        .O(mem_reg_3_1_7_i_18_n_0));
  LUT6 #(
    .INIT(64'h0080808000000000)) 
    mem_reg_3_1_7_i_19
       (.I0(mem_reg_1_0_0_0),
        .I1(mem_reg_1_0_0_1),
        .I2(s_axi_control_WVALID),
        .I3(s_axi_control_ARVALID),
        .I4(mem_reg_3_1_7_6),
        .I5(s_axi_control_WSTRB[3]),
        .O(mem_reg_3_1_7_i_19_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_3
       (.I0(s_axi_control_ARADDR[15]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[15]),
        .O(mem_reg_3_1_7_i_3_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_4
       (.I0(s_axi_control_ARADDR[14]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[14]),
        .O(mem_reg_3_1_7_i_4_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_5
       (.I0(s_axi_control_ARADDR[13]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[13]),
        .O(mem_reg_3_1_7_i_5_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_6
       (.I0(s_axi_control_ARADDR[12]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[12]),
        .O(mem_reg_3_1_7_i_6_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_7
       (.I0(s_axi_control_ARADDR[11]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[11]),
        .O(mem_reg_3_1_7_i_7_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_8
       (.I0(s_axi_control_ARADDR[10]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[10]),
        .O(mem_reg_3_1_7_i_8_n_0));
  LUT4 #(
    .INIT(16'hBF80)) 
    mem_reg_3_1_7_i_9
       (.I0(s_axi_control_ARADDR[9]),
        .I1(mem_reg_3_1_7_6),
        .I2(s_axi_control_ARVALID),
        .I3(mem_reg_0_0_0_0[9]),
        .O(mem_reg_3_1_7_i_9_n_0));
  LUT6 #(
    .INIT(64'hFF0C0C0CAE0CAE0C)) 
    \rdata[0]_i_1 
       (.I0(\rdata_reg[0] ),
        .I1(int_code_ram_q1[0]),
        .I2(ar_hs__0),
        .I3(\rdata_reg[0]_0 ),
        .I4(\rdata_reg[0]_1 ),
        .I5(\rdata_reg[0]_2 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[10]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [4]),
        .I2(int_code_ram_q1[10]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [4]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[11]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [5]),
        .I2(int_code_ram_q1[11]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [5]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[12]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [6]),
        .I2(int_code_ram_q1[12]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [6]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[13]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [7]),
        .I2(int_code_ram_q1[13]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [7]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[14]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [8]),
        .I2(int_code_ram_q1[14]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [8]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[15]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [9]),
        .I2(int_code_ram_q1[15]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [9]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[16]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [10]),
        .I2(int_code_ram_q1[16]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [10]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[17]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [11]),
        .I2(int_code_ram_q1[17]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [11]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[18]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [12]),
        .I2(int_code_ram_q1[18]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [12]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[19]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [13]),
        .I2(int_code_ram_q1[19]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [13]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'hFF707070)) 
    \rdata[1]_i_1 
       (.I0(mem_reg_3_1_7_6),
        .I1(s_axi_control_ARVALID),
        .I2(int_code_ram_q1[1]),
        .I3(\rdata_reg[1] ),
        .I4(\rdata_reg[0]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[20]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [14]),
        .I2(int_code_ram_q1[20]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [14]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[21]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [15]),
        .I2(int_code_ram_q1[21]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [15]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[22]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [16]),
        .I2(int_code_ram_q1[22]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [16]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[23]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [17]),
        .I2(int_code_ram_q1[23]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [17]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[24]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [18]),
        .I2(int_code_ram_q1[24]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [18]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[24]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[25]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [19]),
        .I2(int_code_ram_q1[25]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [19]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[26]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [20]),
        .I2(int_code_ram_q1[26]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [20]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[27]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [21]),
        .I2(int_code_ram_q1[27]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [21]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[28]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [22]),
        .I2(int_code_ram_q1[28]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [22]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[29]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [23]),
        .I2(int_code_ram_q1[29]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [23]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'hFF707070)) 
    \rdata[2]_i_1 
       (.I0(mem_reg_3_1_7_6),
        .I1(s_axi_control_ARVALID),
        .I2(int_code_ram_q1[2]),
        .I3(\rdata_reg[2] ),
        .I4(\rdata_reg[0]_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[30]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [24]),
        .I2(int_code_ram_q1[30]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [24]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[31]_i_2 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [25]),
        .I2(int_code_ram_q1[31]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [25]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'hFF707070)) 
    \rdata[3]_i_1 
       (.I0(mem_reg_3_1_7_6),
        .I1(s_axi_control_ARVALID),
        .I2(int_code_ram_q1[3]),
        .I3(\rdata_reg[3] ),
        .I4(\rdata_reg[0]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[4]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [0]),
        .I2(int_code_ram_q1[4]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [0]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[5]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [1]),
        .I2(int_code_ram_q1[5]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [1]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[6]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [2]),
        .I2(int_code_ram_q1[6]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [2]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[6]));
  LUT5 #(
    .INIT(32'hFF707070)) 
    \rdata[7]_i_1 
       (.I0(mem_reg_3_1_7_6),
        .I1(s_axi_control_ARVALID),
        .I2(int_code_ram_q1[7]),
        .I3(\rdata_reg[7] ),
        .I4(\rdata_reg[0]_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \rdata[8]_i_1 
       (.I0(\rdata_reg[4] ),
        .I1(\rdata_reg[31] [3]),
        .I2(int_code_ram_q1[8]),
        .I3(ar_hs__0),
        .I4(\rdata_reg[31]_0 [3]),
        .I5(\rdata_reg[4]_0 ),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hFF707070)) 
    \rdata[9]_i_1 
       (.I0(mem_reg_3_1_7_6),
        .I1(s_axi_control_ARVALID),
        .I2(int_code_ram_q1[9]),
        .I3(\rdata_reg[9] ),
        .I4(\rdata_reg[0]_0 ),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hFFD800D8)) 
    \trunc_ln34_reg_187[10]_i_1 
       (.I0(mem_reg_0_1_2_0),
        .I1(code_ram_q0[30]),
        .I2(code_ram_q0[20]),
        .I3(mem_reg_0_1_2_1),
        .I4(\trunc_ln34_reg_187[10]_i_2_n_0 ),
        .O(mem_reg_3_1_6_0));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \trunc_ln34_reg_187[10]_i_2 
       (.I0(code_ram_q0[22]),
        .I1(mem_reg_0_1_2_2),
        .I2(code_ram_q0[7]),
        .I3(code_ram_q0[20]),
        .I4(mem_reg_0_1_2_0),
        .O(\trunc_ln34_reg_187[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFAFA5050FD75A820)) 
    \trunc_ln34_reg_187[11]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(code_ram_q0[31]),
        .I3(code_ram_q0[23]),
        .I4(code_ram_q0[12]),
        .I5(mem_reg_0_1_2_0),
        .O(mem_reg_3_1_7_0));
  LUT6 #(
    .INIT(64'hFAFA5050FD75A820)) 
    \trunc_ln34_reg_187[12]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(code_ram_q0[31]),
        .I3(code_ram_q0[24]),
        .I4(code_ram_q0[13]),
        .I5(mem_reg_0_1_2_0),
        .O(mem_reg_3_1_7_1));
  LUT6 #(
    .INIT(64'hFAFA5050FD75A820)) 
    \trunc_ln34_reg_187[13]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(code_ram_q0[31]),
        .I3(code_ram_q0[25]),
        .I4(code_ram_q0[14]),
        .I5(mem_reg_0_1_2_0),
        .O(mem_reg_3_1_7_2));
  LUT6 #(
    .INIT(64'hFAFA5050FD75A820)) 
    \trunc_ln34_reg_187[14]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(code_ram_q0[31]),
        .I3(code_ram_q0[26]),
        .I4(code_ram_q0[15]),
        .I5(mem_reg_0_1_2_0),
        .O(mem_reg_3_1_7_3));
  LUT6 #(
    .INIT(64'hFAFA5050FD75A820)) 
    \trunc_ln34_reg_187[15]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(code_ram_q0[31]),
        .I3(code_ram_q0[27]),
        .I4(code_ram_q0[16]),
        .I5(mem_reg_0_1_2_0),
        .O(mem_reg_3_1_7_4));
  LUT6 #(
    .INIT(64'hFA77FEF200000000)) 
    \trunc_ln34_reg_187[16]_i_1 
       (.I0(code_ram_q0[6]),
        .I1(code_ram_q0[5]),
        .I2(code_ram_q0[3]),
        .I3(code_ram_q0[4]),
        .I4(code_ram_q0[2]),
        .I5(Q),
        .O(mem_reg_0_1_6_0));
  LUT6 #(
    .INIT(64'hFAFA5050FD75A820)) 
    \trunc_ln34_reg_187[16]_i_2 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(code_ram_q0[31]),
        .I3(code_ram_q0[28]),
        .I4(code_ram_q0[17]),
        .I5(mem_reg_0_1_2_0),
        .O(mem_reg_3_1_7_5));
  LUT6 #(
    .INIT(64'hFFFFFFFF50104000)) 
    \trunc_ln34_reg_187[1]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(mem_reg_0_1_2_0),
        .I3(code_ram_q0[8]),
        .I4(code_ram_q0[21]),
        .I5(\trunc_ln34_reg_187[1]_i_2_n_0 ),
        .O(trunc_ln34_fu_144_p1[0]));
  LUT6 #(
    .INIT(64'h2222A2800000A280)) 
    \trunc_ln34_reg_187[1]_i_2 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_0),
        .I2(code_ram_q0[22]),
        .I3(code_ram_q0[9]),
        .I4(mem_reg_0_1_2_2),
        .I5(code_ram_q0[13]),
        .O(\trunc_ln34_reg_187[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF50104000)) 
    \trunc_ln34_reg_187[2]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(mem_reg_0_1_2_0),
        .I3(code_ram_q0[9]),
        .I4(code_ram_q0[22]),
        .I5(\trunc_ln34_reg_187[2]_i_2_n_0 ),
        .O(trunc_ln34_fu_144_p1[1]));
  LUT6 #(
    .INIT(64'h2222A2800000A280)) 
    \trunc_ln34_reg_187[2]_i_2 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_0),
        .I2(code_ram_q0[23]),
        .I3(code_ram_q0[10]),
        .I4(mem_reg_0_1_2_2),
        .I5(code_ram_q0[14]),
        .O(\trunc_ln34_reg_187[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF50104000)) 
    \trunc_ln34_reg_187[3]_i_1 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_2),
        .I2(mem_reg_0_1_2_0),
        .I3(code_ram_q0[10]),
        .I4(code_ram_q0[23]),
        .I5(\trunc_ln34_reg_187[3]_i_2_n_0 ),
        .O(trunc_ln34_fu_144_p1[2]));
  LUT6 #(
    .INIT(64'h2222A2800000A280)) 
    \trunc_ln34_reg_187[3]_i_2 
       (.I0(mem_reg_0_1_2_1),
        .I1(mem_reg_0_1_2_0),
        .I2(code_ram_q0[24]),
        .I3(code_ram_q0[11]),
        .I4(mem_reg_0_1_2_2),
        .I5(code_ram_q0[15]),
        .O(\trunc_ln34_reg_187[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00AACCCCF000F000)) 
    \trunc_ln34_reg_187[4]_i_1 
       (.I0(code_ram_q0[16]),
        .I1(code_ram_q0[25]),
        .I2(\trunc_ln34_reg_187[4]_i_2_n_0 ),
        .I3(mem_reg_0_1_2_0),
        .I4(mem_reg_0_1_2_2),
        .I5(mem_reg_0_1_2_1),
        .O(trunc_ln34_fu_144_p1[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF0CCAACC)) 
    \trunc_ln34_reg_187[4]_i_2 
       (.I0(code_ram_q0[24]),
        .I1(code_ram_q0[25]),
        .I2(code_ram_q0[11]),
        .I3(mem_reg_0_1_2_0),
        .I4(mem_reg_0_1_2_2),
        .O(\trunc_ln34_reg_187[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCF0CCAAAAF0F0)) 
    \trunc_ln34_reg_187[5]_i_1 
       (.I0(code_ram_q0[25]),
        .I1(code_ram_q0[17]),
        .I2(code_ram_q0[26]),
        .I3(\trunc_ln34_reg_187[9]_i_2_n_0 ),
        .I4(mem_reg_0_1_2_0),
        .I5(mem_reg_0_1_2_1),
        .O(mem_reg_3_1_1_0));
  LUT6 #(
    .INIT(64'hF0CCF0CCAAAAF0F0)) 
    \trunc_ln34_reg_187[6]_i_1 
       (.I0(code_ram_q0[26]),
        .I1(code_ram_q0[18]),
        .I2(code_ram_q0[27]),
        .I3(\trunc_ln34_reg_187[9]_i_2_n_0 ),
        .I4(mem_reg_0_1_2_0),
        .I5(mem_reg_0_1_2_1),
        .O(mem_reg_3_1_2_0));
  LUT6 #(
    .INIT(64'hF0CCF0CCAAAAF0F0)) 
    \trunc_ln34_reg_187[7]_i_1 
       (.I0(code_ram_q0[27]),
        .I1(code_ram_q0[19]),
        .I2(code_ram_q0[28]),
        .I3(\trunc_ln34_reg_187[9]_i_2_n_0 ),
        .I4(mem_reg_0_1_2_0),
        .I5(mem_reg_0_1_2_1),
        .O(mem_reg_3_1_3_0));
  LUT6 #(
    .INIT(64'hF0CCF0CCAAAAF0F0)) 
    \trunc_ln34_reg_187[8]_i_1 
       (.I0(code_ram_q0[28]),
        .I1(code_ram_q0[20]),
        .I2(code_ram_q0[29]),
        .I3(\trunc_ln34_reg_187[9]_i_2_n_0 ),
        .I4(mem_reg_0_1_2_0),
        .I5(mem_reg_0_1_2_1),
        .O(mem_reg_3_1_4_0));
  LUT6 #(
    .INIT(64'hF0CCF0CCAAAAF0F0)) 
    \trunc_ln34_reg_187[9]_i_1 
       (.I0(code_ram_q0[29]),
        .I1(code_ram_q0[21]),
        .I2(code_ram_q0[30]),
        .I3(\trunc_ln34_reg_187[9]_i_2_n_0 ),
        .I4(mem_reg_0_1_2_0),
        .I5(mem_reg_0_1_2_1),
        .O(mem_reg_3_1_5_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFCFFFDF)) 
    \trunc_ln34_reg_187[9]_i_2 
       (.I0(code_ram_q0[5]),
        .I1(code_ram_q0[6]),
        .I2(code_ram_q0[4]),
        .I3(code_ram_q0[3]),
        .I4(code_ram_q0[2]),
        .O(\trunc_ln34_reg_187[9]_i_2_n_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_execute
   (select_ln7_2_fu_136_p3,
    trunc_ln34_reg_187,
    Q);
  output [15:0]select_ln7_2_fu_136_p3;
  input [15:0]trunc_ln34_reg_187;
  input [2:0]Q;

  wire [2:0]Q;
  wire [15:0]select_ln7_2_fu_136_p3;
  wire [15:0]trunc_ln34_reg_187;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[11]_i_10 
       (.I0(trunc_ln34_reg_187[11]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[11]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[11]_i_11 
       (.I0(trunc_ln34_reg_187[10]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[10]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[11]_i_12 
       (.I0(trunc_ln34_reg_187[9]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[9]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[11]_i_13 
       (.I0(trunc_ln34_reg_187[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[8]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[15]_i_10 
       (.I0(trunc_ln34_reg_187[15]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[15]_i_11 
       (.I0(trunc_ln34_reg_187[14]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[14]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[15]_i_12 
       (.I0(trunc_ln34_reg_187[13]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[13]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[15]_i_13 
       (.I0(trunc_ln34_reg_187[12]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[12]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[3]_i_10 
       (.I0(trunc_ln34_reg_187[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[3]_i_11 
       (.I0(trunc_ln34_reg_187[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[3]_i_12 
       (.I0(trunc_ln34_reg_187[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \pc_V_fu_66[3]_i_13 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(trunc_ln34_reg_187[0]),
        .O(select_ln7_2_fu_136_p3[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[7]_i_10 
       (.I0(trunc_ln34_reg_187[7]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[7]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[7]_i_11 
       (.I0(trunc_ln34_reg_187[6]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[6]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[7]_i_12 
       (.I0(trunc_ln34_reg_187[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \pc_V_fu_66[7]_i_13 
       (.I0(trunc_ln34_reg_187[4]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(select_ln7_2_fu_136_p3[4]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fetching_decoding_ip_fetch
   (grp_fetch_fu_87_ap_start_reg_reg,
    grp_fetch_fu_87_ap_start_reg_reg_0,
    grp_fetch_fu_87_ap_start_reg_reg_1,
    grp_fetch_fu_87_ap_start_reg_reg_2,
    grp_fetch_fu_87_ap_start_reg_reg_3,
    grp_fetch_fu_87_ap_start_reg_reg_4,
    grp_fetch_fu_87_ap_start_reg_reg_5,
    grp_fetch_fu_87_ap_start_reg_reg_6,
    grp_fetch_fu_87_ap_start_reg_reg_7,
    grp_fetch_fu_87_ap_start_reg_reg_8,
    grp_fetch_fu_87_ap_start_reg_reg_9,
    grp_fetch_fu_87_ap_start_reg_reg_10,
    grp_fetch_fu_87_ap_start_reg_reg_11,
    grp_fetch_fu_87_ap_start_reg_reg_12,
    grp_fetch_fu_87_ap_start_reg_reg_13,
    grp_fetch_fu_87_ap_start_reg_reg_14,
    grp_fetch_fu_87_ap_start_reg_reg_15,
    grp_fetch_fu_87_ap_start_reg_reg_16,
    grp_fetch_fu_87_ap_start_reg_reg_17,
    grp_fetch_fu_87_ap_start_reg_reg_18,
    grp_fetch_fu_87_ap_start_reg_reg_19,
    grp_fetch_fu_87_ap_start_reg_reg_20,
    grp_fetch_fu_87_ap_start_reg_reg_21,
    grp_fetch_fu_87_ap_start_reg_reg_22,
    grp_fetch_fu_87_ap_start_reg_reg_23,
    grp_fetch_fu_87_ap_start_reg_reg_24,
    grp_fetch_fu_87_ap_start_reg_reg_25,
    grp_fetch_fu_87_ap_start_reg_reg_26,
    grp_fetch_fu_87_ap_start_reg_reg_27,
    grp_fetch_fu_87_ap_start_reg_reg_28,
    grp_fetch_fu_87_ap_start_reg_reg_29,
    grp_fetch_fu_87_ap_start_reg_reg_30,
    grp_fetch_fu_87_ap_start_reg_reg_31,
    grp_fetch_fu_87_ap_start_reg_reg_32,
    grp_fetch_fu_87_ap_start_reg_reg_33,
    grp_fetch_fu_87_ap_start_reg_reg_34,
    grp_fetch_fu_87_ap_start_reg_reg_35,
    grp_fetch_fu_87_ap_start_reg_reg_36,
    grp_fetch_fu_87_ap_start_reg_reg_37,
    grp_fetch_fu_87_ap_start_reg_reg_38,
    grp_fetch_fu_87_ap_start_reg_reg_39,
    grp_fetch_fu_87_ap_start_reg_reg_40,
    grp_fetch_fu_87_ap_start_reg_reg_41,
    grp_fetch_fu_87_ap_start_reg_reg_42,
    grp_fetch_fu_87_ap_start_reg_reg_43,
    grp_fetch_fu_87_ap_start_reg_reg_44,
    grp_fetch_fu_87_ap_start_reg_reg_45,
    grp_fetch_fu_87_ap_start_reg_reg_46,
    grp_fetch_fu_87_ap_start_reg_reg_47,
    grp_fetch_fu_87_ap_start_reg_reg_48,
    grp_fetch_fu_87_ap_start_reg_reg_49,
    grp_fetch_fu_87_ap_start_reg_reg_50,
    grp_fetch_fu_87_ap_start_reg_reg_51,
    grp_fetch_fu_87_ap_start_reg_reg_52,
    grp_fetch_fu_87_ap_start_reg_reg_53,
    grp_fetch_fu_87_ap_start_reg_reg_54,
    grp_fetch_fu_87_ap_start_reg_reg_55,
    grp_fetch_fu_87_ap_start_reg_reg_56,
    grp_fetch_fu_87_ap_start_reg_reg_57,
    grp_fetch_fu_87_ap_start_reg_reg_58,
    grp_fetch_fu_87_ap_start_reg_reg_59,
    grp_fetch_fu_87_ap_start_reg_reg_60,
    grp_fetch_fu_87_ap_start_reg_reg_61,
    ce0,
    \ap_CS_fsm_reg[1]_0 ,
    grp_fetch_fu_87_ap_start_reg,
    Q,
    ap_enable_reg_pp0_iter0,
    SR,
    ap_clk);
  output grp_fetch_fu_87_ap_start_reg_reg;
  output grp_fetch_fu_87_ap_start_reg_reg_0;
  output grp_fetch_fu_87_ap_start_reg_reg_1;
  output grp_fetch_fu_87_ap_start_reg_reg_2;
  output grp_fetch_fu_87_ap_start_reg_reg_3;
  output grp_fetch_fu_87_ap_start_reg_reg_4;
  output grp_fetch_fu_87_ap_start_reg_reg_5;
  output grp_fetch_fu_87_ap_start_reg_reg_6;
  output grp_fetch_fu_87_ap_start_reg_reg_7;
  output grp_fetch_fu_87_ap_start_reg_reg_8;
  output grp_fetch_fu_87_ap_start_reg_reg_9;
  output grp_fetch_fu_87_ap_start_reg_reg_10;
  output grp_fetch_fu_87_ap_start_reg_reg_11;
  output grp_fetch_fu_87_ap_start_reg_reg_12;
  output grp_fetch_fu_87_ap_start_reg_reg_13;
  output grp_fetch_fu_87_ap_start_reg_reg_14;
  output grp_fetch_fu_87_ap_start_reg_reg_15;
  output grp_fetch_fu_87_ap_start_reg_reg_16;
  output grp_fetch_fu_87_ap_start_reg_reg_17;
  output grp_fetch_fu_87_ap_start_reg_reg_18;
  output grp_fetch_fu_87_ap_start_reg_reg_19;
  output grp_fetch_fu_87_ap_start_reg_reg_20;
  output grp_fetch_fu_87_ap_start_reg_reg_21;
  output grp_fetch_fu_87_ap_start_reg_reg_22;
  output grp_fetch_fu_87_ap_start_reg_reg_23;
  output grp_fetch_fu_87_ap_start_reg_reg_24;
  output grp_fetch_fu_87_ap_start_reg_reg_25;
  output grp_fetch_fu_87_ap_start_reg_reg_26;
  output grp_fetch_fu_87_ap_start_reg_reg_27;
  output grp_fetch_fu_87_ap_start_reg_reg_28;
  output grp_fetch_fu_87_ap_start_reg_reg_29;
  output grp_fetch_fu_87_ap_start_reg_reg_30;
  output grp_fetch_fu_87_ap_start_reg_reg_31;
  output grp_fetch_fu_87_ap_start_reg_reg_32;
  output grp_fetch_fu_87_ap_start_reg_reg_33;
  output grp_fetch_fu_87_ap_start_reg_reg_34;
  output grp_fetch_fu_87_ap_start_reg_reg_35;
  output grp_fetch_fu_87_ap_start_reg_reg_36;
  output grp_fetch_fu_87_ap_start_reg_reg_37;
  output grp_fetch_fu_87_ap_start_reg_reg_38;
  output grp_fetch_fu_87_ap_start_reg_reg_39;
  output grp_fetch_fu_87_ap_start_reg_reg_40;
  output grp_fetch_fu_87_ap_start_reg_reg_41;
  output grp_fetch_fu_87_ap_start_reg_reg_42;
  output grp_fetch_fu_87_ap_start_reg_reg_43;
  output grp_fetch_fu_87_ap_start_reg_reg_44;
  output grp_fetch_fu_87_ap_start_reg_reg_45;
  output grp_fetch_fu_87_ap_start_reg_reg_46;
  output grp_fetch_fu_87_ap_start_reg_reg_47;
  output grp_fetch_fu_87_ap_start_reg_reg_48;
  output grp_fetch_fu_87_ap_start_reg_reg_49;
  output grp_fetch_fu_87_ap_start_reg_reg_50;
  output grp_fetch_fu_87_ap_start_reg_reg_51;
  output grp_fetch_fu_87_ap_start_reg_reg_52;
  output grp_fetch_fu_87_ap_start_reg_reg_53;
  output grp_fetch_fu_87_ap_start_reg_reg_54;
  output grp_fetch_fu_87_ap_start_reg_reg_55;
  output grp_fetch_fu_87_ap_start_reg_reg_56;
  output grp_fetch_fu_87_ap_start_reg_reg_57;
  output grp_fetch_fu_87_ap_start_reg_reg_58;
  output grp_fetch_fu_87_ap_start_reg_reg_59;
  output grp_fetch_fu_87_ap_start_reg_reg_60;
  output grp_fetch_fu_87_ap_start_reg_reg_61;
  output ce0;
  output \ap_CS_fsm_reg[1]_0 ;
  input grp_fetch_fu_87_ap_start_reg;
  input [0:0]Q;
  input ap_enable_reg_pp0_iter0;
  input [0:0]SR;
  input ap_clk;

  wire [0:0]Q;
  wire [0:0]SR;
  wire \ap_CS_fsm_reg[1]_0 ;
  wire \ap_CS_fsm_reg_n_0_[0] ;
  wire [1:0]ap_NS_fsm;
  wire ap_clk;
  wire ap_enable_reg_pp0_iter0;
  wire ce0;
  wire grp_fetch_fu_87_ap_ready;
  wire grp_fetch_fu_87_ap_start_reg;
  wire grp_fetch_fu_87_ap_start_reg_reg;
  wire grp_fetch_fu_87_ap_start_reg_reg_0;
  wire grp_fetch_fu_87_ap_start_reg_reg_1;
  wire grp_fetch_fu_87_ap_start_reg_reg_10;
  wire grp_fetch_fu_87_ap_start_reg_reg_11;
  wire grp_fetch_fu_87_ap_start_reg_reg_12;
  wire grp_fetch_fu_87_ap_start_reg_reg_13;
  wire grp_fetch_fu_87_ap_start_reg_reg_14;
  wire grp_fetch_fu_87_ap_start_reg_reg_15;
  wire grp_fetch_fu_87_ap_start_reg_reg_16;
  wire grp_fetch_fu_87_ap_start_reg_reg_17;
  wire grp_fetch_fu_87_ap_start_reg_reg_18;
  wire grp_fetch_fu_87_ap_start_reg_reg_19;
  wire grp_fetch_fu_87_ap_start_reg_reg_2;
  wire grp_fetch_fu_87_ap_start_reg_reg_20;
  wire grp_fetch_fu_87_ap_start_reg_reg_21;
  wire grp_fetch_fu_87_ap_start_reg_reg_22;
  wire grp_fetch_fu_87_ap_start_reg_reg_23;
  wire grp_fetch_fu_87_ap_start_reg_reg_24;
  wire grp_fetch_fu_87_ap_start_reg_reg_25;
  wire grp_fetch_fu_87_ap_start_reg_reg_26;
  wire grp_fetch_fu_87_ap_start_reg_reg_27;
  wire grp_fetch_fu_87_ap_start_reg_reg_28;
  wire grp_fetch_fu_87_ap_start_reg_reg_29;
  wire grp_fetch_fu_87_ap_start_reg_reg_3;
  wire grp_fetch_fu_87_ap_start_reg_reg_30;
  wire grp_fetch_fu_87_ap_start_reg_reg_31;
  wire grp_fetch_fu_87_ap_start_reg_reg_32;
  wire grp_fetch_fu_87_ap_start_reg_reg_33;
  wire grp_fetch_fu_87_ap_start_reg_reg_34;
  wire grp_fetch_fu_87_ap_start_reg_reg_35;
  wire grp_fetch_fu_87_ap_start_reg_reg_36;
  wire grp_fetch_fu_87_ap_start_reg_reg_37;
  wire grp_fetch_fu_87_ap_start_reg_reg_38;
  wire grp_fetch_fu_87_ap_start_reg_reg_39;
  wire grp_fetch_fu_87_ap_start_reg_reg_4;
  wire grp_fetch_fu_87_ap_start_reg_reg_40;
  wire grp_fetch_fu_87_ap_start_reg_reg_41;
  wire grp_fetch_fu_87_ap_start_reg_reg_42;
  wire grp_fetch_fu_87_ap_start_reg_reg_43;
  wire grp_fetch_fu_87_ap_start_reg_reg_44;
  wire grp_fetch_fu_87_ap_start_reg_reg_45;
  wire grp_fetch_fu_87_ap_start_reg_reg_46;
  wire grp_fetch_fu_87_ap_start_reg_reg_47;
  wire grp_fetch_fu_87_ap_start_reg_reg_48;
  wire grp_fetch_fu_87_ap_start_reg_reg_49;
  wire grp_fetch_fu_87_ap_start_reg_reg_5;
  wire grp_fetch_fu_87_ap_start_reg_reg_50;
  wire grp_fetch_fu_87_ap_start_reg_reg_51;
  wire grp_fetch_fu_87_ap_start_reg_reg_52;
  wire grp_fetch_fu_87_ap_start_reg_reg_53;
  wire grp_fetch_fu_87_ap_start_reg_reg_54;
  wire grp_fetch_fu_87_ap_start_reg_reg_55;
  wire grp_fetch_fu_87_ap_start_reg_reg_56;
  wire grp_fetch_fu_87_ap_start_reg_reg_57;
  wire grp_fetch_fu_87_ap_start_reg_reg_58;
  wire grp_fetch_fu_87_ap_start_reg_reg_59;
  wire grp_fetch_fu_87_ap_start_reg_reg_6;
  wire grp_fetch_fu_87_ap_start_reg_reg_60;
  wire grp_fetch_fu_87_ap_start_reg_reg_61;
  wire grp_fetch_fu_87_ap_start_reg_reg_7;
  wire grp_fetch_fu_87_ap_start_reg_reg_8;
  wire grp_fetch_fu_87_ap_start_reg_reg_9;

  LUT2 #(
    .INIT(4'h7)) 
    \ap_CS_fsm[0]_i_1 
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ap_NS_fsm[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \ap_CS_fsm[1]_i_1 
       (.I0(\ap_CS_fsm_reg_n_0_[0] ),
        .I1(grp_fetch_fu_87_ap_start_reg),
        .I2(grp_fetch_fu_87_ap_ready),
        .O(ap_NS_fsm[1]));
  (* FSM_ENCODING = "none" *) 
  FDSE #(
    .INIT(1'b1)) 
    \ap_CS_fsm_reg[0] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[0]),
        .Q(\ap_CS_fsm_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODING = "none" *) 
  FDRE #(
    .INIT(1'b0)) 
    \ap_CS_fsm_reg[1] 
       (.C(ap_clk),
        .CE(1'b1),
        .D(ap_NS_fsm[1]),
        .Q(grp_fetch_fu_87_ap_ready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    grp_fetch_fu_87_ap_start_reg_i_1
       (.I0(Q),
        .I1(ap_enable_reg_pp0_iter0),
        .I2(grp_fetch_fu_87_ap_ready),
        .I3(grp_fetch_fu_87_ap_start_reg),
        .O(\ap_CS_fsm_reg[1]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_1));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_3));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_5));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_7));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_9));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_11));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_0_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_13));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_2));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_4));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_6));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_8));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_10));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_12));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_1_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_14));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_15));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_17));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_19));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_21));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_23));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_25));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_27));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_0_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_29));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_16));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_18));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_20));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_22));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_24));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_26));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_28));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_1_1_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_30));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_31));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_33));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_35));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_37));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_39));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_41));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_43));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_0_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_45));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_32));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_34));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_36));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_38));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_40));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_42));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_44));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_2_1_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_46));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_47));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_49));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_51));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_53));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_55));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_57));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_59));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_0_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_61));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_0_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_48));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_1_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_50));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_2_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_52));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_3_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_54));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_4_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_56));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_5_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_58));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_6_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(grp_fetch_fu_87_ap_start_reg_reg_60));
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_3_1_7_i_2
       (.I0(grp_fetch_fu_87_ap_start_reg),
        .I1(\ap_CS_fsm_reg_n_0_[0] ),
        .O(ce0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
