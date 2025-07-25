-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Jul  2 15:18:01 2025
-- Host        : DESKTOP-I8GGJRG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/FPGA_Learning_Journey/Pro/CNN___/project/project_1.srcs/sources_1/ip/buf_fifo/buf_fifo_sim_netlist.vhdl
-- Design      : buf_fifo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_xpm_cdc_gray is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of buf_fifo_xpm_cdc_gray : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of buf_fifo_xpm_cdc_gray : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_xpm_cdc_gray : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of buf_fifo_xpm_cdc_gray : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of buf_fifo_xpm_cdc_gray : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of buf_fifo_xpm_cdc_gray : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of buf_fifo_xpm_cdc_gray : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of buf_fifo_xpm_cdc_gray : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of buf_fifo_xpm_cdc_gray : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of buf_fifo_xpm_cdc_gray : entity is "GRAY";
end buf_fifo_xpm_cdc_gray;

architecture STRUCTURE of buf_fifo_xpm_cdc_gray is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair7";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => binval(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => binval(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => binval(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(9),
      I4 => \dest_graysync_ff[1]\(7),
      I5 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      O => binval(8)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \buf_fifo_xpm_cdc_gray__2\ is
  port (
    src_clk : in STD_LOGIC;
    src_in_bin : in STD_LOGIC_VECTOR ( 9 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out_bin : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \buf_fifo_xpm_cdc_gray__2\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \buf_fifo_xpm_cdc_gray__2\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \buf_fifo_xpm_cdc_gray__2\ : entity is "xpm_cdc_gray";
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of \buf_fifo_xpm_cdc_gray__2\ : entity is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \buf_fifo_xpm_cdc_gray__2\ : entity is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of \buf_fifo_xpm_cdc_gray__2\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \buf_fifo_xpm_cdc_gray__2\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \buf_fifo_xpm_cdc_gray__2\ : entity is 10;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \buf_fifo_xpm_cdc_gray__2\ : entity is "TRUE";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \buf_fifo_xpm_cdc_gray__2\ : entity is "GRAY";
end \buf_fifo_xpm_cdc_gray__2\;

architecture STRUCTURE of \buf_fifo_xpm_cdc_gray__2\ is
  signal async_path : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal binval : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \dest_graysync_ff[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \dest_graysync_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \dest_graysync_ff[0]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[0]\ : signal is "GRAY";
  signal \dest_graysync_ff[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute RTL_KEEP of \dest_graysync_ff[1]\ : signal is "true";
  attribute async_reg of \dest_graysync_ff[1]\ : signal is "true";
  attribute xpm_cdc of \dest_graysync_ff[1]\ : signal is "GRAY";
  signal gray_enc : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \dest_graysync_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[0][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[0][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[0][9]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][0]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][1]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][2]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][3]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][4]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][4]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][4]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][5]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][5]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][5]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][6]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][6]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][6]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][7]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][7]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][7]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][8]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][8]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][8]\ : label is "GRAY";
  attribute ASYNC_REG_boolean of \dest_graysync_ff_reg[1][9]\ : label is std.standard.true;
  attribute KEEP of \dest_graysync_ff_reg[1][9]\ : label is "true";
  attribute XPM_CDC of \dest_graysync_ff_reg[1][9]\ : label is "GRAY";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \src_gray_ff[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \src_gray_ff[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \src_gray_ff[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \src_gray_ff[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \src_gray_ff[7]_i_1\ : label is "soft_lutpair3";
begin
\dest_graysync_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(0),
      Q => \dest_graysync_ff[0]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(1),
      Q => \dest_graysync_ff[0]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(2),
      Q => \dest_graysync_ff[0]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(3),
      Q => \dest_graysync_ff[0]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[0][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(4),
      Q => \dest_graysync_ff[0]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[0][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(5),
      Q => \dest_graysync_ff[0]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[0][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(6),
      Q => \dest_graysync_ff[0]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[0][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(7),
      Q => \dest_graysync_ff[0]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[0][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(8),
      Q => \dest_graysync_ff[0]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[0][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path(9),
      Q => \dest_graysync_ff[0]\(9),
      R => '0'
    );
\dest_graysync_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(0),
      Q => \dest_graysync_ff[1]\(0),
      R => '0'
    );
\dest_graysync_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(1),
      Q => \dest_graysync_ff[1]\(1),
      R => '0'
    );
\dest_graysync_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(2),
      Q => \dest_graysync_ff[1]\(2),
      R => '0'
    );
\dest_graysync_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(3),
      Q => \dest_graysync_ff[1]\(3),
      R => '0'
    );
\dest_graysync_ff_reg[1][4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(4),
      Q => \dest_graysync_ff[1]\(4),
      R => '0'
    );
\dest_graysync_ff_reg[1][5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(5),
      Q => \dest_graysync_ff[1]\(5),
      R => '0'
    );
\dest_graysync_ff_reg[1][6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(6),
      Q => \dest_graysync_ff[1]\(6),
      R => '0'
    );
\dest_graysync_ff_reg[1][7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(7),
      Q => \dest_graysync_ff[1]\(7),
      R => '0'
    );
\dest_graysync_ff_reg[1][8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(8),
      Q => \dest_graysync_ff[1]\(8),
      R => '0'
    );
\dest_graysync_ff_reg[1][9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[0]\(9),
      Q => \dest_graysync_ff[1]\(9),
      R => '0'
    );
\dest_out_bin_ff[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(0),
      I1 => \dest_graysync_ff[1]\(2),
      I2 => binval(4),
      I3 => \dest_graysync_ff[1]\(3),
      I4 => \dest_graysync_ff[1]\(1),
      O => binval(0)
    );
\dest_out_bin_ff[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(1),
      I1 => \dest_graysync_ff[1]\(3),
      I2 => binval(4),
      I3 => \dest_graysync_ff[1]\(2),
      O => binval(1)
    );
\dest_out_bin_ff[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(2),
      I1 => binval(4),
      I2 => \dest_graysync_ff[1]\(3),
      O => binval(2)
    );
\dest_out_bin_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(3),
      I1 => binval(4),
      O => binval(3)
    );
\dest_out_bin_ff[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(4),
      I1 => \dest_graysync_ff[1]\(6),
      I2 => \dest_graysync_ff[1]\(8),
      I3 => \dest_graysync_ff[1]\(9),
      I4 => \dest_graysync_ff[1]\(7),
      I5 => \dest_graysync_ff[1]\(5),
      O => binval(4)
    );
\dest_out_bin_ff[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(5),
      I1 => \dest_graysync_ff[1]\(7),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(8),
      I4 => \dest_graysync_ff[1]\(6),
      O => binval(5)
    );
\dest_out_bin_ff[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(6),
      I1 => \dest_graysync_ff[1]\(8),
      I2 => \dest_graysync_ff[1]\(9),
      I3 => \dest_graysync_ff[1]\(7),
      O => binval(6)
    );
\dest_out_bin_ff[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(7),
      I1 => \dest_graysync_ff[1]\(9),
      I2 => \dest_graysync_ff[1]\(8),
      O => binval(7)
    );
\dest_out_bin_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \dest_graysync_ff[1]\(8),
      I1 => \dest_graysync_ff[1]\(9),
      O => binval(8)
    );
\dest_out_bin_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(0),
      Q => dest_out_bin(0),
      R => '0'
    );
\dest_out_bin_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(1),
      Q => dest_out_bin(1),
      R => '0'
    );
\dest_out_bin_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(2),
      Q => dest_out_bin(2),
      R => '0'
    );
\dest_out_bin_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(3),
      Q => dest_out_bin(3),
      R => '0'
    );
\dest_out_bin_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(4),
      Q => dest_out_bin(4),
      R => '0'
    );
\dest_out_bin_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(5),
      Q => dest_out_bin(5),
      R => '0'
    );
\dest_out_bin_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(6),
      Q => dest_out_bin(6),
      R => '0'
    );
\dest_out_bin_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(7),
      Q => dest_out_bin(7),
      R => '0'
    );
\dest_out_bin_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => binval(8),
      Q => dest_out_bin(8),
      R => '0'
    );
\dest_out_bin_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \dest_graysync_ff[1]\(9),
      Q => dest_out_bin(9),
      R => '0'
    );
\src_gray_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(1),
      I1 => src_in_bin(0),
      O => gray_enc(0)
    );
\src_gray_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(2),
      I1 => src_in_bin(1),
      O => gray_enc(1)
    );
\src_gray_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(3),
      I1 => src_in_bin(2),
      O => gray_enc(2)
    );
\src_gray_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(4),
      I1 => src_in_bin(3),
      O => gray_enc(3)
    );
\src_gray_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(5),
      I1 => src_in_bin(4),
      O => gray_enc(4)
    );
\src_gray_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(6),
      I1 => src_in_bin(5),
      O => gray_enc(5)
    );
\src_gray_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(7),
      I1 => src_in_bin(6),
      O => gray_enc(6)
    );
\src_gray_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(8),
      I1 => src_in_bin(7),
      O => gray_enc(7)
    );
\src_gray_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => src_in_bin(9),
      I1 => src_in_bin(8),
      O => gray_enc(8)
    );
\src_gray_ff_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(0),
      Q => async_path(0),
      R => '0'
    );
\src_gray_ff_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(1),
      Q => async_path(1),
      R => '0'
    );
\src_gray_ff_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(2),
      Q => async_path(2),
      R => '0'
    );
\src_gray_ff_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(3),
      Q => async_path(3),
      R => '0'
    );
\src_gray_ff_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(4),
      Q => async_path(4),
      R => '0'
    );
\src_gray_ff_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(5),
      Q => async_path(5),
      R => '0'
    );
\src_gray_ff_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(6),
      Q => async_path(6),
      R => '0'
    );
\src_gray_ff_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(7),
      Q => async_path(7),
      R => '0'
    );
\src_gray_ff_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => gray_enc(8),
      Q => async_path(8),
      R => '0'
    );
