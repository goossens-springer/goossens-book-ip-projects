-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
-- Date        : Tue Sep 10 19:35:14 2024
-- Host        : goossens-Precision-5530 running 64-bit Ubuntu 22.04.4 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_xbar_0_stub.vhdl
-- Design      : design_1_xbar_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 575 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 287 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 35 downto 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 575 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 26 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 287 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 1023 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axi_awaddr[575:0],s_axi_awprot[26:0],s_axi_awvalid[8:0],s_axi_awready[8:0],s_axi_wdata[287:0],s_axi_wstrb[35:0],s_axi_wvalid[8:0],s_axi_wready[8:0],s_axi_bresp[17:0],s_axi_bvalid[8:0],s_axi_bready[8:0],s_axi_araddr[575:0],s_axi_arprot[26:0],s_axi_arvalid[8:0],s_axi_arready[8:0],s_axi_rdata[287:0],s_axi_rresp[17:0],s_axi_rvalid[8:0],s_axi_rready[8:0],m_axi_awaddr[1023:0],m_axi_awprot[47:0],m_axi_awvalid[15:0],m_axi_awready[15:0],m_axi_wdata[511:0],m_axi_wstrb[63:0],m_axi_wvalid[15:0],m_axi_wready[15:0],m_axi_bresp[31:0],m_axi_bvalid[15:0],m_axi_bready[15:0],m_axi_araddr[1023:0],m_axi_arprot[47:0],m_axi_arvalid[15:0],m_axi_arready[15:0],m_axi_rdata[511:0],m_axi_rresp[31:0],m_axi_rvalid[15:0],m_axi_rready[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_crossbar_v2_1_32_axi_crossbar,Vivado 2024.1";
begin
end;
