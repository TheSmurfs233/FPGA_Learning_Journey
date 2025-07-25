-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Jul  2 15:16:21 2025
-- Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/FPGA_Learning_Journey/Pro/CNN___/project/project_1.srcs/sources_1/ip/clk_wiz_1/clk_wiz_1_sim_netlist.vhdl
-- Design      : clk_wiz_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_1_clk_wiz_1_clk_wiz is
  port (
    clk_50m : out STD_LOGIC;
    clk_125m : out STD_LOGIC;
    clk_25m : out STD_LOGIC;
    clk_40m : out STD_LOGIC;
    clk_200m : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of clk_wiz_1_clk_wiz_1_clk_wiz : entity is "clk_wiz_1_clk_wiz";
end clk_wiz_1_clk_wiz_1_clk_wiz;

architecture STRUCTURE of clk_wiz_1_clk_wiz_1_clk_wiz is
  signal clk_125m_clk_wiz_1 : STD_LOGIC;
  signal clk_200m_clk_wiz_1 : STD_LOGIC;
  signal clk_25m_clk_wiz_1 : STD_LOGIC;
  signal clk_40m_clk_wiz_1 : STD_LOGIC;
  signal clk_50m_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_buf_clk_wiz_1 : STD_LOGIC;
  signal clkfbout_clk_wiz_1 : STD_LOGIC;
  signal reset_high : STD_LOGIC;
  signal NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_plle2_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkf_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout1_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout2_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout3_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout4_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of clkout5_buf : label is "PRIMITIVE";
  attribute BOX_TYPE of plle2_adv_inst : label is "PRIMITIVE";
begin
clkf_buf: unisim.vcomponents.BUFG
     port map (
      I => clkfbout_clk_wiz_1,
      O => clkfbout_buf_clk_wiz_1
    );
clkout1_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_50m_clk_wiz_1,
      O => clk_50m
    );
clkout2_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_125m_clk_wiz_1,
      O => clk_125m
    );
clkout3_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_25m_clk_wiz_1,
      O => clk_25m
    );
clkout4_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_40m_clk_wiz_1,
      O => clk_40m
    );
clkout5_buf: unisim.vcomponents.BUFG
     port map (
      I => clk_200m_clk_wiz_1,
      O => clk_200m
    );
plle2_adv_inst: unisim.vcomponents.PLLE2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT => 20,
      CLKFBOUT_PHASE => 0.000000,
      CLKIN1_PERIOD => 20.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE => 20,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT1_DIVIDE => 8,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT2_DIVIDE => 40,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT3_DIVIDE => 25,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT4_DIVIDE => 5,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      COMPENSATION => "ZHOLD",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.010000,
      STARTUP_WAIT => "FALSE"
    )
        port map (
      CLKFBIN => clkfbout_buf_clk_wiz_1,
      CLKFBOUT => clkfbout_clk_wiz_1,
      CLKIN1 => clk_in1,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKOUT0 => clk_50m_clk_wiz_1,
      CLKOUT1 => clk_125m_clk_wiz_1,
      CLKOUT2 => clk_25m_clk_wiz_1,
      CLKOUT3 => clk_40m_clk_wiz_1,
      CLKOUT4 => clk_200m_clk_wiz_1,
      CLKOUT5 => NLW_plle2_adv_inst_CLKOUT5_UNCONNECTED,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_plle2_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_plle2_adv_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => locked,
      PWRDWN => '0',
      RST => reset_high
    );
plle2_adv_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => reset_high
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clk_wiz_1 is
  port (
    clk_50m : out STD_LOGIC;
    clk_125m : out STD_LOGIC;
    clk_25m : out STD_LOGIC;
    clk_40m : out STD_LOGIC;
    clk_200m : out STD_LOGIC;
    resetn : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of clk_wiz_1 : entity is true;
end clk_wiz_1;

architecture STRUCTURE of clk_wiz_1 is
begin
inst: entity work.clk_wiz_1_clk_wiz_1_clk_wiz
     port map (
      clk_125m => clk_125m,
      clk_200m => clk_200m,
      clk_25m => clk_25m,
      clk_40m => clk_40m,
      clk_50m => clk_50m,
      clk_in1 => clk_in1,
      locked => locked,
      resetn => resetn
    );
end STRUCTURE;