\src_gray_ff_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => src_clk,
      CE => '1',
      D => src_in_bin(9),
      Q => async_path(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_compare is
  port (
    wr_en_0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_compare : entity is "compare";
end buf_fifo_compare;

architecture STRUCTURE of buf_fifo_compare is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
ram_full_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => comp1,
      I1 => wr_en,
      I2 => \out\,
      I3 => comp2,
      O => wr_en_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_compare_0 is
  port (
    comp2 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_compare_0 : entity is "compare";
end buf_fifo_compare_0;

architecture STRUCTURE of buf_fifo_compare_0 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_compare_1 is
  port (
    rd_en_0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_en : in STD_LOGIC;
    \out\ : in STD_LOGIC;
    comp1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_compare_1 : entity is "compare";
end buf_fifo_compare_1;

architecture STRUCTURE of buf_fifo_compare_1 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal comp0 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg(4)
    );
ram_empty_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEAA"
    )
        port map (
      I0 => comp0,
      I1 => rd_en,
      I2 => \out\,
      I3 => comp1,
      O => rd_en_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_compare_2 is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_compare_2 : entity is "compare";
end buf_fifo_compare_2;

architecture STRUCTURE of buf_fifo_compare_2 is
  signal carrynet_0 : STD_LOGIC;
  signal carrynet_1 : STD_LOGIC;
  signal carrynet_2 : STD_LOGIC;
  signal carrynet_3 : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \gmux.gm[0].gm1.m1_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute OPT_MODIFIED of \gmux.gm[4].gms.ms_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrynet_3,
      CO(2) => carrynet_2,
      CO(1) => carrynet_1,
      CO(0) => carrynet_0,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carrynet_3,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => '0',
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => v1_reg_0(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_dmem is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gpr1.dout_i[2]_i_4_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gpr1.dout_i[7]_i_8_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gpr1.dout_i[2]_i_4_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_4_2\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_4_3\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5_0\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5_2\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5_3\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6_0\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6_2\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6_3\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7_0\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7_2\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7_3\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_dmem : entity is "dmem";
end buf_fifo_dmem;

architecture STRUCTURE of buf_fifo_dmem is
  signal RAM_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_0_63_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_0_63_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_128_191_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_128_191_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_192_255_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_192_255_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_256_319_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_256_319_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_320_383_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_320_383_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_320_383_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_384_447_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_384_447_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_384_447_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_448_511_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_448_511_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_448_511_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_512_575_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_512_575_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_512_575_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_576_639_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_576_639_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_576_639_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_640_703_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_640_703_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_640_703_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_64_127_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_64_127_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_704_767_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_704_767_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_704_767_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_768_831_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_768_831_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_768_831_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_832_895_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_832_895_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_832_895_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_896_959_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_896_959_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_896_959_7_7_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_0_2_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_1 : STD_LOGIC;
  signal RAM_reg_960_1023_3_5_n_2 : STD_LOGIC;
  signal RAM_reg_960_1023_6_6_n_0 : STD_LOGIC;
  signal RAM_reg_960_1023_7_7_n_0 : STD_LOGIC;
  signal dout_i0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \gpr1.dout_i[0]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[0]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[1]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[2]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[3]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[4]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[5]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_4_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[6]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_5_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_6_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_7_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i[7]_i_8_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \gpr1.dout_i_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_0_63_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_128_191_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_192_255_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_256_319_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_320_383_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_384_447_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_448_511_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_512_575_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_576_639_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_640_703_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_64_127_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_704_767_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_768_831_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_832_895_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_896_959_7_7_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_6_6_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_RAM_reg_960_1023_7_7_SPO_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_0_2 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of RAM_reg_0_63_0_2 : label is 8192;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of RAM_reg_0_63_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of RAM_reg_0_63_0_2 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of RAM_reg_0_63_0_2 : label is 63;
  attribute ram_offset : integer;
  attribute ram_offset of RAM_reg_0_63_0_2 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of RAM_reg_0_63_0_2 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of RAM_reg_0_63_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_0_63_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_0_63_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_0_63_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_63_3_5 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_3_5 : label is 63;
  attribute ram_offset of RAM_reg_0_63_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_0_63_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_0_63_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_0_63_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_63_6_6 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_6_6 : label is 63;
  attribute ram_offset of RAM_reg_0_63_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_0_63_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_0_63_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_0_63_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_0_63_7_7 : label is 0;
  attribute ram_addr_end of RAM_reg_0_63_7_7 : label is 63;
  attribute ram_offset of RAM_reg_0_63_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_0_63_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_0_63_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_128_191_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_128_191_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_128_191_0_2 : label is 128;
  attribute ram_addr_end of RAM_reg_128_191_0_2 : label is 191;
  attribute ram_offset of RAM_reg_128_191_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_128_191_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_128_191_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_128_191_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_128_191_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_128_191_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_128_191_3_5 : label is 128;
  attribute ram_addr_end of RAM_reg_128_191_3_5 : label is 191;
  attribute ram_offset of RAM_reg_128_191_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_128_191_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_128_191_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_128_191_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_128_191_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_128_191_6_6 : label is 128;
  attribute ram_addr_end of RAM_reg_128_191_6_6 : label is 191;
  attribute ram_offset of RAM_reg_128_191_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_128_191_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_128_191_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_128_191_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_128_191_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_128_191_7_7 : label is 128;
  attribute ram_addr_end of RAM_reg_128_191_7_7 : label is 191;
  attribute ram_offset of RAM_reg_128_191_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_128_191_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_128_191_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_192_255_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_192_255_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_192_255_0_2 : label is 192;
  attribute ram_addr_end of RAM_reg_192_255_0_2 : label is 255;
  attribute ram_offset of RAM_reg_192_255_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_192_255_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_192_255_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_192_255_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_192_255_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_192_255_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_192_255_3_5 : label is 192;
  attribute ram_addr_end of RAM_reg_192_255_3_5 : label is 255;
  attribute ram_offset of RAM_reg_192_255_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_192_255_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_192_255_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_192_255_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_192_255_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_192_255_6_6 : label is 192;
  attribute ram_addr_end of RAM_reg_192_255_6_6 : label is 255;
  attribute ram_offset of RAM_reg_192_255_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_192_255_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_192_255_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_192_255_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_192_255_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_192_255_7_7 : label is 192;
  attribute ram_addr_end of RAM_reg_192_255_7_7 : label is 255;
  attribute ram_offset of RAM_reg_192_255_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_192_255_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_192_255_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_256_319_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_256_319_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_256_319_0_2 : label is 256;
  attribute ram_addr_end of RAM_reg_256_319_0_2 : label is 319;
  attribute ram_offset of RAM_reg_256_319_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_256_319_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_256_319_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_256_319_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_256_319_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_256_319_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_256_319_3_5 : label is 256;
  attribute ram_addr_end of RAM_reg_256_319_3_5 : label is 319;
  attribute ram_offset of RAM_reg_256_319_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_256_319_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_256_319_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_256_319_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_256_319_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_256_319_6_6 : label is 256;
  attribute ram_addr_end of RAM_reg_256_319_6_6 : label is 319;
  attribute ram_offset of RAM_reg_256_319_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_256_319_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_256_319_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_256_319_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_256_319_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_256_319_7_7 : label is 256;
  attribute ram_addr_end of RAM_reg_256_319_7_7 : label is 319;
  attribute ram_offset of RAM_reg_256_319_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_256_319_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_256_319_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_320_383_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_320_383_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_320_383_0_2 : label is 320;
  attribute ram_addr_end of RAM_reg_320_383_0_2 : label is 383;
  attribute ram_offset of RAM_reg_320_383_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_320_383_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_320_383_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_320_383_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_320_383_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_320_383_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_320_383_3_5 : label is 320;
  attribute ram_addr_end of RAM_reg_320_383_3_5 : label is 383;
  attribute ram_offset of RAM_reg_320_383_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_320_383_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_320_383_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_320_383_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_320_383_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_320_383_6_6 : label is 320;
  attribute ram_addr_end of RAM_reg_320_383_6_6 : label is 383;
  attribute ram_offset of RAM_reg_320_383_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_320_383_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_320_383_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_320_383_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_320_383_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_320_383_7_7 : label is 320;
  attribute ram_addr_end of RAM_reg_320_383_7_7 : label is 383;
  attribute ram_offset of RAM_reg_320_383_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_320_383_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_320_383_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_384_447_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_384_447_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_384_447_0_2 : label is 384;
  attribute ram_addr_end of RAM_reg_384_447_0_2 : label is 447;
  attribute ram_offset of RAM_reg_384_447_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_384_447_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_384_447_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_384_447_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_384_447_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_384_447_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_384_447_3_5 : label is 384;
  attribute ram_addr_end of RAM_reg_384_447_3_5 : label is 447;
  attribute ram_offset of RAM_reg_384_447_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_384_447_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_384_447_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_384_447_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_384_447_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_384_447_6_6 : label is 384;
  attribute ram_addr_end of RAM_reg_384_447_6_6 : label is 447;
  attribute ram_offset of RAM_reg_384_447_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_384_447_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_384_447_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_384_447_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_384_447_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_384_447_7_7 : label is 384;
  attribute ram_addr_end of RAM_reg_384_447_7_7 : label is 447;
  attribute ram_offset of RAM_reg_384_447_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_384_447_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_384_447_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_448_511_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_448_511_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_448_511_0_2 : label is 448;
  attribute ram_addr_end of RAM_reg_448_511_0_2 : label is 511;
  attribute ram_offset of RAM_reg_448_511_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_448_511_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_448_511_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_448_511_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_448_511_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_448_511_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_448_511_3_5 : label is 448;
  attribute ram_addr_end of RAM_reg_448_511_3_5 : label is 511;
  attribute ram_offset of RAM_reg_448_511_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_448_511_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_448_511_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_448_511_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_448_511_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_448_511_6_6 : label is 448;
  attribute ram_addr_end of RAM_reg_448_511_6_6 : label is 511;
  attribute ram_offset of RAM_reg_448_511_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_448_511_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_448_511_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_448_511_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_448_511_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_448_511_7_7 : label is 448;
  attribute ram_addr_end of RAM_reg_448_511_7_7 : label is 511;
  attribute ram_offset of RAM_reg_448_511_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_448_511_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_448_511_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_512_575_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_512_575_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_512_575_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_512_575_0_2 : label is 512;
  attribute ram_addr_end of RAM_reg_512_575_0_2 : label is 575;
  attribute ram_offset of RAM_reg_512_575_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_512_575_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_512_575_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_512_575_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_512_575_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_512_575_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_512_575_3_5 : label is 512;
  attribute ram_addr_end of RAM_reg_512_575_3_5 : label is 575;
  attribute ram_offset of RAM_reg_512_575_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_512_575_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_512_575_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_512_575_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_512_575_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_512_575_6_6 : label is 512;
  attribute ram_addr_end of RAM_reg_512_575_6_6 : label is 575;
  attribute ram_offset of RAM_reg_512_575_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_512_575_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_512_575_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_512_575_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_512_575_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_512_575_7_7 : label is 512;
  attribute ram_addr_end of RAM_reg_512_575_7_7 : label is 575;
  attribute ram_offset of RAM_reg_512_575_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_512_575_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_512_575_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_576_639_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_576_639_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_576_639_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_576_639_0_2 : label is 576;
  attribute ram_addr_end of RAM_reg_576_639_0_2 : label is 639;
  attribute ram_offset of RAM_reg_576_639_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_576_639_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_576_639_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_576_639_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_576_639_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_576_639_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_576_639_3_5 : label is 576;
  attribute ram_addr_end of RAM_reg_576_639_3_5 : label is 639;
  attribute ram_offset of RAM_reg_576_639_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_576_639_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_576_639_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_576_639_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_576_639_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_576_639_6_6 : label is 576;
  attribute ram_addr_end of RAM_reg_576_639_6_6 : label is 639;
  attribute ram_offset of RAM_reg_576_639_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_576_639_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_576_639_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_576_639_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_576_639_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_576_639_7_7 : label is 576;
  attribute ram_addr_end of RAM_reg_576_639_7_7 : label is 639;
  attribute ram_offset of RAM_reg_576_639_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_576_639_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_576_639_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_640_703_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_640_703_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_640_703_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_640_703_0_2 : label is 640;
  attribute ram_addr_end of RAM_reg_640_703_0_2 : label is 703;
  attribute ram_offset of RAM_reg_640_703_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_640_703_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_640_703_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_640_703_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_640_703_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_640_703_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_640_703_3_5 : label is 640;
  attribute ram_addr_end of RAM_reg_640_703_3_5 : label is 703;
  attribute ram_offset of RAM_reg_640_703_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_640_703_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_640_703_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_640_703_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_640_703_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_640_703_6_6 : label is 640;
  attribute ram_addr_end of RAM_reg_640_703_6_6 : label is 703;
  attribute ram_offset of RAM_reg_640_703_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_640_703_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_640_703_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_640_703_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_640_703_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_640_703_7_7 : label is 640;
  attribute ram_addr_end of RAM_reg_640_703_7_7 : label is 703;
  attribute ram_offset of RAM_reg_640_703_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_640_703_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_640_703_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_64_127_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_64_127_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_64_127_0_2 : label is 64;
  attribute ram_addr_end of RAM_reg_64_127_0_2 : label is 127;
  attribute ram_offset of RAM_reg_64_127_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_64_127_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_64_127_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_64_127_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_64_127_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_64_127_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_64_127_3_5 : label is 64;
  attribute ram_addr_end of RAM_reg_64_127_3_5 : label is 127;
  attribute ram_offset of RAM_reg_64_127_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_64_127_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_64_127_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_64_127_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_64_127_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_64_127_6_6 : label is 64;
  attribute ram_addr_end of RAM_reg_64_127_6_6 : label is 127;
  attribute ram_offset of RAM_reg_64_127_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_64_127_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_64_127_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_64_127_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_64_127_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_64_127_7_7 : label is 64;
  attribute ram_addr_end of RAM_reg_64_127_7_7 : label is 127;
  attribute ram_offset of RAM_reg_64_127_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_64_127_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_64_127_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_704_767_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_704_767_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_704_767_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_704_767_0_2 : label is 704;
  attribute ram_addr_end of RAM_reg_704_767_0_2 : label is 767;
  attribute ram_offset of RAM_reg_704_767_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_704_767_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_704_767_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_704_767_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_704_767_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_704_767_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_704_767_3_5 : label is 704;
  attribute ram_addr_end of RAM_reg_704_767_3_5 : label is 767;
  attribute ram_offset of RAM_reg_704_767_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_704_767_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_704_767_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_704_767_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_704_767_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_704_767_6_6 : label is 704;
  attribute ram_addr_end of RAM_reg_704_767_6_6 : label is 767;
  attribute ram_offset of RAM_reg_704_767_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_704_767_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_704_767_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_704_767_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_704_767_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_704_767_7_7 : label is 704;
  attribute ram_addr_end of RAM_reg_704_767_7_7 : label is 767;
  attribute ram_offset of RAM_reg_704_767_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_704_767_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_704_767_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_768_831_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_768_831_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_768_831_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_768_831_0_2 : label is 768;
  attribute ram_addr_end of RAM_reg_768_831_0_2 : label is 831;
  attribute ram_offset of RAM_reg_768_831_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_768_831_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_768_831_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_768_831_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_768_831_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_768_831_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_768_831_3_5 : label is 768;
  attribute ram_addr_end of RAM_reg_768_831_3_5 : label is 831;
  attribute ram_offset of RAM_reg_768_831_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_768_831_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_768_831_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_768_831_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_768_831_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_768_831_6_6 : label is 768;
  attribute ram_addr_end of RAM_reg_768_831_6_6 : label is 831;
  attribute ram_offset of RAM_reg_768_831_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_768_831_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_768_831_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_768_831_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_768_831_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_768_831_7_7 : label is 768;
  attribute ram_addr_end of RAM_reg_768_831_7_7 : label is 831;
  attribute ram_offset of RAM_reg_768_831_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_768_831_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_768_831_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_832_895_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_832_895_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_832_895_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_832_895_0_2 : label is 832;
  attribute ram_addr_end of RAM_reg_832_895_0_2 : label is 895;
  attribute ram_offset of RAM_reg_832_895_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_832_895_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_832_895_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_832_895_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_832_895_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_832_895_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_832_895_3_5 : label is 832;
  attribute ram_addr_end of RAM_reg_832_895_3_5 : label is 895;
  attribute ram_offset of RAM_reg_832_895_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_832_895_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_832_895_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_832_895_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_832_895_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_832_895_6_6 : label is 832;
  attribute ram_addr_end of RAM_reg_832_895_6_6 : label is 895;
  attribute ram_offset of RAM_reg_832_895_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_832_895_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_832_895_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_832_895_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_832_895_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_832_895_7_7 : label is 832;
  attribute ram_addr_end of RAM_reg_832_895_7_7 : label is 895;
  attribute ram_offset of RAM_reg_832_895_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_832_895_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_832_895_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_896_959_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_896_959_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_896_959_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_896_959_0_2 : label is 896;
  attribute ram_addr_end of RAM_reg_896_959_0_2 : label is 959;
  attribute ram_offset of RAM_reg_896_959_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_896_959_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_896_959_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_896_959_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_896_959_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_896_959_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_896_959_3_5 : label is 896;
  attribute ram_addr_end of RAM_reg_896_959_3_5 : label is 959;
  attribute ram_offset of RAM_reg_896_959_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_896_959_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_896_959_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_896_959_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_896_959_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_896_959_6_6 : label is 896;
  attribute ram_addr_end of RAM_reg_896_959_6_6 : label is 959;
  attribute ram_offset of RAM_reg_896_959_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_896_959_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_896_959_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_896_959_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_896_959_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_896_959_7_7 : label is 896;
  attribute ram_addr_end of RAM_reg_896_959_7_7 : label is 959;
  attribute ram_offset of RAM_reg_896_959_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_896_959_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_896_959_7_7 : label is 7;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_960_1023_0_2 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_960_1023_0_2 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_960_1023_0_2 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_960_1023_0_2 : label is 960;
  attribute ram_addr_end of RAM_reg_960_1023_0_2 : label is 1023;
  attribute ram_offset of RAM_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_begin of RAM_reg_960_1023_0_2 : label is 0;
  attribute ram_slice_end of RAM_reg_960_1023_0_2 : label is 2;
  attribute METHODOLOGY_DRC_VIOS of RAM_reg_960_1023_3_5 : label is "";
  attribute RTL_RAM_BITS of RAM_reg_960_1023_3_5 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_960_1023_3_5 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_960_1023_3_5 : label is 960;
  attribute ram_addr_end of RAM_reg_960_1023_3_5 : label is 1023;
  attribute ram_offset of RAM_reg_960_1023_3_5 : label is 0;
  attribute ram_slice_begin of RAM_reg_960_1023_3_5 : label is 3;
  attribute ram_slice_end of RAM_reg_960_1023_3_5 : label is 5;
  attribute RTL_RAM_BITS of RAM_reg_960_1023_6_6 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_960_1023_6_6 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_960_1023_6_6 : label is 960;
  attribute ram_addr_end of RAM_reg_960_1023_6_6 : label is 1023;
  attribute ram_offset of RAM_reg_960_1023_6_6 : label is 0;
  attribute ram_slice_begin of RAM_reg_960_1023_6_6 : label is 6;
  attribute ram_slice_end of RAM_reg_960_1023_6_6 : label is 6;
  attribute RTL_RAM_BITS of RAM_reg_960_1023_7_7 : label is 8192;
  attribute RTL_RAM_NAME of RAM_reg_960_1023_7_7 : label is "inst_fifo_gen/gconvfifo.rf/grf.rf/gntv_or_sync_fifo.mem/gdm.dm_gen.dm/RAM";
  attribute ram_addr_begin of RAM_reg_960_1023_7_7 : label is 960;
  attribute ram_addr_end of RAM_reg_960_1023_7_7 : label is 1023;
  attribute ram_offset of RAM_reg_960_1023_7_7 : label is 0;
  attribute ram_slice_begin of RAM_reg_960_1023_7_7 : label is 7;
  attribute ram_slice_end of RAM_reg_960_1023_7_7 : label is 7;
begin
RAM_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_0_63_0_2_n_0,
      DOB => RAM_reg_0_63_0_2_n_1,
      DOC => RAM_reg_0_63_0_2_n_2,
      DOD => NLW_RAM_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_0\
    );
RAM_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_0_63_3_5_n_0,
      DOB => RAM_reg_0_63_3_5_n_1,
      DOC => RAM_reg_0_63_3_5_n_2,
      DOD => NLW_RAM_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_0\
    );
RAM_reg_0_63_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_0_63_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_0_63_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_0\
    );
RAM_reg_0_63_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_0_63_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_0_63_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_0\
    );
RAM_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_128_191_0_2_n_0,
      DOB => RAM_reg_128_191_0_2_n_1,
      DOC => RAM_reg_128_191_0_2_n_2,
      DOD => NLW_RAM_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_2\
    );
RAM_reg_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_128_191_3_5_n_0,
      DOB => RAM_reg_128_191_3_5_n_1,
      DOC => RAM_reg_128_191_3_5_n_2,
      DOD => NLW_RAM_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_2\
    );
RAM_reg_128_191_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_128_191_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_128_191_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_2\
    );
RAM_reg_128_191_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_128_191_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_128_191_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_2\
    );
RAM_reg_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_192_255_0_2_n_0,
      DOB => RAM_reg_192_255_0_2_n_1,
      DOC => RAM_reg_192_255_0_2_n_2,
      DOD => NLW_RAM_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_3\
    );
RAM_reg_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_192_255_3_5_n_0,
      DOB => RAM_reg_192_255_3_5_n_1,
      DOC => RAM_reg_192_255_3_5_n_2,
      DOD => NLW_RAM_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_3\
    );
RAM_reg_192_255_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_192_255_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_192_255_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_3\
    );
RAM_reg_192_255_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_192_255_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_192_255_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_3\
    );
RAM_reg_256_319_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_256_319_0_2_n_0,
      DOB => RAM_reg_256_319_0_2_n_1,
      DOC => RAM_reg_256_319_0_2_n_2,
      DOD => NLW_RAM_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_0\
    );
RAM_reg_256_319_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_256_319_3_5_n_0,
      DOB => RAM_reg_256_319_3_5_n_1,
      DOC => RAM_reg_256_319_3_5_n_2,
      DOD => NLW_RAM_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_0\
    );
RAM_reg_256_319_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_256_319_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_256_319_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_0\
    );
RAM_reg_256_319_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_256_319_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_256_319_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_0\
    );
RAM_reg_320_383_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_320_383_0_2_n_0,
      DOB => RAM_reg_320_383_0_2_n_1,
      DOC => RAM_reg_320_383_0_2_n_2,
      DOD => NLW_RAM_reg_320_383_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_1\
    );
RAM_reg_320_383_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_320_383_3_5_n_0,
      DOB => RAM_reg_320_383_3_5_n_1,
      DOC => RAM_reg_320_383_3_5_n_2,
      DOD => NLW_RAM_reg_320_383_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_1\
    );
RAM_reg_320_383_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_320_383_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_320_383_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_1\
    );
RAM_reg_320_383_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_320_383_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_320_383_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_1\
    );
RAM_reg_384_447_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_384_447_0_2_n_0,
      DOB => RAM_reg_384_447_0_2_n_1,
      DOC => RAM_reg_384_447_0_2_n_2,
      DOD => NLW_RAM_reg_384_447_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_2\
    );
RAM_reg_384_447_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_384_447_3_5_n_0,
      DOB => RAM_reg_384_447_3_5_n_1,
      DOC => RAM_reg_384_447_3_5_n_2,
      DOD => NLW_RAM_reg_384_447_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_2\
    );
RAM_reg_384_447_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_384_447_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_384_447_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_2\
    );
RAM_reg_384_447_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_384_447_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_384_447_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_2\
    );
RAM_reg_448_511_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_448_511_0_2_n_0,
      DOB => RAM_reg_448_511_0_2_n_1,
      DOC => RAM_reg_448_511_0_2_n_2,
      DOD => NLW_RAM_reg_448_511_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_3\
    );
