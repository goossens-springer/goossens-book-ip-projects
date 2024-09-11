-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Wed Sep 11 21:05:10 2024
-- Host        : goossens-Precision-5530 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_rv32i_npp_ip_0_0_stub.vhdl
-- Design      : design_1_rv32i_npp_ip_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_control_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_ARREADY : out STD_LOGIC;
    s_axi_control_ARVALID : in STD_LOGIC;
    s_axi_control_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_control_AWREADY : out STD_LOGIC;
    s_axi_control_AWVALID : in STD_LOGIC;
    s_axi_control_BREADY : in STD_LOGIC;
    s_axi_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_BVALID : out STD_LOGIC;
    s_axi_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_RREADY : in STD_LOGIC;
    s_axi_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_control_RVALID : out STD_LOGIC;
    s_axi_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_control_WREADY : out STD_LOGIC;
    s_axi_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_control_WVALID : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    code_ram_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    code_ram_Clk_A : out STD_LOGIC;
    code_ram_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    code_ram_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    code_ram_EN_A : out STD_LOGIC;
    code_ram_Rst_A : out STD_LOGIC;
    code_ram_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    data_ram_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_ram_Clk_A : out STD_LOGIC;
    data_ram_Din_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    data_ram_Dout_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_ram_EN_A : out STD_LOGIC;
    data_ram_Rst_A : out STD_LOGIC;
    data_ram_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_control_ARADDR[4:0],s_axi_control_ARREADY,s_axi_control_ARVALID,s_axi_control_AWADDR[4:0],s_axi_control_AWREADY,s_axi_control_AWVALID,s_axi_control_BREADY,s_axi_control_BRESP[1:0],s_axi_control_BVALID,s_axi_control_RDATA[31:0],s_axi_control_RREADY,s_axi_control_RRESP[1:0],s_axi_control_RVALID,s_axi_control_WDATA[31:0],s_axi_control_WREADY,s_axi_control_WSTRB[3:0],s_axi_control_WVALID,ap_clk,ap_rst_n,interrupt,code_ram_Addr_A[31:0],code_ram_Clk_A,code_ram_Din_A[31:0],code_ram_Dout_A[31:0],code_ram_EN_A,code_ram_Rst_A,code_ram_WEN_A[3:0],data_ram_Addr_A[31:0],data_ram_Clk_A,data_ram_Din_A[31:0],data_ram_Dout_A[31:0],data_ram_EN_A,data_ram_Rst_A,data_ram_WEN_A[3:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "rv32i_npp_ip,Vivado 2024.1";
begin
end;
