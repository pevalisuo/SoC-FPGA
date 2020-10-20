--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
--Date        : Thu Mar 12 15:00:44 2020
--Host        : kryyni running 64-bit Ubuntu 18.04.4 LTS
--Command     : generate_target predictor_tb.bd
--Design      : predictor_tb
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity predictor_tb is
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of predictor_tb : entity is "predictor_tb,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=predictor_tb,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of predictor_tb : entity is "predictor_tb.hwdef";
end predictor_tb;

architecture STRUCTURE of predictor_tb is
  component predictor_tb_AXIFIFOtestgen_0_0 is
  port (
    aclk : out STD_LOGIC;
    aresetn : out STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  end component predictor_tb_AXIFIFOtestgen_0_0;
  component predictor_tb_predictor_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axis_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tlast : in STD_LOGIC;
    s00_axis_tvalid : in STD_LOGIC;
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m00_axis_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tlast : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC
  );
  end component predictor_tb_predictor_0_0;
  signal AXIFIFOtestgen_0_aclk : STD_LOGIC;
  signal AXIFIFOtestgen_0_aresetn : STD_LOGIC;
  signal AXIFIFOtestgen_0_m00_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal AXIFIFOtestgen_0_m00_axis_TLAST : STD_LOGIC;
  signal AXIFIFOtestgen_0_m00_axis_TREADY : STD_LOGIC;
  signal AXIFIFOtestgen_0_m00_axis_TVALID : STD_LOGIC;
  signal predictor_0_m00_axis_TDATA : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal predictor_0_m00_axis_TLAST : STD_LOGIC;
  signal predictor_0_m00_axis_TREADY : STD_LOGIC;
  signal predictor_0_m00_axis_TVALID : STD_LOGIC;
  signal NLW_predictor_0_m00_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
AXIFIFOtestgen_0: component predictor_tb_AXIFIFOtestgen_0_0
     port map (
      aclk => AXIFIFOtestgen_0_aclk,
      aresetn => AXIFIFOtestgen_0_aresetn,
      m00_axis_tdata(31 downto 0) => AXIFIFOtestgen_0_m00_axis_TDATA(31 downto 0),
      m00_axis_tlast => AXIFIFOtestgen_0_m00_axis_TLAST,
      m00_axis_tready => AXIFIFOtestgen_0_m00_axis_TREADY,
      m00_axis_tvalid => AXIFIFOtestgen_0_m00_axis_TVALID,
      s00_axis_tdata(31 downto 0) => predictor_0_m00_axis_TDATA(31 downto 0),
      s00_axis_tlast => predictor_0_m00_axis_TLAST,
      s00_axis_tready => predictor_0_m00_axis_TREADY,
      s00_axis_tvalid => predictor_0_m00_axis_TVALID
    );
predictor_0: component predictor_tb_predictor_0_0
     port map (
      aclk => AXIFIFOtestgen_0_aclk,
      aresetn => AXIFIFOtestgen_0_aresetn,
      m00_axis_tdata(31 downto 0) => predictor_0_m00_axis_TDATA(31 downto 0),
      m00_axis_tlast => predictor_0_m00_axis_TLAST,
      m00_axis_tready => predictor_0_m00_axis_TREADY,
      m00_axis_tstrb(3 downto 0) => NLW_predictor_0_m00_axis_tstrb_UNCONNECTED(3 downto 0),
      m00_axis_tvalid => predictor_0_m00_axis_TVALID,
      s00_axis_tdata(31 downto 0) => AXIFIFOtestgen_0_m00_axis_TDATA(31 downto 0),
      s00_axis_tlast => AXIFIFOtestgen_0_m00_axis_TLAST,
      s00_axis_tready => AXIFIFOtestgen_0_m00_axis_TREADY,
      s00_axis_tstrb(3 downto 0) => B"1111",
      s00_axis_tvalid => AXIFIFOtestgen_0_m00_axis_TVALID
    );
end STRUCTURE;