RAM_reg_448_511_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_448_511_3_5_n_0,
      DOB => RAM_reg_448_511_3_5_n_1,
      DOC => RAM_reg_448_511_3_5_n_2,
      DOD => NLW_RAM_reg_448_511_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_3\
    );
RAM_reg_448_511_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_448_511_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_448_511_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_3\
    );
RAM_reg_448_511_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_448_511_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_448_511_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_5_3\
    );
RAM_reg_512_575_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_512_575_0_2_n_0,
      DOB => RAM_reg_512_575_0_2_n_1,
      DOC => RAM_reg_512_575_0_2_n_2,
      DOD => NLW_RAM_reg_512_575_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_0\
    );
RAM_reg_512_575_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_512_575_3_5_n_0,
      DOB => RAM_reg_512_575_3_5_n_1,
      DOC => RAM_reg_512_575_3_5_n_2,
      DOD => NLW_RAM_reg_512_575_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_0\
    );
RAM_reg_512_575_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_512_575_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_512_575_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_0\
    );
RAM_reg_512_575_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_512_575_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_512_575_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_0\
    );
RAM_reg_576_639_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_576_639_0_2_n_0,
      DOB => RAM_reg_576_639_0_2_n_1,
      DOC => RAM_reg_576_639_0_2_n_2,
      DOD => NLW_RAM_reg_576_639_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_1\
    );
RAM_reg_576_639_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_576_639_3_5_n_0,
      DOB => RAM_reg_576_639_3_5_n_1,
      DOC => RAM_reg_576_639_3_5_n_2,
      DOD => NLW_RAM_reg_576_639_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_1\
    );
RAM_reg_576_639_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_576_639_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_576_639_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_1\
    );
RAM_reg_576_639_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_576_639_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_576_639_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_1\
    );
RAM_reg_640_703_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_640_703_0_2_n_0,
      DOB => RAM_reg_640_703_0_2_n_1,
      DOC => RAM_reg_640_703_0_2_n_2,
      DOD => NLW_RAM_reg_640_703_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_2\
    );
RAM_reg_640_703_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_640_703_3_5_n_0,
      DOB => RAM_reg_640_703_3_5_n_1,
      DOC => RAM_reg_640_703_3_5_n_2,
      DOD => NLW_RAM_reg_640_703_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_2\
    );
RAM_reg_640_703_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_640_703_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_640_703_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_2\
    );
RAM_reg_640_703_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_640_703_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_640_703_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_2\
    );
RAM_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_64_127_0_2_n_0,
      DOB => RAM_reg_64_127_0_2_n_1,
      DOC => RAM_reg_64_127_0_2_n_2,
      DOD => NLW_RAM_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_1\
    );
RAM_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_64_127_3_5_n_0,
      DOB => RAM_reg_64_127_3_5_n_1,
      DOC => RAM_reg_64_127_3_5_n_2,
      DOD => NLW_RAM_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_1\
    );
RAM_reg_64_127_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_64_127_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_64_127_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_1\
    );
RAM_reg_64_127_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_64_127_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_64_127_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_4_1\
    );
RAM_reg_704_767_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_704_767_0_2_n_0,
      DOB => RAM_reg_704_767_0_2_n_1,
      DOC => RAM_reg_704_767_0_2_n_2,
      DOD => NLW_RAM_reg_704_767_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_3\
    );
RAM_reg_704_767_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_704_767_3_5_n_0,
      DOB => RAM_reg_704_767_3_5_n_1,
      DOC => RAM_reg_704_767_3_5_n_2,
      DOD => NLW_RAM_reg_704_767_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_3\
    );
RAM_reg_704_767_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_704_767_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_704_767_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_3\
    );
RAM_reg_704_767_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_704_767_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_704_767_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_6_3\
    );
RAM_reg_768_831_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_768_831_0_2_n_0,
      DOB => RAM_reg_768_831_0_2_n_1,
      DOC => RAM_reg_768_831_0_2_n_2,
      DOD => NLW_RAM_reg_768_831_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_0\
    );
RAM_reg_768_831_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_768_831_3_5_n_0,
      DOB => RAM_reg_768_831_3_5_n_1,
      DOC => RAM_reg_768_831_3_5_n_2,
      DOD => NLW_RAM_reg_768_831_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_0\
    );
RAM_reg_768_831_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_768_831_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_768_831_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_0\
    );
RAM_reg_768_831_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_768_831_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_768_831_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_0\
    );
RAM_reg_832_895_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_832_895_0_2_n_0,
      DOB => RAM_reg_832_895_0_2_n_1,
      DOC => RAM_reg_832_895_0_2_n_2,
      DOD => NLW_RAM_reg_832_895_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_1\
    );
RAM_reg_832_895_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_832_895_3_5_n_0,
      DOB => RAM_reg_832_895_3_5_n_1,
      DOC => RAM_reg_832_895_3_5_n_2,
      DOD => NLW_RAM_reg_832_895_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_1\
    );
RAM_reg_832_895_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_832_895_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_832_895_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_1\
    );
RAM_reg_832_895_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_832_895_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_832_895_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_1\
    );
RAM_reg_896_959_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_896_959_0_2_n_0,
      DOB => RAM_reg_896_959_0_2_n_1,
      DOC => RAM_reg_896_959_0_2_n_2,
      DOD => NLW_RAM_reg_896_959_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_2\
    );
RAM_reg_896_959_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_896_959_3_5_n_0,
      DOB => RAM_reg_896_959_3_5_n_1,
      DOC => RAM_reg_896_959_3_5_n_2,
      DOD => NLW_RAM_reg_896_959_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_2\
    );
RAM_reg_896_959_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_896_959_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_896_959_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_2\
    );
RAM_reg_896_959_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_896_959_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_896_959_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_2\
    );
RAM_reg_960_1023_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(0),
      DIB => din(1),
      DIC => din(2),
      DID => '0',
      DOA => RAM_reg_960_1023_0_2_n_0,
      DOB => RAM_reg_960_1023_0_2_n_1,
      DOC => RAM_reg_960_1023_0_2_n_2,
      DOD => NLW_RAM_reg_960_1023_0_2_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_3\
    );
RAM_reg_960_1023_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 0) => Q(5 downto 0),
      ADDRB(5 downto 0) => Q(5 downto 0),
      ADDRC(5 downto 0) => Q(5 downto 0),
      ADDRD(5 downto 0) => \gpr1.dout_i[7]_i_8_0\(5 downto 0),
      DIA => din(3),
      DIB => din(4),
      DIC => din(5),
      DID => '0',
      DOA => RAM_reg_960_1023_3_5_n_0,
      DOB => RAM_reg_960_1023_3_5_n_1,
      DOC => RAM_reg_960_1023_3_5_n_2,
      DOD => NLW_RAM_reg_960_1023_3_5_DOD_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_3\
    );
RAM_reg_960_1023_6_6: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(6),
      DPO => RAM_reg_960_1023_6_6_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_960_1023_6_6_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_3\
    );
RAM_reg_960_1023_7_7: unisim.vcomponents.RAM64X1D
     port map (
      A0 => \gpr1.dout_i[7]_i_8_0\(0),
      A1 => \gpr1.dout_i[7]_i_8_0\(1),
      A2 => \gpr1.dout_i[7]_i_8_0\(2),
      A3 => \gpr1.dout_i[7]_i_8_0\(3),
      A4 => \gpr1.dout_i[7]_i_8_0\(4),
      A5 => \gpr1.dout_i[7]_i_8_0\(5),
      D => din(7),
      DPO => RAM_reg_960_1023_7_7_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => Q(3),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_RAM_reg_960_1023_7_7_SPO_UNCONNECTED,
      WCLK => wr_clk,
      WE => \gpr1.dout_i[2]_i_7_3\
    );
\gpr1.dout_i[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_0,
      I1 => RAM_reg_128_191_0_2_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_2_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_2_n_0,
      O => \gpr1.dout_i[0]_i_4_n_0\
    );
\gpr1.dout_i[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_0,
      I1 => RAM_reg_384_447_0_2_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_2_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_2_n_0,
      O => \gpr1.dout_i[0]_i_5_n_0\
    );
\gpr1.dout_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_0,
      I1 => RAM_reg_640_703_0_2_n_0,
      I2 => Q(7),
      I3 => RAM_reg_576_639_0_2_n_0,
      I4 => Q(6),
      I5 => RAM_reg_512_575_0_2_n_0,
      O => \gpr1.dout_i[0]_i_6_n_0\
    );
\gpr1.dout_i[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_0,
      I1 => RAM_reg_896_959_0_2_n_0,
      I2 => Q(7),
      I3 => RAM_reg_832_895_0_2_n_0,
      I4 => Q(6),
      I5 => RAM_reg_768_831_0_2_n_0,
      O => \gpr1.dout_i[0]_i_7_n_0\
    );
\gpr1.dout_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_1,
      I1 => RAM_reg_128_191_0_2_n_1,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_2_n_1,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_2_n_1,
      O => \gpr1.dout_i[1]_i_4_n_0\
    );
\gpr1.dout_i[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_1,
      I1 => RAM_reg_384_447_0_2_n_1,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_2_n_1,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_2_n_1,
      O => \gpr1.dout_i[1]_i_5_n_0\
    );
\gpr1.dout_i[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_1,
      I1 => RAM_reg_640_703_0_2_n_1,
      I2 => Q(7),
      I3 => RAM_reg_576_639_0_2_n_1,
      I4 => Q(6),
      I5 => RAM_reg_512_575_0_2_n_1,
      O => \gpr1.dout_i[1]_i_6_n_0\
    );
\gpr1.dout_i[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_1,
      I1 => RAM_reg_896_959_0_2_n_1,
      I2 => Q(7),
      I3 => RAM_reg_832_895_0_2_n_1,
      I4 => Q(6),
      I5 => RAM_reg_768_831_0_2_n_1,
      O => \gpr1.dout_i[1]_i_7_n_0\
    );
\gpr1.dout_i[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_0_2_n_2,
      I1 => RAM_reg_128_191_0_2_n_2,
      I2 => Q(7),
      I3 => RAM_reg_64_127_0_2_n_2,
      I4 => Q(6),
      I5 => RAM_reg_0_63_0_2_n_2,
      O => \gpr1.dout_i[2]_i_4_n_0\
    );
\gpr1.dout_i[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_0_2_n_2,
      I1 => RAM_reg_384_447_0_2_n_2,
      I2 => Q(7),
      I3 => RAM_reg_320_383_0_2_n_2,
      I4 => Q(6),
      I5 => RAM_reg_256_319_0_2_n_2,
      O => \gpr1.dout_i[2]_i_5_n_0\
    );
\gpr1.dout_i[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_0_2_n_2,
      I1 => RAM_reg_640_703_0_2_n_2,
      I2 => Q(7),
      I3 => RAM_reg_576_639_0_2_n_2,
      I4 => Q(6),
      I5 => RAM_reg_512_575_0_2_n_2,
      O => \gpr1.dout_i[2]_i_6_n_0\
    );
\gpr1.dout_i[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_0_2_n_2,
      I1 => RAM_reg_896_959_0_2_n_2,
      I2 => Q(7),
      I3 => RAM_reg_832_895_0_2_n_2,
      I4 => Q(6),
      I5 => RAM_reg_768_831_0_2_n_2,
      O => \gpr1.dout_i[2]_i_7_n_0\
    );
\gpr1.dout_i[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_0,
      I1 => RAM_reg_128_191_3_5_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_3_5_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_3_5_n_0,
      O => \gpr1.dout_i[3]_i_4_n_0\
    );
\gpr1.dout_i[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_0,
      I1 => RAM_reg_384_447_3_5_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_3_5_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_3_5_n_0,
      O => \gpr1.dout_i[3]_i_5_n_0\
    );
\gpr1.dout_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_0,
      I1 => RAM_reg_640_703_3_5_n_0,
      I2 => Q(7),
      I3 => RAM_reg_576_639_3_5_n_0,
      I4 => Q(6),
      I5 => RAM_reg_512_575_3_5_n_0,
      O => \gpr1.dout_i[3]_i_6_n_0\
    );
\gpr1.dout_i[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_0,
      I1 => RAM_reg_896_959_3_5_n_0,
      I2 => Q(7),
      I3 => RAM_reg_832_895_3_5_n_0,
      I4 => Q(6),
      I5 => RAM_reg_768_831_3_5_n_0,
      O => \gpr1.dout_i[3]_i_7_n_0\
    );
\gpr1.dout_i[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_1,
      I1 => RAM_reg_128_191_3_5_n_1,
      I2 => Q(7),
      I3 => RAM_reg_64_127_3_5_n_1,
      I4 => Q(6),
      I5 => RAM_reg_0_63_3_5_n_1,
      O => \gpr1.dout_i[4]_i_4_n_0\
    );
\gpr1.dout_i[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_1,
      I1 => RAM_reg_384_447_3_5_n_1,
      I2 => Q(7),
      I3 => RAM_reg_320_383_3_5_n_1,
      I4 => Q(6),
      I5 => RAM_reg_256_319_3_5_n_1,
      O => \gpr1.dout_i[4]_i_5_n_0\
    );
\gpr1.dout_i[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_1,
      I1 => RAM_reg_640_703_3_5_n_1,
      I2 => Q(7),
      I3 => RAM_reg_576_639_3_5_n_1,
      I4 => Q(6),
      I5 => RAM_reg_512_575_3_5_n_1,
      O => \gpr1.dout_i[4]_i_6_n_0\
    );
\gpr1.dout_i[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_1,
      I1 => RAM_reg_896_959_3_5_n_1,
      I2 => Q(7),
      I3 => RAM_reg_832_895_3_5_n_1,
      I4 => Q(6),
      I5 => RAM_reg_768_831_3_5_n_1,
      O => \gpr1.dout_i[4]_i_7_n_0\
    );
\gpr1.dout_i[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_3_5_n_2,
      I1 => RAM_reg_128_191_3_5_n_2,
      I2 => Q(7),
      I3 => RAM_reg_64_127_3_5_n_2,
      I4 => Q(6),
      I5 => RAM_reg_0_63_3_5_n_2,
      O => \gpr1.dout_i[5]_i_4_n_0\
    );
\gpr1.dout_i[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_3_5_n_2,
      I1 => RAM_reg_384_447_3_5_n_2,
      I2 => Q(7),
      I3 => RAM_reg_320_383_3_5_n_2,
      I4 => Q(6),
      I5 => RAM_reg_256_319_3_5_n_2,
      O => \gpr1.dout_i[5]_i_5_n_0\
    );
\gpr1.dout_i[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_3_5_n_2,
      I1 => RAM_reg_640_703_3_5_n_2,
      I2 => Q(7),
      I3 => RAM_reg_576_639_3_5_n_2,
      I4 => Q(6),
      I5 => RAM_reg_512_575_3_5_n_2,
      O => \gpr1.dout_i[5]_i_6_n_0\
    );
\gpr1.dout_i[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_3_5_n_2,
      I1 => RAM_reg_896_959_3_5_n_2,
      I2 => Q(7),
      I3 => RAM_reg_832_895_3_5_n_2,
      I4 => Q(6),
      I5 => RAM_reg_768_831_3_5_n_2,
      O => \gpr1.dout_i[5]_i_7_n_0\
    );
\gpr1.dout_i[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_6_6_n_0,
      I1 => RAM_reg_128_191_6_6_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_6_6_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_6_6_n_0,
      O => \gpr1.dout_i[6]_i_4_n_0\
    );
\gpr1.dout_i[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_6_6_n_0,
      I1 => RAM_reg_384_447_6_6_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_6_6_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_6_6_n_0,
      O => \gpr1.dout_i[6]_i_5_n_0\
    );
\gpr1.dout_i[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_6_6_n_0,
      I1 => RAM_reg_640_703_6_6_n_0,
      I2 => Q(7),
      I3 => RAM_reg_576_639_6_6_n_0,
      I4 => Q(6),
      I5 => RAM_reg_512_575_6_6_n_0,
      O => \gpr1.dout_i[6]_i_6_n_0\
    );
\gpr1.dout_i[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_6_6_n_0,
      I1 => RAM_reg_896_959_6_6_n_0,
      I2 => Q(7),
      I3 => RAM_reg_832_895_6_6_n_0,
      I4 => Q(6),
      I5 => RAM_reg_768_831_6_6_n_0,
      O => \gpr1.dout_i[6]_i_7_n_0\
    );
\gpr1.dout_i[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_192_255_7_7_n_0,
      I1 => RAM_reg_128_191_7_7_n_0,
      I2 => Q(7),
      I3 => RAM_reg_64_127_7_7_n_0,
      I4 => Q(6),
      I5 => RAM_reg_0_63_7_7_n_0,
      O => \gpr1.dout_i[7]_i_5_n_0\
    );
\gpr1.dout_i[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_448_511_7_7_n_0,
      I1 => RAM_reg_384_447_7_7_n_0,
      I2 => Q(7),
      I3 => RAM_reg_320_383_7_7_n_0,
      I4 => Q(6),
      I5 => RAM_reg_256_319_7_7_n_0,
      O => \gpr1.dout_i[7]_i_6_n_0\
    );
\gpr1.dout_i[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_704_767_7_7_n_0,
      I1 => RAM_reg_640_703_7_7_n_0,
      I2 => Q(7),
      I3 => RAM_reg_576_639_7_7_n_0,
      I4 => Q(6),
      I5 => RAM_reg_512_575_7_7_n_0,
      O => \gpr1.dout_i[7]_i_7_n_0\
    );
\gpr1.dout_i[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => RAM_reg_960_1023_7_7_n_0,
      I1 => RAM_reg_896_959_7_7_n_0,
      I2 => Q(7),
      I3 => RAM_reg_832_895_7_7_n_0,
      I4 => Q(6),
      I5 => RAM_reg_768_831_7_7_n_0,
      O => \gpr1.dout_i[7]_i_8_n_0\
    );
\gpr1.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(0),
      Q => dout(0),
      R => '0'
    );
\gpr1.dout_i_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[0]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[0]_i_3_n_0\,
      O => dout_i0(0),
      S => Q(9)
    );
\gpr1.dout_i_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[0]_i_4_n_0\,
      I1 => \gpr1.dout_i[0]_i_5_n_0\,
      O => \gpr1.dout_i_reg[0]_i_2_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[0]_i_6_n_0\,
      I1 => \gpr1.dout_i[0]_i_7_n_0\,
      O => \gpr1.dout_i_reg[0]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(1),
      Q => dout(1),
      R => '0'
    );
\gpr1.dout_i_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[1]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[1]_i_3_n_0\,
      O => dout_i0(1),
      S => Q(9)
    );
\gpr1.dout_i_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[1]_i_4_n_0\,
      I1 => \gpr1.dout_i[1]_i_5_n_0\,
      O => \gpr1.dout_i_reg[1]_i_2_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[1]_i_6_n_0\,
      I1 => \gpr1.dout_i[1]_i_7_n_0\,
      O => \gpr1.dout_i_reg[1]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(2),
      Q => dout(2),
      R => '0'
    );
\gpr1.dout_i_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[2]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[2]_i_3_n_0\,
      O => dout_i0(2),
      S => Q(9)
    );
\gpr1.dout_i_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[2]_i_4_n_0\,
      I1 => \gpr1.dout_i[2]_i_5_n_0\,
      O => \gpr1.dout_i_reg[2]_i_2_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[2]_i_6_n_0\,
      I1 => \gpr1.dout_i[2]_i_7_n_0\,
      O => \gpr1.dout_i_reg[2]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(3),
      Q => dout(3),
      R => '0'
    );
\gpr1.dout_i_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[3]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[3]_i_3_n_0\,
      O => dout_i0(3),
      S => Q(9)
    );
\gpr1.dout_i_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[3]_i_4_n_0\,
      I1 => \gpr1.dout_i[3]_i_5_n_0\,
      O => \gpr1.dout_i_reg[3]_i_2_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[3]_i_6_n_0\,
      I1 => \gpr1.dout_i[3]_i_7_n_0\,
      O => \gpr1.dout_i_reg[3]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(4),
      Q => dout(4),
      R => '0'
    );
\gpr1.dout_i_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[4]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[4]_i_3_n_0\,
      O => dout_i0(4),
      S => Q(9)
    );
\gpr1.dout_i_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[4]_i_4_n_0\,
      I1 => \gpr1.dout_i[4]_i_5_n_0\,
      O => \gpr1.dout_i_reg[4]_i_2_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[4]_i_6_n_0\,
      I1 => \gpr1.dout_i[4]_i_7_n_0\,
      O => \gpr1.dout_i_reg[4]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(5),
      Q => dout(5),
      R => '0'
    );
\gpr1.dout_i_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[5]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[5]_i_3_n_0\,
      O => dout_i0(5),
      S => Q(9)
    );
\gpr1.dout_i_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[5]_i_4_n_0\,
      I1 => \gpr1.dout_i[5]_i_5_n_0\,
      O => \gpr1.dout_i_reg[5]_i_2_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[5]_i_6_n_0\,
      I1 => \gpr1.dout_i[5]_i_7_n_0\,
      O => \gpr1.dout_i_reg[5]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(6),
      Q => dout(6),
      R => '0'
    );
\gpr1.dout_i_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[6]_i_2_n_0\,
      I1 => \gpr1.dout_i_reg[6]_i_3_n_0\,
      O => dout_i0(6),
      S => Q(9)
    );
\gpr1.dout_i_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[6]_i_4_n_0\,
      I1 => \gpr1.dout_i[6]_i_5_n_0\,
      O => \gpr1.dout_i_reg[6]_i_2_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[6]_i_6_n_0\,
      I1 => \gpr1.dout_i[6]_i_7_n_0\,
      O => \gpr1.dout_i_reg[6]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => dout_i0(7),
      Q => dout(7),
      R => '0'
    );
\gpr1.dout_i_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \gpr1.dout_i_reg[7]_i_3_n_0\,
      I1 => \gpr1.dout_i_reg[7]_i_4_n_0\,
      O => dout_i0(7),
      S => Q(9)
    );
\gpr1.dout_i_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[7]_i_5_n_0\,
      I1 => \gpr1.dout_i[7]_i_6_n_0\,
      O => \gpr1.dout_i_reg[7]_i_3_n_0\,
      S => Q(8)
    );
\gpr1.dout_i_reg[7]_i_4\: unisim.vcomponents.MUXF7
     port map (
      I0 => \gpr1.dout_i[7]_i_7_n_0\,
      I1 => \gpr1.dout_i[7]_i_8_n_0\,
      O => \gpr1.dout_i_reg[7]_i_4_n_0\,
      S => Q(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_rd_bin_cntr is
  port (
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 9 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_rd_bin_cntr : entity is "rd_bin_cntr";
end buf_fifo_rd_bin_cntr;

architecture STRUCTURE of buf_fifo_rd_bin_cntr is
  signal \gc0.count[9]_i_2_n_0\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gc0.count[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gc0.count[9]_i_1\ : label is "soft_lutpair8";
begin
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(1),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(2),
      I3 => rd_pntr_plus1(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => rd_pntr_plus1(0),
      I2 => rd_pntr_plus1(1),
      I3 => rd_pntr_plus1(3),
      I4 => rd_pntr_plus1(4),
      O => plusOp(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => rd_pntr_plus1(3),
      I1 => rd_pntr_plus1(1),
      I2 => rd_pntr_plus1(0),
      I3 => rd_pntr_plus1(2),
      I4 => rd_pntr_plus1(4),
      I5 => rd_pntr_plus1(5),
      O => plusOp(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gc0.count[9]_i_2_n_0\,
      I1 => rd_pntr_plus1(6),
      O => plusOp(6)
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gc0.count[9]_i_2_n_0\,
      I1 => rd_pntr_plus1(6),
      I2 => rd_pntr_plus1(7),
      O => plusOp(7)
    );
\gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => rd_pntr_plus1(6),
      I1 => \gc0.count[9]_i_2_n_0\,
      I2 => rd_pntr_plus1(7),
      I3 => rd_pntr_plus1(8),
      O => plusOp(8)
    );
\gc0.count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => rd_pntr_plus1(7),
      I1 => \gc0.count[9]_i_2_n_0\,
      I2 => rd_pntr_plus1(6),
      I3 => rd_pntr_plus1(8),
      I4 => rd_pntr_plus1(9),
      O => plusOp(9)
    );
\gc0.count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => rd_pntr_plus1(5),
      I1 => rd_pntr_plus1(3),
      I2 => rd_pntr_plus1(1),
      I3 => rd_pntr_plus1(0),
      I4 => rd_pntr_plus1(2),
      I5 => rd_pntr_plus1(4),
      O => \gc0.count[9]_i_2_n_0\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(0),
      Q => Q(0),
      R => '0'
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(1),
      Q => Q(1),
      R => '0'
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(2),
      Q => Q(2),
      R => '0'
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(3),
      Q => Q(3),
      R => '0'
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(4),
      Q => Q(4),
      R => '0'
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(5),
      Q => Q(5),
      R => '0'
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(6),
      Q => Q(6),
      R => '0'
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(7),
      Q => Q(7),
      R => '0'
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(8),
      Q => Q(8),
      R => '0'
    );
\gc0.count_d1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => rd_pntr_plus1(9),
      Q => Q(9),
      R => '0'
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(0),
      Q => rd_pntr_plus1(0),
      R => '0'
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(1),
      Q => rd_pntr_plus1(1),
      R => '0'
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(2),
      Q => rd_pntr_plus1(2),
      R => '0'
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(3),
      Q => rd_pntr_plus1(3),
      R => '0'
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(4),
      Q => rd_pntr_plus1(4),
      R => '0'
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(5),
      Q => rd_pntr_plus1(5),
      R => '0'
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(6),
      Q => rd_pntr_plus1(6),
      R => '0'
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(7),
      Q => rd_pntr_plus1(7),
      R => '0'
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(8),
      Q => rd_pntr_plus1(8),
      R => '0'
    );
\gc0.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => E(0),
      D => plusOp(9),
      Q => rd_pntr_plus1(9),
      R => '0'
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(0),
      I1 => WR_PNTR_RD(0),
      I2 => rd_pntr_plus1(1),
      I3 => WR_PNTR_RD(1),
      O => v1_reg(0)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(2),
      I1 => WR_PNTR_RD(2),
      I2 => rd_pntr_plus1(3),
      I3 => WR_PNTR_RD(3),
      O => v1_reg(1)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(4),
      I1 => WR_PNTR_RD(4),
      I2 => rd_pntr_plus1(5),
      I3 => WR_PNTR_RD(5),
      O => v1_reg(2)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(6),
      I1 => WR_PNTR_RD(6),
      I2 => rd_pntr_plus1(7),
      I3 => WR_PNTR_RD(7),
      O => v1_reg(3)
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_plus1(8),
      I1 => WR_PNTR_RD(8),
      I2 => rd_pntr_plus1(9),
      I3 => WR_PNTR_RD(9),
      O => v1_reg(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_rd_dc_as is
  port (
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 8 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_dc_i_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_dc_i_reg[9]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_rd_dc_as : entity is "rd_dc_as";
end buf_fifo_rd_dc_as;

architecture STRUCTURE of buf_fifo_rd_dc_as is
  signal minusOp : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \minusOp_carry__0_n_0\ : STD_LOGIC;
  signal \minusOp_carry__0_n_1\ : STD_LOGIC;
  signal \minusOp_carry__0_n_2\ : STD_LOGIC;
  signal \minusOp_carry__0_n_3\ : STD_LOGIC;
  signal \minusOp_carry__1_n_3\ : STD_LOGIC;
  signal minusOp_carry_n_0 : STD_LOGIC;
  signal minusOp_carry_n_1 : STD_LOGIC;
  signal minusOp_carry_n_2 : STD_LOGIC;
  signal minusOp_carry_n_3 : STD_LOGIC;
  signal \NLW_minusOp_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_minusOp_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
begin
minusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => minusOp_carry_n_0,
      CO(2) => minusOp_carry_n_1,
      CO(1) => minusOp_carry_n_2,
      CO(0) => minusOp_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => WR_PNTR_RD(3 downto 0),
      O(3 downto 0) => minusOp(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\minusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => minusOp_carry_n_0,
      CO(3) => \minusOp_carry__0_n_0\,
      CO(2) => \minusOp_carry__0_n_1\,
      CO(1) => \minusOp_carry__0_n_2\,
      CO(0) => \minusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => WR_PNTR_RD(7 downto 4),
      O(3 downto 0) => minusOp(7 downto 4),
      S(3 downto 0) => \rd_dc_i_reg[7]_0\(3 downto 0)
    );
\minusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \minusOp_carry__0_n_0\,
      CO(3 downto 1) => \NLW_minusOp_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \minusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => WR_PNTR_RD(8),
      O(3 downto 2) => \NLW_minusOp_carry__1_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => minusOp(9 downto 8),
      S(3 downto 2) => B"00",
      S(1 downto 0) => \rd_dc_i_reg[9]_0\(1 downto 0)
    );
\rd_dc_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(0),
      Q => rd_data_count(0),
      R => '0'
    );
\rd_dc_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(1),
      Q => rd_data_count(1),
      R => '0'
    );
\rd_dc_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(2),
      Q => rd_data_count(2),
      R => '0'
    );
\rd_dc_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(3),
      Q => rd_data_count(3),
      R => '0'
    );
\rd_dc_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(4),
      Q => rd_data_count(4),
      R => '0'
    );
\rd_dc_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(5),
      Q => rd_data_count(5),
      R => '0'
    );
\rd_dc_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(6),
      Q => rd_data_count(6),
      R => '0'
    );
\rd_dc_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(7),
      Q => rd_data_count(7),
      R => '0'
    );
\rd_dc_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(8),
      Q => rd_data_count(8),
      R => '0'
    );
\rd_dc_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => minusOp(9),
      Q => rd_data_count(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_reset_blk_ramfifo is
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_reset_blk_ramfifo : entity is "reset_blk_ramfifo";
end buf_fifo_reset_blk_ramfifo;

architecture STRUCTURE of buf_fifo_reset_blk_ramfifo is
  signal rst_wr_reg2 : STD_LOGIC;
  attribute async_reg : string;
  attribute async_reg of rst_wr_reg2 : signal is "true";
  attribute msgon : string;
  attribute msgon of rst_wr_reg2 : signal is "true";
begin
rstblki_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => '0',
      O => rst_wr_reg2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_wr_bin_cntr is
  port (
    ram_full_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    ram_full_fb_i_reg_1 : out STD_LOGIC;
    ram_full_fb_i_reg_2 : out STD_LOGIC;
    ram_full_fb_i_reg_3 : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]_0\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]_0\ : out STD_LOGIC;
    ram_full_fb_i_reg_4 : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]_1\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[7]_0\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]_2\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]_0\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]_3\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]_1\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]_2\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[7]_1\ : out STD_LOGIC;
    \gic0.gc0.count_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gic0.gc0.count_d1_reg[9]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \out\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    wr_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_wr_bin_cntr : entity is "wr_bin_cntr";
end buf_fifo_wr_bin_cntr;

architecture STRUCTURE of buf_fifo_wr_bin_cntr is
  signal \^q\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gic0.gc0.count[9]_i_2_n_0\ : STD_LOGIC;
  signal \^gic0.gc0.count_d1_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^gic0.gc0.count_reg[9]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gic0.gc0.count[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gic0.gc0.count[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \gic0.gc0.count[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gic0.gc0.count[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gic0.gc0.count[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gic0.gc0.count[7]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \gic0.gc0.count[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gic0.gc0.count[9]_i_1\ : label is "soft_lutpair12";
begin
  Q(9 downto 0) <= \^q\(9 downto 0);
  \gic0.gc0.count_d1_reg[9]_0\(9 downto 0) <= \^gic0.gc0.count_d1_reg[9]_0\(9 downto 0);
  \gic0.gc0.count_reg[9]_0\(9 downto 0) <= \^gic0.gc0.count_reg[9]_0\(9 downto 0);
RAM_reg_0_63_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \out\,
      I1 => wr_en,
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(9),
      I5 => \^q\(8),
      O => ram_full_fb_i_reg_1
    );
RAM_reg_128_191_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \out\,
      I1 => wr_en,
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => \^q\(9),
      I5 => \^q\(7),
      O => ram_full_fb_i_reg_3
    );
RAM_reg_192_255_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \^q\(8),
      I4 => \out\,
      I5 => wr_en,
      O => \gic0.gc0.count_d2_reg[9]_1\
    );
RAM_reg_256_319_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \out\,
      I1 => wr_en,
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(9),
      I5 => \^q\(8),
      O => ram_full_fb_i_reg
    );
RAM_reg_320_383_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \out\,
      I5 => wr_en,
      O => \gic0.gc0.count_d2_reg[9]_2\
    );
RAM_reg_384_447_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \out\,
      I5 => wr_en,
      O => \gic0.gc0.count_d2_reg[9]_3\
    );
RAM_reg_448_511_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^q\(9),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \out\,
      I4 => wr_en,
      I5 => \^q\(8),
      O => \gic0.gc0.count_d2_reg[9]_0\
    );
RAM_reg_512_575_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \out\,
      I1 => wr_en,
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(8),
      I5 => \^q\(9),
      O => ram_full_fb_i_reg_0
    );
RAM_reg_576_639_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(6),
      I3 => \^q\(7),
      I4 => \out\,
      I5 => wr_en,
      O => \gic0.gc0.count_d2_reg[8]_1\
    );
RAM_reg_640_703_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(9),
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \out\,
      I5 => wr_en,
      O => \gic0.gc0.count_d2_reg[8]_2\
    );
RAM_reg_64_127_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \out\,
      I1 => wr_en,
      I2 => \^q\(8),
      I3 => \^q\(7),
      I4 => \^q\(9),
      I5 => \^q\(6),
      O => ram_full_fb_i_reg_2
    );
RAM_reg_704_767_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^q\(8),
      I1 => \^q\(7),
      I2 => \^q\(6),
      I3 => \out\,
      I4 => wr_en,
      I5 => \^q\(9),
      O => \gic0.gc0.count_d2_reg[8]_0\
    );
RAM_reg_768_831_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(9),
      I2 => \^q\(8),
      I3 => \^q\(6),
      I4 => \out\,
      I5 => wr_en,
      O => \gic0.gc0.count_d2_reg[7]_1\
    );
RAM_reg_832_895_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(8),
      I2 => \^q\(6),
      I3 => \out\,
      I4 => wr_en,
      I5 => \^q\(9),
      O => \gic0.gc0.count_d2_reg[7]_0\
    );
RAM_reg_896_959_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(8),
      I2 => \^q\(7),
      I3 => \out\,
      I4 => wr_en,
      I5 => \^q\(9),
      O => \gic0.gc0.count_d2_reg[6]_0\
    );
RAM_reg_960_1023_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \out\,
      I1 => wr_en,
      I2 => \^q\(7),
      I3 => \^q\(6),
      I4 => \^q\(9),
      I5 => \^q\(8),
      O => ram_full_fb_i_reg_4
    );
\gic0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(0),
      O => \plusOp__0\(0)
    );
\gic0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(0),
      I1 => \^gic0.gc0.count_reg[9]_0\(1),
      O => \plusOp__0\(1)
    );
\gic0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(0),
      I1 => \^gic0.gc0.count_reg[9]_0\(1),
      I2 => \^gic0.gc0.count_reg[9]_0\(2),
      O => \plusOp__0\(2)
    );
\gic0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(1),
      I1 => \^gic0.gc0.count_reg[9]_0\(0),
      I2 => \^gic0.gc0.count_reg[9]_0\(2),
      I3 => \^gic0.gc0.count_reg[9]_0\(3),
      O => \plusOp__0\(3)
    );
\gic0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(2),
      I1 => \^gic0.gc0.count_reg[9]_0\(0),
      I2 => \^gic0.gc0.count_reg[9]_0\(1),
      I3 => \^gic0.gc0.count_reg[9]_0\(3),
      I4 => \^gic0.gc0.count_reg[9]_0\(4),
      O => \plusOp__0\(4)
    );
\gic0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(3),
      I1 => \^gic0.gc0.count_reg[9]_0\(1),
      I2 => \^gic0.gc0.count_reg[9]_0\(0),
      I3 => \^gic0.gc0.count_reg[9]_0\(2),
      I4 => \^gic0.gc0.count_reg[9]_0\(4),
      I5 => \^gic0.gc0.count_reg[9]_0\(5),
      O => \plusOp__0\(5)
    );
\gic0.gc0.count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gic0.gc0.count[9]_i_2_n_0\,
      I1 => \^gic0.gc0.count_reg[9]_0\(6),
      O => \plusOp__0\(6)
    );
\gic0.gc0.count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \gic0.gc0.count[9]_i_2_n_0\,
      I1 => \^gic0.gc0.count_reg[9]_0\(6),
      I2 => \^gic0.gc0.count_reg[9]_0\(7),
      O => \plusOp__0\(7)
    );
\gic0.gc0.count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(6),
      I1 => \gic0.gc0.count[9]_i_2_n_0\,
      I2 => \^gic0.gc0.count_reg[9]_0\(7),
      I3 => \^gic0.gc0.count_reg[9]_0\(8),
      O => \plusOp__0\(8)
    );
\gic0.gc0.count[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(7),
      I1 => \gic0.gc0.count[9]_i_2_n_0\,
      I2 => \^gic0.gc0.count_reg[9]_0\(6),
      I3 => \^gic0.gc0.count_reg[9]_0\(8),
      I4 => \^gic0.gc0.count_reg[9]_0\(9),
      O => \plusOp__0\(9)
    );
\gic0.gc0.count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^gic0.gc0.count_reg[9]_0\(5),
      I1 => \^gic0.gc0.count_reg[9]_0\(3),
      I2 => \^gic0.gc0.count_reg[9]_0\(1),
      I3 => \^gic0.gc0.count_reg[9]_0\(0),
      I4 => \^gic0.gc0.count_reg[9]_0\(2),
      I5 => \^gic0.gc0.count_reg[9]_0\(4),
      O => \gic0.gc0.count[9]_i_2_n_0\
    );
\gic0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(0),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(0),
      R => '0'
    );
\gic0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(1),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(1),
      R => '0'
    );
\gic0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(2),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(2),
      R => '0'
    );
\gic0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(3),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(3),
      R => '0'
    );
\gic0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(4),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(4),
      R => '0'
    );
\gic0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(5),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(5),
      R => '0'
    );
\gic0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(6),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(6),
      R => '0'
    );
\gic0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(7),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(7),
      R => '0'
    );
\gic0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(8),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(8),
      R => '0'
    );
\gic0.gc0.count_d1_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_reg[9]_0\(9),
      Q => \^gic0.gc0.count_d1_reg[9]_0\(9),
      R => '0'
    );
\gic0.gc0.count_d2_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\gic0.gc0.count_d2_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\gic0.gc0.count_d2_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\gic0.gc0.count_d2_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
\gic0.gc0.count_d2_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(4),
      Q => \^q\(4),
      R => '0'
    );
\gic0.gc0.count_d2_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(5),
      Q => \^q\(5),
      R => '0'
    );
\gic0.gc0.count_d2_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(6),
      Q => \^q\(6),
      R => '0'
    );
\gic0.gc0.count_d2_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(7),
      Q => \^q\(7),
      R => '0'
    );
\gic0.gc0.count_d2_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(8),
      Q => \^q\(8),
      R => '0'
    );
\gic0.gc0.count_d2_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \^gic0.gc0.count_d1_reg[9]_0\(9),
      Q => \^q\(9),
      R => '0'
    );
\gic0.gc0.count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(0),
      Q => \^gic0.gc0.count_reg[9]_0\(0),
      R => '0'
    );
\gic0.gc0.count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(1),
      Q => \^gic0.gc0.count_reg[9]_0\(1),
      R => '0'
    );
\gic0.gc0.count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(2),
      Q => \^gic0.gc0.count_reg[9]_0\(2),
      R => '0'
    );
\gic0.gc0.count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(3),
      Q => \^gic0.gc0.count_reg[9]_0\(3),
      R => '0'
    );
\gic0.gc0.count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(4),
      Q => \^gic0.gc0.count_reg[9]_0\(4),
      R => '0'
    );
\gic0.gc0.count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(5),
      Q => \^gic0.gc0.count_reg[9]_0\(5),
      R => '0'
    );
\gic0.gc0.count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(6),
      Q => \^gic0.gc0.count_reg[9]_0\(6),
      R => '0'
    );
\gic0.gc0.count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(7),
      Q => \^gic0.gc0.count_reg[9]_0\(7),
      R => '0'
    );
\gic0.gc0.count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(8),
      Q => \^gic0.gc0.count_reg[9]_0\(8),
      R => '0'
    );
\gic0.gc0.count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => E(0),
      D => \plusOp__0\(9),
      Q => \^gic0.gc0.count_reg[9]_0\(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_clk_x_pntrs is
  port (
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    WR_PNTR_RD : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \dest_out_bin_ff_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \dest_out_bin_ff_reg[9]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gmux.gm[4].gms.ms\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gmux.gm[4].gms.ms_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_clk : in STD_LOGIC;
    \src_gray_ff_reg[9]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_clk_x_pntrs : entity is "clk_x_pntrs";
end buf_fifo_clk_x_pntrs;

architecture STRUCTURE of buf_fifo_clk_x_pntrs is
  signal \^wr_pntr_rd\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal rd_pntr_wr : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of rd_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of rd_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT : integer;
  attribute REG_OUTPUT of rd_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of rd_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK : integer;
  attribute SIM_LOSSLESS_GRAY_CHK of rd_pntr_cdc_inst : label is 0;
  attribute VERSION : integer;
  attribute VERSION of rd_pntr_cdc_inst : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of rd_pntr_cdc_inst : label is 10;
  attribute XPM_CDC : string;
  attribute XPM_CDC of rd_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of rd_pntr_cdc_inst : label is "TRUE";
  attribute DEST_SYNC_FF of wr_pntr_cdc_inst : label is 2;
  attribute INIT_SYNC_FF of wr_pntr_cdc_inst : label is 0;
  attribute REG_OUTPUT of wr_pntr_cdc_inst : label is 1;
  attribute SIM_ASSERT_CHK of wr_pntr_cdc_inst : label is 0;
  attribute SIM_LOSSLESS_GRAY_CHK of wr_pntr_cdc_inst : label is 0;
  attribute VERSION of wr_pntr_cdc_inst : label is 0;
  attribute WIDTH of wr_pntr_cdc_inst : label is 10;
  attribute XPM_CDC of wr_pntr_cdc_inst : label is "GRAY";
  attribute XPM_MODULE of wr_pntr_cdc_inst : label is "TRUE";
begin
  WR_PNTR_RD(9 downto 0) <= \^wr_pntr_rd\(9 downto 0);
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(0),
      I1 => Q(0),
      I2 => \^wr_pntr_rd\(1),
      I3 => Q(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gmux.gm[4].gms.ms\(0),
      I2 => rd_pntr_wr(1),
      I3 => \gmux.gm[4].gms.ms\(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(0),
      I1 => \gmux.gm[4].gms.ms_0\(0),
      I2 => rd_pntr_wr(1),
      I3 => \gmux.gm[4].gms.ms_0\(1),
      O => v1_reg_1(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => Q(2),
      I2 => \^wr_pntr_rd\(3),
      I3 => Q(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(2),
      I1 => \gmux.gm[4].gms.ms\(2),
      I2 => rd_pntr_wr(3),
      I3 => \gmux.gm[4].gms.ms\(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(2),
      I1 => \gmux.gm[4].gms.ms_0\(2),
      I2 => rd_pntr_wr(3),
      I3 => \gmux.gm[4].gms.ms_0\(3),
      O => v1_reg_1(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(4),
      I1 => Q(4),
      I2 => \^wr_pntr_rd\(5),
      I3 => Q(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(4),
      I1 => \gmux.gm[4].gms.ms\(4),
      I2 => rd_pntr_wr(5),
      I3 => \gmux.gm[4].gms.ms\(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(4),
      I1 => \gmux.gm[4].gms.ms_0\(4),
      I2 => rd_pntr_wr(5),
      I3 => \gmux.gm[4].gms.ms_0\(5),
      O => v1_reg_1(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(6),
      I1 => Q(6),
      I2 => \^wr_pntr_rd\(7),
      I3 => Q(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(6),
      I1 => \gmux.gm[4].gms.ms\(6),
      I2 => rd_pntr_wr(7),
      I3 => \gmux.gm[4].gms.ms\(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(6),
      I1 => \gmux.gm[4].gms.ms_0\(6),
      I2 => rd_pntr_wr(7),
      I3 => \gmux.gm[4].gms.ms_0\(7),
      O => v1_reg_1(3)
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^wr_pntr_rd\(8),
      I1 => Q(8),
      I2 => \^wr_pntr_rd\(9),
      I3 => Q(9),
      O => v1_reg(4)
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(8),
      I1 => \gmux.gm[4].gms.ms\(8),
      I2 => rd_pntr_wr(9),
      I3 => \gmux.gm[4].gms.ms\(9),
      O => v1_reg_0(4)
    );
\gmux.gm[4].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => rd_pntr_wr(8),
      I1 => \gmux.gm[4].gms.ms_0\(8),
      I2 => rd_pntr_wr(9),
      I3 => \gmux.gm[4].gms.ms_0\(9),
      O => v1_reg_1(4)
    );
\minusOp_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(7),
      I1 => Q(7),
      O => \dest_out_bin_ff_reg[7]\(3)
    );
\minusOp_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(6),
      I1 => Q(6),
      O => \dest_out_bin_ff_reg[7]\(2)
    );
\minusOp_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(5),
      I1 => Q(5),
      O => \dest_out_bin_ff_reg[7]\(1)
    );
\minusOp_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(4),
      I1 => Q(4),
      O => \dest_out_bin_ff_reg[7]\(0)
    );
\minusOp_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(9),
      I1 => Q(9),
      O => \dest_out_bin_ff_reg[9]\(1)
    );
\minusOp_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(8),
      I1 => Q(8),
      O => \dest_out_bin_ff_reg[9]\(0)
    );
minusOp_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(3),
      I1 => Q(3),
      O => S(3)
    );
minusOp_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(2),
      I1 => Q(2),
      O => S(2)
    );
minusOp_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(1),
      I1 => Q(1),
      O => S(1)
    );
minusOp_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^wr_pntr_rd\(0),
      I1 => Q(0),
      O => S(0)
    );
rd_pntr_cdc_inst: entity work.buf_fifo_xpm_cdc_gray
     port map (
      dest_clk => wr_clk,
      dest_out_bin(9 downto 0) => rd_pntr_wr(9 downto 0),
      src_clk => rd_clk,
      src_in_bin(9 downto 0) => Q(9 downto 0)
    );
wr_pntr_cdc_inst: entity work.\buf_fifo_xpm_cdc_gray__2\
     port map (
      dest_clk => rd_clk,
      dest_out_bin(9 downto 0) => \^wr_pntr_rd\(9 downto 0),
      src_clk => wr_clk,
      src_in_bin(9 downto 0) => \src_gray_ff_reg[9]\(9 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_memory is
  port (
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \gpr1.dout_i[2]_i_4\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \gpr1.dout_i[7]_i_8\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gpr1.dout_i[2]_i_4_0\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_4_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_4_2\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5_0\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_5_2\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6_0\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_6_2\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7_0\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7_1\ : in STD_LOGIC;
    \gpr1.dout_i[2]_i_7_2\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    rd_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_memory : entity is "memory";
end buf_fifo_memory;

architecture STRUCTURE of buf_fifo_memory is
begin
\gdm.dm_gen.dm\: entity work.buf_fifo_dmem
     port map (
      E(0) => E(0),
      Q(9 downto 0) => Q(9 downto 0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \gpr1.dout_i[2]_i_4_0\ => \gpr1.dout_i[2]_i_4\,
      \gpr1.dout_i[2]_i_4_1\ => \gpr1.dout_i[2]_i_4_0\,
      \gpr1.dout_i[2]_i_4_2\ => \gpr1.dout_i[2]_i_4_1\,
      \gpr1.dout_i[2]_i_4_3\ => \gpr1.dout_i[2]_i_4_2\,
      \gpr1.dout_i[2]_i_5_0\ => \gpr1.dout_i[2]_i_5\,
      \gpr1.dout_i[2]_i_5_1\ => \gpr1.dout_i[2]_i_5_0\,
      \gpr1.dout_i[2]_i_5_2\ => \gpr1.dout_i[2]_i_5_1\,
      \gpr1.dout_i[2]_i_5_3\ => \gpr1.dout_i[2]_i_5_2\,
      \gpr1.dout_i[2]_i_6_0\ => \gpr1.dout_i[2]_i_6\,
      \gpr1.dout_i[2]_i_6_1\ => \gpr1.dout_i[2]_i_6_0\,
      \gpr1.dout_i[2]_i_6_2\ => \gpr1.dout_i[2]_i_6_1\,
      \gpr1.dout_i[2]_i_6_3\ => \gpr1.dout_i[2]_i_6_2\,
      \gpr1.dout_i[2]_i_7_0\ => \gpr1.dout_i[2]_i_7\,
      \gpr1.dout_i[2]_i_7_1\ => \gpr1.dout_i[2]_i_7_0\,
      \gpr1.dout_i[2]_i_7_2\ => \gpr1.dout_i[2]_i_7_1\,
      \gpr1.dout_i[2]_i_7_3\ => \gpr1.dout_i[2]_i_7_2\,
      \gpr1.dout_i[7]_i_8_0\(5 downto 0) => \gpr1.dout_i[7]_i_8\(5 downto 0),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_rd_status_flags_as is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_rd_status_flags_as : entity is "rd_status_flags_as";
end buf_fifo_rd_status_flags_as;

architecture STRUCTURE of buf_fifo_rd_status_flags_as is
  signal c0_n_0 : STD_LOGIC;
  signal comp1 : STD_LOGIC;
  signal ram_empty_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_empty_fb_i : signal is std.standard.true;
  signal ram_empty_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_empty_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_empty_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_empty_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_empty_i_reg : label is std.standard.true;
  attribute KEEP of ram_empty_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_empty_i_reg : label is "no";
begin
  empty <= ram_empty_i;
c0: entity work.buf_fifo_compare_1
     port map (
      comp1 => comp1,
      \out\ => ram_empty_fb_i,
      rd_en => rd_en,
      rd_en_0 => c0_n_0,
      v1_reg(4 downto 0) => v1_reg(4 downto 0)
    );
c1: entity work.buf_fifo_compare_2
     port map (
      comp1 => comp1,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
\gpr1.dout_i[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => rd_en,
      I1 => ram_empty_fb_i,
      O => E(0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_fb_i,
      R => '0'
    );
ram_empty_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => rd_clk,
      CE => '1',
      D => c0_n_0,
      Q => ram_empty_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_wr_status_flags_as is
  port (
    full : out STD_LOGIC;
    \out\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_wr_status_flags_as : entity is "wr_status_flags_as";
end buf_fifo_wr_status_flags_as;

architecture STRUCTURE of buf_fifo_wr_status_flags_as is
  signal c1_n_0 : STD_LOGIC;
  signal comp2 : STD_LOGIC;
  signal ram_full_fb_i : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of ram_full_fb_i : signal is std.standard.true;
  signal ram_full_i : STD_LOGIC;
  attribute DONT_TOUCH of ram_full_i : signal is std.standard.true;
  attribute DONT_TOUCH of ram_full_fb_i_reg : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of ram_full_fb_i_reg : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute DONT_TOUCH of ram_full_i_reg : label is std.standard.true;
  attribute KEEP of ram_full_i_reg : label is "yes";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  full <= ram_full_i;
  \out\ <= ram_full_fb_i;
c1: entity work.buf_fifo_compare
     port map (
      comp2 => comp2,
      \out\ => ram_full_fb_i,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      wr_en => wr_en,
      wr_en_0 => c1_n_0
    );
c2: entity work.buf_fifo_compare_0
     port map (
      comp2 => comp2,
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0)
    );
\gic0.gc0.count_d1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wr_en,
      I1 => ram_full_fb_i,
      O => E(0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_fb_i,
      R => '0'
    );
ram_full_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => wr_clk,
      CE => '1',
      D => c1_n_0,
      Q => ram_full_i,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_rd_logic is
  port (
    empty : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_clk : in STD_LOGIC;
    WR_PNTR_RD : in STD_LOGIC_VECTOR ( 9 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_dc_i_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \rd_dc_i_reg[9]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_rd_logic : entity is "rd_logic";
end buf_fifo_rd_logic;

architecture STRUCTURE of buf_fifo_rd_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
begin
  E(0) <= \^e\(0);
\gras.grdc1.rdc\: entity work.buf_fifo_rd_dc_as
     port map (
      S(3 downto 0) => S(3 downto 0),
      WR_PNTR_RD(8 downto 0) => WR_PNTR_RD(8 downto 0),
      rd_clk => rd_clk,
      rd_data_count(9 downto 0) => rd_data_count(9 downto 0),
      \rd_dc_i_reg[7]_0\(3 downto 0) => \rd_dc_i_reg[7]\(3 downto 0),
      \rd_dc_i_reg[9]_0\(1 downto 0) => \rd_dc_i_reg[9]\(1 downto 0)
    );
\gras.rsts\: entity work.buf_fifo_rd_status_flags_as
     port map (
      E(0) => \^e\(0),
      empty => empty,
      rd_clk => rd_clk,
      rd_en => rd_en,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(4 downto 0) => \c1/v1_reg\(4 downto 0)
    );
rpntr: entity work.buf_fifo_rd_bin_cntr
     port map (
      E(0) => \^e\(0),
      Q(9 downto 0) => Q(9 downto 0),
      WR_PNTR_RD(9 downto 0) => WR_PNTR_RD(9 downto 0),
      rd_clk => rd_clk,
      v1_reg(4 downto 0) => \c1/v1_reg\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_wr_logic is
  port (
    full : out STD_LOGIC;
    ram_full_fb_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    ram_full_fb_i_reg_0 : out STD_LOGIC;
    ram_full_fb_i_reg_1 : out STD_LOGIC;
    ram_full_fb_i_reg_2 : out STD_LOGIC;
    ram_full_fb_i_reg_3 : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]\ : out STD_LOGIC;
    ram_full_fb_i_reg_4 : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]_0\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[7]\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]_1\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[6]\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[9]_2\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]_0\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[8]_1\ : out STD_LOGIC;
    \gic0.gc0.count_d2_reg[7]_0\ : out STD_LOGIC;
    \gic0.gc0.count_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    \gic0.gc0.count_d1_reg[9]\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    v1_reg : in STD_LOGIC_VECTOR ( 4 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_clk : in STD_LOGIC;
    wr_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_wr_logic : entity is "wr_logic";
end buf_fifo_wr_logic;

architecture STRUCTURE of buf_fifo_wr_logic is
  signal \gwas.wsts_n_1\ : STD_LOGIC;
  signal ram_wr_en : STD_LOGIC;
begin
\gwas.wsts\: entity work.buf_fifo_wr_status_flags_as
     port map (
      E(0) => ram_wr_en,
      full => full,
      \out\ => \gwas.wsts_n_1\,
      v1_reg(4 downto 0) => v1_reg(4 downto 0),
      v1_reg_0(4 downto 0) => v1_reg_0(4 downto 0),
      wr_clk => wr_clk,
      wr_en => wr_en
    );
wpntr: entity work.buf_fifo_wr_bin_cntr
     port map (
      E(0) => ram_wr_en,
      Q(9 downto 0) => Q(9 downto 0),
      \gic0.gc0.count_d1_reg[9]_0\(9 downto 0) => \gic0.gc0.count_d1_reg[9]\(9 downto 0),
      \gic0.gc0.count_d2_reg[6]_0\ => \gic0.gc0.count_d2_reg[6]\,
      \gic0.gc0.count_d2_reg[7]_0\ => \gic0.gc0.count_d2_reg[7]\,
      \gic0.gc0.count_d2_reg[7]_1\ => \gic0.gc0.count_d2_reg[7]_0\,
      \gic0.gc0.count_d2_reg[8]_0\ => \gic0.gc0.count_d2_reg[8]\,
      \gic0.gc0.count_d2_reg[8]_1\ => \gic0.gc0.count_d2_reg[8]_0\,
      \gic0.gc0.count_d2_reg[8]_2\ => \gic0.gc0.count_d2_reg[8]_1\,
      \gic0.gc0.count_d2_reg[9]_0\ => \gic0.gc0.count_d2_reg[9]\,
      \gic0.gc0.count_d2_reg[9]_1\ => \gic0.gc0.count_d2_reg[9]_0\,
      \gic0.gc0.count_d2_reg[9]_2\ => \gic0.gc0.count_d2_reg[9]_1\,
      \gic0.gc0.count_d2_reg[9]_3\ => \gic0.gc0.count_d2_reg[9]_2\,
      \gic0.gc0.count_reg[9]_0\(9 downto 0) => \gic0.gc0.count_reg[9]\(9 downto 0),
      \out\ => \gwas.wsts_n_1\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      ram_full_fb_i_reg_0 => ram_full_fb_i_reg_0,
      ram_full_fb_i_reg_1 => ram_full_fb_i_reg_1,
      ram_full_fb_i_reg_2 => ram_full_fb_i_reg_2,
      ram_full_fb_i_reg_3 => ram_full_fb_i_reg_3,
      ram_full_fb_i_reg_4 => ram_full_fb_i_reg_4,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_fifo_generator_ramfifo is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_fifo_generator_ramfifo : entity is "fifo_generator_ramfifo";
end buf_fifo_fifo_generator_ramfifo;

architecture STRUCTURE of buf_fifo_fifo_generator_ramfifo is
  signal \gntv_or_sync_fifo.gcx.clkx_n_0\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_14\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_15\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_2\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gcx.clkx_n_3\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_1\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_12\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_13\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_14\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_15\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_16\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_17\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_18\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_19\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_20\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_21\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_22\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_23\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_24\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_25\ : STD_LOGIC;
  signal \gntv_or_sync_fifo.gl0.wr_n_26\ : STD_LOGIC;
  signal \gras.rsts/c0/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwas.wsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \gwas.wsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_plus1 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_plus2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal wr_pntr_rd : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
\gntv_or_sync_fifo.gcx.clkx\: entity work.buf_fifo_clk_x_pntrs
     port map (
      Q(9 downto 0) => rd_pntr(9 downto 0),
      S(3) => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      S(2) => \gntv_or_sync_fifo.gcx.clkx_n_1\,
      S(1) => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      S(0) => \gntv_or_sync_fifo.gcx.clkx_n_3\,
      WR_PNTR_RD(9 downto 0) => wr_pntr_rd(9 downto 0),
      \dest_out_bin_ff_reg[7]\(3) => \gntv_or_sync_fifo.gcx.clkx_n_14\,
      \dest_out_bin_ff_reg[7]\(2) => \gntv_or_sync_fifo.gcx.clkx_n_15\,
      \dest_out_bin_ff_reg[7]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_16\,
      \dest_out_bin_ff_reg[7]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_17\,
      \dest_out_bin_ff_reg[9]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_18\,
      \dest_out_bin_ff_reg[9]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_19\,
      \gmux.gm[4].gms.ms\(9 downto 0) => wr_pntr_plus1(9 downto 0),
      \gmux.gm[4].gms.ms_0\(9 downto 0) => wr_pntr_plus2(9 downto 0),
      rd_clk => rd_clk,
      \src_gray_ff_reg[9]\(9 downto 0) => wr_pntr(9 downto 0),
      v1_reg(4 downto 0) => \gras.rsts/c0/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \gwas.wsts/c1/v1_reg\(4 downto 0),
      v1_reg_1(4 downto 0) => \gwas.wsts/c2/v1_reg\(4 downto 0),
      wr_clk => wr_clk
    );
\gntv_or_sync_fifo.gl0.rd\: entity work.buf_fifo_rd_logic
     port map (
      E(0) => ram_rd_en_i,
      Q(9 downto 0) => rd_pntr(9 downto 0),
      S(3) => \gntv_or_sync_fifo.gcx.clkx_n_0\,
      S(2) => \gntv_or_sync_fifo.gcx.clkx_n_1\,
      S(1) => \gntv_or_sync_fifo.gcx.clkx_n_2\,
      S(0) => \gntv_or_sync_fifo.gcx.clkx_n_3\,
      WR_PNTR_RD(9 downto 0) => wr_pntr_rd(9 downto 0),
      empty => empty,
      rd_clk => rd_clk,
      rd_data_count(9 downto 0) => rd_data_count(9 downto 0),
      \rd_dc_i_reg[7]\(3) => \gntv_or_sync_fifo.gcx.clkx_n_14\,
      \rd_dc_i_reg[7]\(2) => \gntv_or_sync_fifo.gcx.clkx_n_15\,
      \rd_dc_i_reg[7]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_16\,
      \rd_dc_i_reg[7]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_17\,
      \rd_dc_i_reg[9]\(1) => \gntv_or_sync_fifo.gcx.clkx_n_18\,
      \rd_dc_i_reg[9]\(0) => \gntv_or_sync_fifo.gcx.clkx_n_19\,
      rd_en => rd_en,
      v1_reg(4 downto 0) => \gras.rsts/c0/v1_reg\(4 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.buf_fifo_wr_logic
     port map (
      Q(9 downto 0) => wr_pntr(9 downto 0),
      full => full,
      \gic0.gc0.count_d1_reg[9]\(9 downto 0) => wr_pntr_plus1(9 downto 0),
      \gic0.gc0.count_d2_reg[6]\ => \gntv_or_sync_fifo.gl0.wr_n_22\,
      \gic0.gc0.count_d2_reg[7]\ => \gntv_or_sync_fifo.gl0.wr_n_20\,
      \gic0.gc0.count_d2_reg[7]_0\ => \gntv_or_sync_fifo.gl0.wr_n_26\,
      \gic0.gc0.count_d2_reg[8]\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gic0.gc0.count_d2_reg[8]_0\ => \gntv_or_sync_fifo.gl0.wr_n_24\,
      \gic0.gc0.count_d2_reg[8]_1\ => \gntv_or_sync_fifo.gl0.wr_n_25\,
      \gic0.gc0.count_d2_reg[9]\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gic0.gc0.count_d2_reg[9]_0\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gic0.gc0.count_d2_reg[9]_1\ => \gntv_or_sync_fifo.gl0.wr_n_21\,
      \gic0.gc0.count_d2_reg[9]_2\ => \gntv_or_sync_fifo.gl0.wr_n_23\,
      \gic0.gc0.count_reg[9]\(9 downto 0) => wr_pntr_plus2(9 downto 0),
      ram_full_fb_i_reg => \gntv_or_sync_fifo.gl0.wr_n_1\,
      ram_full_fb_i_reg_0 => \gntv_or_sync_fifo.gl0.wr_n_12\,
      ram_full_fb_i_reg_1 => \gntv_or_sync_fifo.gl0.wr_n_13\,
      ram_full_fb_i_reg_2 => \gntv_or_sync_fifo.gl0.wr_n_14\,
      ram_full_fb_i_reg_3 => \gntv_or_sync_fifo.gl0.wr_n_15\,
      ram_full_fb_i_reg_4 => \gntv_or_sync_fifo.gl0.wr_n_18\,
      v1_reg(4 downto 0) => \gwas.wsts/c1/v1_reg\(4 downto 0),
      v1_reg_0(4 downto 0) => \gwas.wsts/c2/v1_reg\(4 downto 0),
      wr_clk => wr_clk,
      wr_en => wr_en
    );
\gntv_or_sync_fifo.mem\: entity work.buf_fifo_memory
     port map (
      E(0) => ram_rd_en_i,
      Q(9 downto 0) => rd_pntr(9 downto 0),
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      \gpr1.dout_i[2]_i_4\ => \gntv_or_sync_fifo.gl0.wr_n_13\,
      \gpr1.dout_i[2]_i_4_0\ => \gntv_or_sync_fifo.gl0.wr_n_14\,
      \gpr1.dout_i[2]_i_4_1\ => \gntv_or_sync_fifo.gl0.wr_n_15\,
      \gpr1.dout_i[2]_i_4_2\ => \gntv_or_sync_fifo.gl0.wr_n_19\,
      \gpr1.dout_i[2]_i_5\ => \gntv_or_sync_fifo.gl0.wr_n_1\,
      \gpr1.dout_i[2]_i_5_0\ => \gntv_or_sync_fifo.gl0.wr_n_21\,
      \gpr1.dout_i[2]_i_5_1\ => \gntv_or_sync_fifo.gl0.wr_n_23\,
      \gpr1.dout_i[2]_i_5_2\ => \gntv_or_sync_fifo.gl0.wr_n_16\,
      \gpr1.dout_i[2]_i_6\ => \gntv_or_sync_fifo.gl0.wr_n_12\,
      \gpr1.dout_i[2]_i_6_0\ => \gntv_or_sync_fifo.gl0.wr_n_24\,
      \gpr1.dout_i[2]_i_6_1\ => \gntv_or_sync_fifo.gl0.wr_n_25\,
      \gpr1.dout_i[2]_i_6_2\ => \gntv_or_sync_fifo.gl0.wr_n_17\,
      \gpr1.dout_i[2]_i_7\ => \gntv_or_sync_fifo.gl0.wr_n_26\,
      \gpr1.dout_i[2]_i_7_0\ => \gntv_or_sync_fifo.gl0.wr_n_20\,
      \gpr1.dout_i[2]_i_7_1\ => \gntv_or_sync_fifo.gl0.wr_n_22\,
      \gpr1.dout_i[2]_i_7_2\ => \gntv_or_sync_fifo.gl0.wr_n_18\,
      \gpr1.dout_i[7]_i_8\(5 downto 0) => wr_pntr(5 downto 0),
      rd_clk => rd_clk,
      wr_clk => wr_clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_fifo_generator_top is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_fifo_generator_top : entity is "fifo_generator_top";
end buf_fifo_fifo_generator_top;

architecture STRUCTURE of buf_fifo_fifo_generator_top is
begin
\grf.rf\: entity work.buf_fifo_fifo_generator_ramfifo
     port map (
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_data_count(9 downto 0) => rd_data_count(9 downto 0),
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_fifo_generator_v13_2_5_synth is
  port (
    empty : out STD_LOGIC;
    full : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_fifo_generator_v13_2_5_synth : entity is "fifo_generator_v13_2_5_synth";
end buf_fifo_fifo_generator_v13_2_5_synth;

architecture STRUCTURE of buf_fifo_fifo_generator_v13_2_5_synth is
begin
\gconvfifo.rf\: entity work.buf_fifo_fifo_generator_top
     port map (
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_data_count(9 downto 0) => rd_data_count(9 downto 0),
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo_fifo_generator_v13_2_5 is
  port (
    backup : in STD_LOGIC;
    backup_marker : in STD_LOGIC;
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    srst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    wr_rst : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    rd_rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_empty_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_assert : in STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full_thresh_negate : in STD_LOGIC_VECTOR ( 9 downto 0 );
    int_clk : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    injectsbiterr : in STD_LOGIC;
    sleep : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    almost_full : out STD_LOGIC;
    wr_ack : out STD_LOGIC;
    overflow : out STD_LOGIC;
    empty : out STD_LOGIC;
    almost_empty : out STD_LOGIC;
    valid : out STD_LOGIC;
    underflow : out STD_LOGIC;
    data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    wr_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    prog_full : out STD_LOGIC;
    prog_empty : out STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC;
    m_aclk : in STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    m_aclk_en : in STD_LOGIC;
    s_aclk_en : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_injectsbiterr : in STD_LOGIC;
    axi_aw_injectdbiterr : in STD_LOGIC;
    axi_aw_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_aw_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_aw_sbiterr : out STD_LOGIC;
    axi_aw_dbiterr : out STD_LOGIC;
    axi_aw_overflow : out STD_LOGIC;
    axi_aw_underflow : out STD_LOGIC;
    axi_aw_prog_full : out STD_LOGIC;
    axi_aw_prog_empty : out STD_LOGIC;
    axi_w_injectsbiterr : in STD_LOGIC;
    axi_w_injectdbiterr : in STD_LOGIC;
    axi_w_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_w_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_w_sbiterr : out STD_LOGIC;
    axi_w_dbiterr : out STD_LOGIC;
    axi_w_overflow : out STD_LOGIC;
    axi_w_underflow : out STD_LOGIC;
    axi_w_prog_full : out STD_LOGIC;
    axi_w_prog_empty : out STD_LOGIC;
    axi_b_injectsbiterr : in STD_LOGIC;
    axi_b_injectdbiterr : in STD_LOGIC;
    axi_b_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_b_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_b_sbiterr : out STD_LOGIC;
    axi_b_dbiterr : out STD_LOGIC;
    axi_b_overflow : out STD_LOGIC;
    axi_b_underflow : out STD_LOGIC;
    axi_b_prog_full : out STD_LOGIC;
    axi_b_prog_empty : out STD_LOGIC;
    axi_ar_injectsbiterr : in STD_LOGIC;
    axi_ar_injectdbiterr : in STD_LOGIC;
    axi_ar_prog_full_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_prog_empty_thresh : in STD_LOGIC_VECTOR ( 3 downto 0 );
    axi_ar_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_wr_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_rd_data_count : out STD_LOGIC_VECTOR ( 4 downto 0 );
    axi_ar_sbiterr : out STD_LOGIC;
    axi_ar_dbiterr : out STD_LOGIC;
    axi_ar_overflow : out STD_LOGIC;
    axi_ar_underflow : out STD_LOGIC;
    axi_ar_prog_full : out STD_LOGIC;
    axi_ar_prog_empty : out STD_LOGIC;
    axi_r_injectsbiterr : in STD_LOGIC;
    axi_r_injectdbiterr : in STD_LOGIC;
    axi_r_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_r_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axi_r_sbiterr : out STD_LOGIC;
    axi_r_dbiterr : out STD_LOGIC;
    axi_r_overflow : out STD_LOGIC;
    axi_r_underflow : out STD_LOGIC;
    axi_r_prog_full : out STD_LOGIC;
    axi_r_prog_empty : out STD_LOGIC;
    axis_injectsbiterr : in STD_LOGIC;
    axis_injectdbiterr : in STD_LOGIC;
    axis_prog_full_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_prog_empty_thresh : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 10 downto 0 );
    axis_sbiterr : out STD_LOGIC;
    axis_dbiterr : out STD_LOGIC;
    axis_overflow : out STD_LOGIC;
    axis_underflow : out STD_LOGIC;
    axis_prog_full : out STD_LOGIC;
    axis_prog_empty : out STD_LOGIC
  );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of buf_fifo_fifo_generator_v13_2_5 : entity is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of buf_fifo_fifo_generator_v13_2_5 : entity is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of buf_fifo_fifo_generator_v13_2_5 : entity is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is 1021;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of buf_fifo_fifo_generator_v13_2_5 : entity is 1020;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of buf_fifo_fifo_generator_v13_2_5 : entity is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of buf_fifo_fifo_generator_v13_2_5 : entity is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of buf_fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of buf_fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of buf_fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of buf_fifo_fifo_generator_v13_2_5 : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of buf_fifo_fifo_generator_v13_2_5 : entity is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of buf_fifo_fifo_generator_v13_2_5 : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of buf_fifo_fifo_generator_v13_2_5 : entity is "fifo_generator_v13_2_5";
end buf_fifo_fifo_generator_v13_2_5;

architecture STRUCTURE of buf_fifo_fifo_generator_v13_2_5 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
  almost_empty <= \<const0>\;
  almost_full <= \<const0>\;
  axi_ar_data_count(4) <= \<const0>\;
  axi_ar_data_count(3) <= \<const0>\;
  axi_ar_data_count(2) <= \<const0>\;
  axi_ar_data_count(1) <= \<const0>\;
  axi_ar_data_count(0) <= \<const0>\;
  axi_ar_dbiterr <= \<const0>\;
  axi_ar_overflow <= \<const0>\;
  axi_ar_prog_empty <= \<const1>\;
  axi_ar_prog_full <= \<const0>\;
  axi_ar_rd_data_count(4) <= \<const0>\;
  axi_ar_rd_data_count(3) <= \<const0>\;
  axi_ar_rd_data_count(2) <= \<const0>\;
  axi_ar_rd_data_count(1) <= \<const0>\;
  axi_ar_rd_data_count(0) <= \<const0>\;
  axi_ar_sbiterr <= \<const0>\;
  axi_ar_underflow <= \<const0>\;
  axi_ar_wr_data_count(4) <= \<const0>\;
  axi_ar_wr_data_count(3) <= \<const0>\;
  axi_ar_wr_data_count(2) <= \<const0>\;
  axi_ar_wr_data_count(1) <= \<const0>\;
  axi_ar_wr_data_count(0) <= \<const0>\;
  axi_aw_data_count(4) <= \<const0>\;
  axi_aw_data_count(3) <= \<const0>\;
  axi_aw_data_count(2) <= \<const0>\;
  axi_aw_data_count(1) <= \<const0>\;
  axi_aw_data_count(0) <= \<const0>\;
  axi_aw_dbiterr <= \<const0>\;
  axi_aw_overflow <= \<const0>\;
  axi_aw_prog_empty <= \<const1>\;
  axi_aw_prog_full <= \<const0>\;
  axi_aw_rd_data_count(4) <= \<const0>\;
  axi_aw_rd_data_count(3) <= \<const0>\;
  axi_aw_rd_data_count(2) <= \<const0>\;
  axi_aw_rd_data_count(1) <= \<const0>\;
  axi_aw_rd_data_count(0) <= \<const0>\;
  axi_aw_sbiterr <= \<const0>\;
  axi_aw_underflow <= \<const0>\;
  axi_aw_wr_data_count(4) <= \<const0>\;
  axi_aw_wr_data_count(3) <= \<const0>\;
  axi_aw_wr_data_count(2) <= \<const0>\;
  axi_aw_wr_data_count(1) <= \<const0>\;
  axi_aw_wr_data_count(0) <= \<const0>\;
  axi_b_data_count(4) <= \<const0>\;
  axi_b_data_count(3) <= \<const0>\;
  axi_b_data_count(2) <= \<const0>\;
  axi_b_data_count(1) <= \<const0>\;
  axi_b_data_count(0) <= \<const0>\;
  axi_b_dbiterr <= \<const0>\;
  axi_b_overflow <= \<const0>\;
  axi_b_prog_empty <= \<const1>\;
  axi_b_prog_full <= \<const0>\;
  axi_b_rd_data_count(4) <= \<const0>\;
  axi_b_rd_data_count(3) <= \<const0>\;
  axi_b_rd_data_count(2) <= \<const0>\;
  axi_b_rd_data_count(1) <= \<const0>\;
  axi_b_rd_data_count(0) <= \<const0>\;
  axi_b_sbiterr <= \<const0>\;
  axi_b_underflow <= \<const0>\;
  axi_b_wr_data_count(4) <= \<const0>\;
  axi_b_wr_data_count(3) <= \<const0>\;
  axi_b_wr_data_count(2) <= \<const0>\;
  axi_b_wr_data_count(1) <= \<const0>\;
  axi_b_wr_data_count(0) <= \<const0>\;
  axi_r_data_count(10) <= \<const0>\;
  axi_r_data_count(9) <= \<const0>\;
  axi_r_data_count(8) <= \<const0>\;
  axi_r_data_count(7) <= \<const0>\;
  axi_r_data_count(6) <= \<const0>\;
  axi_r_data_count(5) <= \<const0>\;
  axi_r_data_count(4) <= \<const0>\;
  axi_r_data_count(3) <= \<const0>\;
  axi_r_data_count(2) <= \<const0>\;
  axi_r_data_count(1) <= \<const0>\;
  axi_r_data_count(0) <= \<const0>\;
  axi_r_dbiterr <= \<const0>\;
  axi_r_overflow <= \<const0>\;
  axi_r_prog_empty <= \<const1>\;
  axi_r_prog_full <= \<const0>\;
  axi_r_rd_data_count(10) <= \<const0>\;
  axi_r_rd_data_count(9) <= \<const0>\;
  axi_r_rd_data_count(8) <= \<const0>\;
  axi_r_rd_data_count(7) <= \<const0>\;
  axi_r_rd_data_count(6) <= \<const0>\;
  axi_r_rd_data_count(5) <= \<const0>\;
  axi_r_rd_data_count(4) <= \<const0>\;
  axi_r_rd_data_count(3) <= \<const0>\;
  axi_r_rd_data_count(2) <= \<const0>\;
  axi_r_rd_data_count(1) <= \<const0>\;
  axi_r_rd_data_count(0) <= \<const0>\;
  axi_r_sbiterr <= \<const0>\;
  axi_r_underflow <= \<const0>\;
  axi_r_wr_data_count(10) <= \<const0>\;
  axi_r_wr_data_count(9) <= \<const0>\;
  axi_r_wr_data_count(8) <= \<const0>\;
  axi_r_wr_data_count(7) <= \<const0>\;
  axi_r_wr_data_count(6) <= \<const0>\;
  axi_r_wr_data_count(5) <= \<const0>\;
  axi_r_wr_data_count(4) <= \<const0>\;
  axi_r_wr_data_count(3) <= \<const0>\;
  axi_r_wr_data_count(2) <= \<const0>\;
  axi_r_wr_data_count(1) <= \<const0>\;
  axi_r_wr_data_count(0) <= \<const0>\;
  axi_w_data_count(10) <= \<const0>\;
  axi_w_data_count(9) <= \<const0>\;
  axi_w_data_count(8) <= \<const0>\;
  axi_w_data_count(7) <= \<const0>\;
  axi_w_data_count(6) <= \<const0>\;
  axi_w_data_count(5) <= \<const0>\;
  axi_w_data_count(4) <= \<const0>\;
  axi_w_data_count(3) <= \<const0>\;
  axi_w_data_count(2) <= \<const0>\;
  axi_w_data_count(1) <= \<const0>\;
  axi_w_data_count(0) <= \<const0>\;
  axi_w_dbiterr <= \<const0>\;
  axi_w_overflow <= \<const0>\;
  axi_w_prog_empty <= \<const1>\;
  axi_w_prog_full <= \<const0>\;
  axi_w_rd_data_count(10) <= \<const0>\;
  axi_w_rd_data_count(9) <= \<const0>\;
  axi_w_rd_data_count(8) <= \<const0>\;
  axi_w_rd_data_count(7) <= \<const0>\;
  axi_w_rd_data_count(6) <= \<const0>\;
  axi_w_rd_data_count(5) <= \<const0>\;
  axi_w_rd_data_count(4) <= \<const0>\;
  axi_w_rd_data_count(3) <= \<const0>\;
  axi_w_rd_data_count(2) <= \<const0>\;
  axi_w_rd_data_count(1) <= \<const0>\;
  axi_w_rd_data_count(0) <= \<const0>\;
  axi_w_sbiterr <= \<const0>\;
  axi_w_underflow <= \<const0>\;
  axi_w_wr_data_count(10) <= \<const0>\;
  axi_w_wr_data_count(9) <= \<const0>\;
  axi_w_wr_data_count(8) <= \<const0>\;
  axi_w_wr_data_count(7) <= \<const0>\;
  axi_w_wr_data_count(6) <= \<const0>\;
  axi_w_wr_data_count(5) <= \<const0>\;
  axi_w_wr_data_count(4) <= \<const0>\;
  axi_w_wr_data_count(3) <= \<const0>\;
  axi_w_wr_data_count(2) <= \<const0>\;
  axi_w_wr_data_count(1) <= \<const0>\;
  axi_w_wr_data_count(0) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9) <= \<const0>\;
  axis_data_count(8) <= \<const0>\;
  axis_data_count(7) <= \<const0>\;
  axis_data_count(6) <= \<const0>\;
  axis_data_count(5) <= \<const0>\;
  axis_data_count(4) <= \<const0>\;
  axis_data_count(3) <= \<const0>\;
  axis_data_count(2) <= \<const0>\;
  axis_data_count(1) <= \<const0>\;
  axis_data_count(0) <= \<const0>\;
  axis_dbiterr <= \<const0>\;
  axis_overflow <= \<const0>\;
  axis_prog_empty <= \<const1>\;
  axis_prog_full <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9) <= \<const0>\;
  axis_rd_data_count(8) <= \<const0>\;
  axis_rd_data_count(7) <= \<const0>\;
  axis_rd_data_count(6) <= \<const0>\;
  axis_rd_data_count(5) <= \<const0>\;
  axis_rd_data_count(4) <= \<const0>\;
  axis_rd_data_count(3) <= \<const0>\;
  axis_rd_data_count(2) <= \<const0>\;
  axis_rd_data_count(1) <= \<const0>\;
  axis_rd_data_count(0) <= \<const0>\;
  axis_sbiterr <= \<const0>\;
  axis_underflow <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9) <= \<const0>\;
  axis_wr_data_count(8) <= \<const0>\;
  axis_wr_data_count(7) <= \<const0>\;
  axis_wr_data_count(6) <= \<const0>\;
  axis_wr_data_count(5) <= \<const0>\;
  axis_wr_data_count(4) <= \<const0>\;
  axis_wr_data_count(3) <= \<const0>\;
  axis_wr_data_count(2) <= \<const0>\;
  axis_wr_data_count(1) <= \<const0>\;
  axis_wr_data_count(0) <= \<const0>\;
  data_count(9) <= \<const0>\;
  data_count(8) <= \<const0>\;
  data_count(7) <= \<const0>\;
  data_count(6) <= \<const0>\;
  data_count(5) <= \<const0>\;
  data_count(4) <= \<const0>\;
  data_count(3) <= \<const0>\;
  data_count(2) <= \<const0>\;
  data_count(1) <= \<const0>\;
  data_count(0) <= \<const0>\;
  dbiterr <= \<const0>\;
  m_axi_araddr(31) <= \<const0>\;
  m_axi_araddr(30) <= \<const0>\;
  m_axi_araddr(29) <= \<const0>\;
  m_axi_araddr(28) <= \<const0>\;
  m_axi_araddr(27) <= \<const0>\;
  m_axi_araddr(26) <= \<const0>\;
  m_axi_araddr(25) <= \<const0>\;
  m_axi_araddr(24) <= \<const0>\;
  m_axi_araddr(23) <= \<const0>\;
  m_axi_araddr(22) <= \<const0>\;
  m_axi_araddr(21) <= \<const0>\;
  m_axi_araddr(20) <= \<const0>\;
  m_axi_araddr(19) <= \<const0>\;
  m_axi_araddr(18) <= \<const0>\;
  m_axi_araddr(17) <= \<const0>\;
  m_axi_araddr(16) <= \<const0>\;
  m_axi_araddr(15) <= \<const0>\;
  m_axi_araddr(14) <= \<const0>\;
  m_axi_araddr(13) <= \<const0>\;
  m_axi_araddr(12) <= \<const0>\;
  m_axi_araddr(11) <= \<const0>\;
  m_axi_araddr(10) <= \<const0>\;
  m_axi_araddr(9) <= \<const0>\;
  m_axi_araddr(8) <= \<const0>\;
  m_axi_araddr(7) <= \<const0>\;
  m_axi_araddr(6) <= \<const0>\;
  m_axi_araddr(5) <= \<const0>\;
  m_axi_araddr(4) <= \<const0>\;
  m_axi_araddr(3) <= \<const0>\;
  m_axi_araddr(2) <= \<const0>\;
  m_axi_araddr(1) <= \<const0>\;
  m_axi_araddr(0) <= \<const0>\;
  m_axi_arburst(1) <= \<const0>\;
  m_axi_arburst(0) <= \<const0>\;
  m_axi_arcache(3) <= \<const0>\;
  m_axi_arcache(2) <= \<const0>\;
  m_axi_arcache(1) <= \<const0>\;
  m_axi_arcache(0) <= \<const0>\;
  m_axi_arid(0) <= \<const0>\;
  m_axi_arlen(7) <= \<const0>\;
  m_axi_arlen(6) <= \<const0>\;
  m_axi_arlen(5) <= \<const0>\;
  m_axi_arlen(4) <= \<const0>\;
  m_axi_arlen(3) <= \<const0>\;
  m_axi_arlen(2) <= \<const0>\;
  m_axi_arlen(1) <= \<const0>\;
  m_axi_arlen(0) <= \<const0>\;
  m_axi_arlock(0) <= \<const0>\;
  m_axi_arprot(2) <= \<const0>\;
  m_axi_arprot(1) <= \<const0>\;
  m_axi_arprot(0) <= \<const0>\;
  m_axi_arqos(3) <= \<const0>\;
  m_axi_arqos(2) <= \<const0>\;
  m_axi_arqos(1) <= \<const0>\;
  m_axi_arqos(0) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(2) <= \<const0>\;
  m_axi_arsize(1) <= \<const0>\;
  m_axi_arsize(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_arvalid <= \<const0>\;
  m_axi_awaddr(31) <= \<const0>\;
  m_axi_awaddr(30) <= \<const0>\;
  m_axi_awaddr(29) <= \<const0>\;
  m_axi_awaddr(28) <= \<const0>\;
  m_axi_awaddr(27) <= \<const0>\;
  m_axi_awaddr(26) <= \<const0>\;
  m_axi_awaddr(25) <= \<const0>\;
  m_axi_awaddr(24) <= \<const0>\;
  m_axi_awaddr(23) <= \<const0>\;
  m_axi_awaddr(22) <= \<const0>\;
  m_axi_awaddr(21) <= \<const0>\;
  m_axi_awaddr(20) <= \<const0>\;
  m_axi_awaddr(19) <= \<const0>\;
  m_axi_awaddr(18) <= \<const0>\;
  m_axi_awaddr(17) <= \<const0>\;
  m_axi_awaddr(16) <= \<const0>\;
  m_axi_awaddr(15) <= \<const0>\;
  m_axi_awaddr(14) <= \<const0>\;
  m_axi_awaddr(13) <= \<const0>\;
  m_axi_awaddr(12) <= \<const0>\;
  m_axi_awaddr(11) <= \<const0>\;
  m_axi_awaddr(10) <= \<const0>\;
  m_axi_awaddr(9) <= \<const0>\;
  m_axi_awaddr(8) <= \<const0>\;
  m_axi_awaddr(7) <= \<const0>\;
  m_axi_awaddr(6) <= \<const0>\;
  m_axi_awaddr(5) <= \<const0>\;
  m_axi_awaddr(4) <= \<const0>\;
  m_axi_awaddr(3) <= \<const0>\;
  m_axi_awaddr(2) <= \<const0>\;
  m_axi_awaddr(1) <= \<const0>\;
  m_axi_awaddr(0) <= \<const0>\;
  m_axi_awburst(1) <= \<const0>\;
  m_axi_awburst(0) <= \<const0>\;
  m_axi_awcache(3) <= \<const0>\;
  m_axi_awcache(2) <= \<const0>\;
  m_axi_awcache(1) <= \<const0>\;
  m_axi_awcache(0) <= \<const0>\;
  m_axi_awid(0) <= \<const0>\;
  m_axi_awlen(7) <= \<const0>\;
  m_axi_awlen(6) <= \<const0>\;
  m_axi_awlen(5) <= \<const0>\;
  m_axi_awlen(4) <= \<const0>\;
  m_axi_awlen(3) <= \<const0>\;
  m_axi_awlen(2) <= \<const0>\;
  m_axi_awlen(1) <= \<const0>\;
  m_axi_awlen(0) <= \<const0>\;
  m_axi_awlock(0) <= \<const0>\;
  m_axi_awprot(2) <= \<const0>\;
  m_axi_awprot(1) <= \<const0>\;
  m_axi_awprot(0) <= \<const0>\;
  m_axi_awqos(3) <= \<const0>\;
  m_axi_awqos(2) <= \<const0>\;
  m_axi_awqos(1) <= \<const0>\;
  m_axi_awqos(0) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(2) <= \<const0>\;
  m_axi_awsize(1) <= \<const0>\;
  m_axi_awsize(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_awvalid <= \<const0>\;
  m_axi_bready <= \<const0>\;
  m_axi_rready <= \<const0>\;
  m_axi_wdata(63) <= \<const0>\;
  m_axi_wdata(62) <= \<const0>\;
  m_axi_wdata(61) <= \<const0>\;
  m_axi_wdata(60) <= \<const0>\;
  m_axi_wdata(59) <= \<const0>\;
  m_axi_wdata(58) <= \<const0>\;
  m_axi_wdata(57) <= \<const0>\;
  m_axi_wdata(56) <= \<const0>\;
  m_axi_wdata(55) <= \<const0>\;
  m_axi_wdata(54) <= \<const0>\;
  m_axi_wdata(53) <= \<const0>\;
  m_axi_wdata(52) <= \<const0>\;
  m_axi_wdata(51) <= \<const0>\;
  m_axi_wdata(50) <= \<const0>\;
  m_axi_wdata(49) <= \<const0>\;
  m_axi_wdata(48) <= \<const0>\;
  m_axi_wdata(47) <= \<const0>\;
  m_axi_wdata(46) <= \<const0>\;
  m_axi_wdata(45) <= \<const0>\;
  m_axi_wdata(44) <= \<const0>\;
  m_axi_wdata(43) <= \<const0>\;
  m_axi_wdata(42) <= \<const0>\;
  m_axi_wdata(41) <= \<const0>\;
  m_axi_wdata(40) <= \<const0>\;
  m_axi_wdata(39) <= \<const0>\;
  m_axi_wdata(38) <= \<const0>\;
  m_axi_wdata(37) <= \<const0>\;
  m_axi_wdata(36) <= \<const0>\;
  m_axi_wdata(35) <= \<const0>\;
  m_axi_wdata(34) <= \<const0>\;
  m_axi_wdata(33) <= \<const0>\;
  m_axi_wdata(32) <= \<const0>\;
  m_axi_wdata(31) <= \<const0>\;
  m_axi_wdata(30) <= \<const0>\;
  m_axi_wdata(29) <= \<const0>\;
  m_axi_wdata(28) <= \<const0>\;
  m_axi_wdata(27) <= \<const0>\;
  m_axi_wdata(26) <= \<const0>\;
  m_axi_wdata(25) <= \<const0>\;
  m_axi_wdata(24) <= \<const0>\;
  m_axi_wdata(23) <= \<const0>\;
  m_axi_wdata(22) <= \<const0>\;
  m_axi_wdata(21) <= \<const0>\;
  m_axi_wdata(20) <= \<const0>\;
  m_axi_wdata(19) <= \<const0>\;
  m_axi_wdata(18) <= \<const0>\;
  m_axi_wdata(17) <= \<const0>\;
  m_axi_wdata(16) <= \<const0>\;
  m_axi_wdata(15) <= \<const0>\;
  m_axi_wdata(14) <= \<const0>\;
  m_axi_wdata(13) <= \<const0>\;
  m_axi_wdata(12) <= \<const0>\;
  m_axi_wdata(11) <= \<const0>\;
  m_axi_wdata(10) <= \<const0>\;
  m_axi_wdata(9) <= \<const0>\;
  m_axi_wdata(8) <= \<const0>\;
  m_axi_wdata(7) <= \<const0>\;
  m_axi_wdata(6) <= \<const0>\;
  m_axi_wdata(5) <= \<const0>\;
  m_axi_wdata(4) <= \<const0>\;
  m_axi_wdata(3) <= \<const0>\;
  m_axi_wdata(2) <= \<const0>\;
  m_axi_wdata(1) <= \<const0>\;
  m_axi_wdata(0) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \<const0>\;
  m_axi_wstrb(7) <= \<const0>\;
  m_axi_wstrb(6) <= \<const0>\;
  m_axi_wstrb(5) <= \<const0>\;
  m_axi_wstrb(4) <= \<const0>\;
  m_axi_wstrb(3) <= \<const0>\;
  m_axi_wstrb(2) <= \<const0>\;
  m_axi_wstrb(1) <= \<const0>\;
  m_axi_wstrb(0) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  m_axi_wvalid <= \<const0>\;
  m_axis_tdata(7) <= \<const0>\;
  m_axis_tdata(6) <= \<const0>\;
  m_axis_tdata(5) <= \<const0>\;
  m_axis_tdata(4) <= \<const0>\;
  m_axis_tdata(3) <= \<const0>\;
  m_axis_tdata(2) <= \<const0>\;
  m_axis_tdata(1) <= \<const0>\;
  m_axis_tdata(0) <= \<const0>\;
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(3) <= \<const0>\;
  m_axis_tuser(2) <= \<const0>\;
  m_axis_tuser(1) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  m_axis_tvalid <= \<const0>\;
  overflow <= \<const0>\;
  prog_empty <= \<const0>\;
  prog_full <= \<const0>\;
  rd_rst_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_wready <= \<const0>\;
  s_axis_tready <= \<const0>\;
  sbiterr <= \<const0>\;
  underflow <= \<const0>\;
  valid <= \<const0>\;
  wr_ack <= \<const0>\;
  wr_data_count(9) <= \<const0>\;
  wr_data_count(8) <= \<const0>\;
  wr_data_count(7) <= \<const0>\;
  wr_data_count(6) <= \<const0>\;
  wr_data_count(5) <= \<const0>\;
  wr_data_count(4) <= \<const0>\;
  wr_data_count(3) <= \<const0>\;
  wr_data_count(2) <= \<const0>\;
  wr_data_count(1) <= \<const0>\;
  wr_data_count(0) <= \<const0>\;
  wr_rst_busy <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst_fifo_gen: entity work.buf_fifo_fifo_generator_v13_2_5_synth
     port map (
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      rd_clk => rd_clk,
      rd_data_count(9 downto 0) => rd_data_count(9 downto 0),
      rd_en => rd_en,
      wr_clk => wr_clk,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity buf_fifo is
  port (
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 7 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of buf_fifo : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of buf_fifo : entity is "buf_fifo,fifo_generator_v13_2_5,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of buf_fifo : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of buf_fifo : entity is "fifo_generator_v13_2_5,Vivado 2019.2";
end buf_fifo;

architecture STRUCTURE of buf_fifo is
  signal NLW_U0_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_U0_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_U0_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal NLW_U0_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_U0_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_U0_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_U0_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of U0 : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of U0 : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of U0 : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of U0 : label is 8;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of U0 : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of U0 : label is 1;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of U0 : label is 1;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of U0 : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of U0 : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of U0 : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of U0 : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of U0 : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 1;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of U0 : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of U0 : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of U0 : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of U0 : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of U0 : label is 0;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of U0 : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of U0 : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of U0 : label is 8;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of U0 : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of U0 : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of U0 : label is 1;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of U0 : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of U0 : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of U0 : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of U0 : label is 8;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of U0 : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of U0 : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of U0 : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of U0 : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of U0 : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of U0 : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of U0 : label is 1;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of U0 : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of U0 : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of U0 : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of U0 : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of U0 : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of U0 : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of U0 : label is 1;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of U0 : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of U0 : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of U0 : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of U0 : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of U0 : label is 1;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of U0 : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of U0 : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of U0 : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of U0 : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of U0 : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of U0 : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of U0 : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of U0 : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of U0 : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of U0 : label is 1;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of U0 : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of U0 : label is 0;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of U0 : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of U0 : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of U0 : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of U0 : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of U0 : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of U0 : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of U0 : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of U0 : label is 2;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of U0 : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of U0 : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of U0 : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of U0 : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of U0 : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of U0 : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of U0 : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of U0 : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of U0 : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of U0 : label is 1;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of U0 : label is 0;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of U0 : label is "1kx18";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of U0 : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of U0 : label is "1kx36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of U0 : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of U0 : label is 2;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of U0 : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of U0 : label is 3;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of U0 : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of U0 : label is 1021;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of U0 : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of U0 : label is 1020;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of U0 : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of U0 : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of U0 : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of U0 : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of U0 : label is 1024;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of U0 : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of U0 : label is 10;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of U0 : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of U0 : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of U0 : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of U0 : label is 2;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of U0 : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of U0 : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of U0 : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of U0 : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of U0 : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of U0 : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of U0 : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of U0 : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of U0 : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of U0 : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of U0 : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of U0 : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of U0 : label is 0;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of U0 : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of U0 : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of U0 : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of U0 : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of U0 : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of U0 : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of U0 : label is 10;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of U0 : label is 1024;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of U0 : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of U0 : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of U0 : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of U0 : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of U0 : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of U0 : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of U0 : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of U0 : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of U0 : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of U0 : label is 1;
  attribute x_interface_info : string;
  attribute x_interface_info of empty : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY";
  attribute x_interface_info of full : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL";
  attribute x_interface_info of rd_clk : signal is "xilinx.com:signal:clock:1.0 read_clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of rd_clk : signal is "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of rd_en : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN";
  attribute x_interface_info of wr_clk : signal is "xilinx.com:signal:clock:1.0 write_clk CLK";
  attribute x_interface_parameter of wr_clk : signal is "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0";
  attribute x_interface_info of wr_en : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN";
  attribute x_interface_info of din : signal is "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA";
  attribute x_interface_info of dout : signal is "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA";
begin
U0: entity work.buf_fifo_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_U0_almost_empty_UNCONNECTED,
      almost_full => NLW_U0_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_U0_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_U0_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_U0_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_U0_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_U0_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_U0_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_U0_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_U0_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_U0_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_U0_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_U0_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_U0_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_U0_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_U0_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_U0_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_U0_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_U0_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_U0_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_U0_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_U0_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_U0_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_U0_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_U0_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_U0_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_U0_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_U0_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_U0_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_U0_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_U0_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_U0_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_U0_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_U0_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_U0_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_U0_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_U0_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_U0_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_U0_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_U0_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_U0_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_U0_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_U0_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_U0_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_U0_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_U0_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_U0_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_U0_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_U0_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_U0_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_U0_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_U0_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_U0_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_U0_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_U0_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_U0_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => '0',
      data_count(9 downto 0) => NLW_U0_data_count_UNCONNECTED(9 downto 0),
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      din(7 downto 0) => din(7 downto 0),
      dout(7 downto 0) => dout(7 downto 0),
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_U0_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_U0_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_U0_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(0) => NLW_U0_m_axi_arid_UNCONNECTED(0),
      m_axi_arlen(7 downto 0) => NLW_U0_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(0) => NLW_U0_m_axi_arlock_UNCONNECTED(0),
      m_axi_arprot(2 downto 0) => NLW_U0_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_U0_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_U0_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_U0_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_U0_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_U0_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_U0_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_U0_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_U0_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(0) => NLW_U0_m_axi_awid_UNCONNECTED(0),
      m_axi_awlen(7 downto 0) => NLW_U0_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(0) => NLW_U0_m_axi_awlock_UNCONNECTED(0),
      m_axi_awprot(2 downto 0) => NLW_U0_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_U0_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_U0_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_U0_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_U0_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_U0_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(0) => '0',
      m_axi_bready => NLW_U0_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(0) => '0',
      m_axi_rlast => '0',
      m_axi_rready => NLW_U0_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_U0_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(0) => NLW_U0_m_axi_wid_UNCONNECTED(0),
      m_axi_wlast => NLW_U0_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_U0_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_U0_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_U0_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(7 downto 0) => NLW_U0_m_axis_tdata_UNCONNECTED(7 downto 0),
      m_axis_tdest(0) => NLW_U0_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_U0_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(0) => NLW_U0_m_axis_tkeep_UNCONNECTED(0),
      m_axis_tlast => NLW_U0_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(0) => NLW_U0_m_axis_tstrb_UNCONNECTED(0),
      m_axis_tuser(3 downto 0) => NLW_U0_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_U0_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_U0_overflow_UNCONNECTED,
      prog_empty => NLW_U0_prog_empty_UNCONNECTED,
      prog_empty_thresh(9 downto 0) => B"0000000000",
      prog_empty_thresh_assert(9 downto 0) => B"0000000000",
      prog_empty_thresh_negate(9 downto 0) => B"0000000000",
      prog_full => NLW_U0_prog_full_UNCONNECTED,
      prog_full_thresh(9 downto 0) => B"0000000000",
      prog_full_thresh_assert(9 downto 0) => B"0000000000",
      prog_full_thresh_negate(9 downto 0) => B"0000000000",
      rd_clk => rd_clk,
      rd_data_count(9 downto 0) => rd_data_count(9 downto 0),
      rd_en => rd_en,
      rd_rst => '0',
      rd_rst_busy => NLW_U0_rd_rst_busy_UNCONNECTED,
      rst => '0',
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(0) => '0',
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(0) => '0',
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(0) => '0',
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(0) => '0',
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(0) => NLW_U0_s_axi_bid_UNCONNECTED(0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_U0_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(0) => NLW_U0_s_axi_rid_UNCONNECTED(0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_U0_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(7 downto 0) => B"00000000",
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(0) => '0',
      s_axis_tlast => '0',
      s_axis_tready => NLW_U0_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(0) => '0',
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_U0_underflow_UNCONNECTED,
      valid => NLW_U0_valid_UNCONNECTED,
      wr_ack => NLW_U0_wr_ack_UNCONNECTED,
      wr_clk => wr_clk,
      wr_data_count(9 downto 0) => NLW_U0_wr_data_count_UNCONNECTED(9 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_U0_wr_rst_busy_UNCONNECTED
    );
end STRUCTURE;
