-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Thu Jun 28 11:38:09 2018
-- Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_dma_synchro_0_0_sim_netlist.vhdl
-- Design      : design_1_fifo_dma_synchro_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_dma_synchro is
  port (
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    S_AXIS_TVALID : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_dma_synchro;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_dma_synchro is
  signal \^s_axis_tready\ : STD_LOGIC;
  signal S_AXIS_TREADY_i_1_n_0 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \m_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[31]_i_2_n_0\ : STD_LOGIC;
  signal \m_data[31]_i_3_n_0\ : STD_LOGIC;
  signal \m_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \m_data[9]_i_1_n_0\ : STD_LOGIC;
  signal m_tlast0_out : STD_LOGIC;
  signal m_tlast_i_2_n_0 : STD_LOGIC;
  signal m_tlast_i_3_n_0 : STD_LOGIC;
  signal m_tlast_i_4_n_0 : STD_LOGIC;
  signal m_tlast_i_5_n_0 : STD_LOGIC;
  signal m_tlast_i_6_n_0 : STD_LOGIC;
  signal m_tlast_i_7_n_0 : STD_LOGIC;
  signal m_tlast_i_8_n_0 : STD_LOGIC;
  signal m_tlast_i_9_n_0 : STD_LOGIC;
  signal m_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal packetCounter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \packetCounter[0]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter[12]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[12]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[12]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[12]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[16]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[16]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[16]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[16]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[20]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[20]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[20]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[20]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[24]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[24]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[24]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[24]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[28]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[28]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[28]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[28]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[4]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[4]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[4]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[4]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[8]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[8]_i_3_n_0\ : STD_LOGIC;
  signal \packetCounter[8]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[8]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[31]_i_2_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[31]_i_2_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \NLW_packetCounter_reg[31]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_packetCounter_reg[31]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXIS_TREADY_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_data[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_data[10]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_data[11]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_data[12]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_data[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_data[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_data[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_data[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_data[17]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_data[18]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_data[19]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_data[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_data[20]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_data[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_data[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_data[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_data[24]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_data[25]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_data[26]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_data[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_data[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_data[29]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_data[2]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_data[30]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_data[31]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_data[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_data[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_data[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_data[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_data[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_data[8]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_data[9]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \packetCounter[0]_i_1\ : label is "soft_lutpair0";
begin
  S_AXIS_TREADY <= \^s_axis_tready\;
S_AXIS_TREADY_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => ARESETN,
      I2 => \^s_axis_tready\,
      O => S_AXIS_TREADY_i_1_n_0
    );
S_AXIS_TREADY_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => S_AXIS_TREADY_i_1_n_0,
      Q => \^s_axis_tready\,
      R => '0'
    );
\m_data[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(0),
      O => \m_data[0]_i_1_n_0\
    );
\m_data[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(10),
      O => \m_data[10]_i_1_n_0\
    );
\m_data[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(11),
      O => \m_data[11]_i_1_n_0\
    );
\m_data[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(12),
      O => \m_data[12]_i_1_n_0\
    );
\m_data[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(13),
      O => \m_data[13]_i_1_n_0\
    );
\m_data[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(14),
      O => \m_data[14]_i_1_n_0\
    );
\m_data[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(15),
      O => \m_data[15]_i_1_n_0\
    );
\m_data[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(16),
      O => \m_data[16]_i_1_n_0\
    );
\m_data[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(17),
      O => \m_data[17]_i_1_n_0\
    );
\m_data[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(18),
      O => \m_data[18]_i_1_n_0\
    );
\m_data[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(19),
      O => \m_data[19]_i_1_n_0\
    );
\m_data[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(1),
      O => \m_data[1]_i_1_n_0\
    );
\m_data[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(20),
      O => \m_data[20]_i_1_n_0\
    );
\m_data[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(21),
      O => \m_data[21]_i_1_n_0\
    );
\m_data[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(22),
      O => \m_data[22]_i_1_n_0\
    );
\m_data[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(23),
      O => \m_data[23]_i_1_n_0\
    );
\m_data[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(24),
      O => \m_data[24]_i_1_n_0\
    );
\m_data[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(25),
      O => \m_data[25]_i_1_n_0\
    );
\m_data[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(26),
      O => \m_data[26]_i_1_n_0\
    );
\m_data[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(27),
      O => \m_data[27]_i_1_n_0\
    );
\m_data[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(28),
      O => \m_data[28]_i_1_n_0\
    );
\m_data[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(29),
      O => \m_data[29]_i_1_n_0\
    );
\m_data[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(2),
      O => \m_data[2]_i_1_n_0\
    );
\m_data[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(30),
      O => \m_data[30]_i_1_n_0\
    );
\m_data[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETN,
      O => p_0_in
    );
\m_data[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => M_AXIS_TREADY,
      O => \m_data[31]_i_2_n_0\
    );
\m_data[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(31),
      O => \m_data[31]_i_3_n_0\
    );
\m_data[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(3),
      O => \m_data[3]_i_1_n_0\
    );
\m_data[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(4),
      O => \m_data[4]_i_1_n_0\
    );
\m_data[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(5),
      O => \m_data[5]_i_1_n_0\
    );
\m_data[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(6),
      O => \m_data[6]_i_1_n_0\
    );
\m_data[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(7),
      O => \m_data[7]_i_1_n_0\
    );
\m_data[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(8),
      O => \m_data[8]_i_1_n_0\
    );
\m_data[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => S_AXIS_TDATA(9),
      O => \m_data[9]_i_1_n_0\
    );
\m_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[0]_i_1_n_0\,
      Q => M_AXIS_TDATA(0),
      R => p_0_in
    );
\m_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[10]_i_1_n_0\,
      Q => M_AXIS_TDATA(10),
      R => p_0_in
    );
\m_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[11]_i_1_n_0\,
      Q => M_AXIS_TDATA(11),
      R => p_0_in
    );
\m_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[12]_i_1_n_0\,
      Q => M_AXIS_TDATA(12),
      R => p_0_in
    );
\m_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[13]_i_1_n_0\,
      Q => M_AXIS_TDATA(13),
      R => p_0_in
    );
\m_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[14]_i_1_n_0\,
      Q => M_AXIS_TDATA(14),
      R => p_0_in
    );
\m_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[15]_i_1_n_0\,
      Q => M_AXIS_TDATA(15),
      R => p_0_in
    );
\m_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[16]_i_1_n_0\,
      Q => M_AXIS_TDATA(16),
      R => p_0_in
    );
\m_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[17]_i_1_n_0\,
      Q => M_AXIS_TDATA(17),
      R => p_0_in
    );
\m_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[18]_i_1_n_0\,
      Q => M_AXIS_TDATA(18),
      R => p_0_in
    );
\m_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[19]_i_1_n_0\,
      Q => M_AXIS_TDATA(19),
      R => p_0_in
    );
\m_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[1]_i_1_n_0\,
      Q => M_AXIS_TDATA(1),
      R => p_0_in
    );
\m_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[20]_i_1_n_0\,
      Q => M_AXIS_TDATA(20),
      R => p_0_in
    );
\m_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[21]_i_1_n_0\,
      Q => M_AXIS_TDATA(21),
      R => p_0_in
    );
\m_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[22]_i_1_n_0\,
      Q => M_AXIS_TDATA(22),
      R => p_0_in
    );
\m_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[23]_i_1_n_0\,
      Q => M_AXIS_TDATA(23),
      R => p_0_in
    );
\m_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[24]_i_1_n_0\,
      Q => M_AXIS_TDATA(24),
      R => p_0_in
    );
\m_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[25]_i_1_n_0\,
      Q => M_AXIS_TDATA(25),
      R => p_0_in
    );
\m_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[26]_i_1_n_0\,
      Q => M_AXIS_TDATA(26),
      R => p_0_in
    );
\m_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[27]_i_1_n_0\,
      Q => M_AXIS_TDATA(27),
      R => p_0_in
    );
\m_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[28]_i_1_n_0\,
      Q => M_AXIS_TDATA(28),
      R => p_0_in
    );
\m_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[29]_i_1_n_0\,
      Q => M_AXIS_TDATA(29),
      R => p_0_in
    );
\m_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[2]_i_1_n_0\,
      Q => M_AXIS_TDATA(2),
      R => p_0_in
    );
\m_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[30]_i_1_n_0\,
      Q => M_AXIS_TDATA(30),
      R => p_0_in
    );
\m_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[31]_i_3_n_0\,
      Q => M_AXIS_TDATA(31),
      R => p_0_in
    );
\m_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[3]_i_1_n_0\,
      Q => M_AXIS_TDATA(3),
      R => p_0_in
    );
\m_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[4]_i_1_n_0\,
      Q => M_AXIS_TDATA(4),
      R => p_0_in
    );
\m_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[5]_i_1_n_0\,
      Q => M_AXIS_TDATA(5),
      R => p_0_in
    );
\m_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[6]_i_1_n_0\,
      Q => M_AXIS_TDATA(6),
      R => p_0_in
    );
\m_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[7]_i_1_n_0\,
      Q => M_AXIS_TDATA(7),
      R => p_0_in
    );
\m_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[8]_i_1_n_0\,
      Q => M_AXIS_TDATA(8),
      R => p_0_in
    );
\m_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => \m_data[9]_i_1_n_0\,
      Q => M_AXIS_TDATA(9),
      R => p_0_in
    );
m_tlast_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => M_AXIS_TREADY,
      I1 => m_tlast_i_2_n_0,
      I2 => m_tlast_i_3_n_0,
      I3 => m_tlast_i_4_n_0,
      I4 => m_tlast_i_5_n_0,
      O => m_tlast0_out
    );
m_tlast_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => packetCounter(18),
      I1 => packetCounter(19),
      I2 => packetCounter(16),
      I3 => packetCounter(17),
      I4 => m_tlast_i_6_n_0,
      O => m_tlast_i_2_n_0
    );
m_tlast_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => packetCounter(26),
      I1 => packetCounter(27),
      I2 => packetCounter(24),
      I3 => packetCounter(25),
      I4 => m_tlast_i_7_n_0,
      O => m_tlast_i_3_n_0
    );
m_tlast_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => packetCounter(2),
      I1 => packetCounter(3),
      I2 => packetCounter(0),
      I3 => packetCounter(1),
      I4 => m_tlast_i_8_n_0,
      O => m_tlast_i_4_n_0
    );
m_tlast_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFBFFF"
    )
        port map (
      I0 => packetCounter(11),
      I1 => packetCounter(10),
      I2 => packetCounter(8),
      I3 => packetCounter(9),
      I4 => m_tlast_i_9_n_0,
      O => m_tlast_i_5_n_0
    );
m_tlast_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packetCounter(21),
      I1 => packetCounter(20),
      I2 => packetCounter(23),
      I3 => packetCounter(22),
      O => m_tlast_i_6_n_0
    );
m_tlast_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packetCounter(29),
      I1 => packetCounter(28),
      I2 => packetCounter(31),
      I3 => packetCounter(30),
      O => m_tlast_i_7_n_0
    );
m_tlast_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => packetCounter(5),
      I1 => packetCounter(4),
      I2 => packetCounter(7),
      I3 => packetCounter(6),
      O => m_tlast_i_8_n_0
    );
m_tlast_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => packetCounter(12),
      I1 => packetCounter(13),
      I2 => packetCounter(15),
      I3 => packetCounter(14),
      O => m_tlast_i_9_n_0
    );
m_tlast_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => \m_data[31]_i_2_n_0\,
      D => m_tlast0_out,
      Q => M_AXIS_TLAST,
      R => p_0_in
    );
m_tvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => S_AXIS_TVALID,
      I1 => M_AXIS_TREADY,
      I2 => ARESETN,
      O => m_tvalid_i_1_n_0
    );
m_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => m_tvalid_i_1_n_0,
      Q => M_AXIS_TVALID,
      R => '0'
    );
\packetCounter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => ARESETN,
      I1 => M_AXIS_TREADY,
      I2 => S_AXIS_TVALID,
      I3 => packetCounter(0),
      O => \packetCounter[0]_i_1_n_0\
    );
\packetCounter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(12),
      O => \packetCounter[12]_i_2_n_0\
    );
\packetCounter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(11),
      O => \packetCounter[12]_i_3_n_0\
    );
\packetCounter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(10),
      O => \packetCounter[12]_i_4_n_0\
    );
\packetCounter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(9),
      O => \packetCounter[12]_i_5_n_0\
    );
\packetCounter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(16),
      O => \packetCounter[16]_i_2_n_0\
    );
\packetCounter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(15),
      O => \packetCounter[16]_i_3_n_0\
    );
\packetCounter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(14),
      O => \packetCounter[16]_i_4_n_0\
    );
\packetCounter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(13),
      O => \packetCounter[16]_i_5_n_0\
    );
\packetCounter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(20),
      O => \packetCounter[20]_i_2_n_0\
    );
\packetCounter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(19),
      O => \packetCounter[20]_i_3_n_0\
    );
\packetCounter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(18),
      O => \packetCounter[20]_i_4_n_0\
    );
\packetCounter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(17),
      O => \packetCounter[20]_i_5_n_0\
    );
\packetCounter[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(24),
      O => \packetCounter[24]_i_2_n_0\
    );
\packetCounter[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(23),
      O => \packetCounter[24]_i_3_n_0\
    );
\packetCounter[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(22),
      O => \packetCounter[24]_i_4_n_0\
    );
\packetCounter[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(21),
      O => \packetCounter[24]_i_5_n_0\
    );
\packetCounter[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(28),
      O => \packetCounter[28]_i_2_n_0\
    );
\packetCounter[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(27),
      O => \packetCounter[28]_i_3_n_0\
    );
\packetCounter[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(26),
      O => \packetCounter[28]_i_4_n_0\
    );
\packetCounter[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(25),
      O => \packetCounter[28]_i_5_n_0\
    );
\packetCounter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => m_tvalid_i_1_n_0,
      I1 => m_tlast_i_2_n_0,
      I2 => m_tlast_i_3_n_0,
      I3 => m_tlast_i_4_n_0,
      I4 => m_tlast_i_5_n_0,
      O => \packetCounter[31]_i_1_n_0\
    );
\packetCounter[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(31),
      O => \packetCounter[31]_i_3_n_0\
    );
\packetCounter[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(30),
      O => \packetCounter[31]_i_4_n_0\
    );
\packetCounter[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(29),
      O => \packetCounter[31]_i_5_n_0\
    );
\packetCounter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(4),
      O => \packetCounter[4]_i_2_n_0\
    );
\packetCounter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(3),
      O => \packetCounter[4]_i_3_n_0\
    );
\packetCounter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(2),
      O => \packetCounter[4]_i_4_n_0\
    );
\packetCounter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(1),
      O => \packetCounter[4]_i_5_n_0\
    );
\packetCounter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(8),
      O => \packetCounter[8]_i_2_n_0\
    );
\packetCounter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(7),
      O => \packetCounter[8]_i_3_n_0\
    );
\packetCounter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(6),
      O => \packetCounter[8]_i_4_n_0\
    );
\packetCounter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => packetCounter(5),
      O => \packetCounter[8]_i_5_n_0\
    );
\packetCounter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \packetCounter[0]_i_1_n_0\,
      Q => packetCounter(0),
      R => '0'
    );
\packetCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(10),
      Q => packetCounter(10),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(11),
      Q => packetCounter(11),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(12),
      Q => packetCounter(12),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[8]_i_1_n_0\,
      CO(3) => \packetCounter_reg[12]_i_1_n_0\,
      CO(2) => \packetCounter_reg[12]_i_1_n_1\,
      CO(1) => \packetCounter_reg[12]_i_1_n_2\,
      CO(0) => \packetCounter_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \packetCounter[12]_i_2_n_0\,
      S(2) => \packetCounter[12]_i_3_n_0\,
      S(1) => \packetCounter[12]_i_4_n_0\,
      S(0) => \packetCounter[12]_i_5_n_0\
    );
\packetCounter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(13),
      Q => packetCounter(13),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(14),
      Q => packetCounter(14),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(15),
      Q => packetCounter(15),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(16),
      Q => packetCounter(16),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[12]_i_1_n_0\,
      CO(3) => \packetCounter_reg[16]_i_1_n_0\,
      CO(2) => \packetCounter_reg[16]_i_1_n_1\,
      CO(1) => \packetCounter_reg[16]_i_1_n_2\,
      CO(0) => \packetCounter_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \packetCounter[16]_i_2_n_0\,
      S(2) => \packetCounter[16]_i_3_n_0\,
      S(1) => \packetCounter[16]_i_4_n_0\,
      S(0) => \packetCounter[16]_i_5_n_0\
    );
\packetCounter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(17),
      Q => packetCounter(17),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(18),
      Q => packetCounter(18),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(19),
      Q => packetCounter(19),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(1),
      Q => packetCounter(1),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(20),
      Q => packetCounter(20),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[16]_i_1_n_0\,
      CO(3) => \packetCounter_reg[20]_i_1_n_0\,
      CO(2) => \packetCounter_reg[20]_i_1_n_1\,
      CO(1) => \packetCounter_reg[20]_i_1_n_2\,
      CO(0) => \packetCounter_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \packetCounter[20]_i_2_n_0\,
      S(2) => \packetCounter[20]_i_3_n_0\,
      S(1) => \packetCounter[20]_i_4_n_0\,
      S(0) => \packetCounter[20]_i_5_n_0\
    );
\packetCounter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(21),
      Q => packetCounter(21),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(22),
      Q => packetCounter(22),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(23),
      Q => packetCounter(23),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(24),
      Q => packetCounter(24),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[20]_i_1_n_0\,
      CO(3) => \packetCounter_reg[24]_i_1_n_0\,
      CO(2) => \packetCounter_reg[24]_i_1_n_1\,
      CO(1) => \packetCounter_reg[24]_i_1_n_2\,
      CO(0) => \packetCounter_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \packetCounter[24]_i_2_n_0\,
      S(2) => \packetCounter[24]_i_3_n_0\,
      S(1) => \packetCounter[24]_i_4_n_0\,
      S(0) => \packetCounter[24]_i_5_n_0\
    );
\packetCounter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(25),
      Q => packetCounter(25),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(26),
      Q => packetCounter(26),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(27),
      Q => packetCounter(27),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(28),
      Q => packetCounter(28),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[24]_i_1_n_0\,
      CO(3) => \packetCounter_reg[28]_i_1_n_0\,
      CO(2) => \packetCounter_reg[28]_i_1_n_1\,
      CO(1) => \packetCounter_reg[28]_i_1_n_2\,
      CO(0) => \packetCounter_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \packetCounter[28]_i_2_n_0\,
      S(2) => \packetCounter[28]_i_3_n_0\,
      S(1) => \packetCounter[28]_i_4_n_0\,
      S(0) => \packetCounter[28]_i_5_n_0\
    );
\packetCounter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(29),
      Q => packetCounter(29),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(2),
      Q => packetCounter(2),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(30),
      Q => packetCounter(30),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(31),
      Q => packetCounter(31),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[31]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_packetCounter_reg[31]_i_2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \packetCounter_reg[31]_i_2_n_2\,
      CO(0) => \packetCounter_reg[31]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_packetCounter_reg[31]_i_2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \packetCounter[31]_i_3_n_0\,
      S(1) => \packetCounter[31]_i_4_n_0\,
      S(0) => \packetCounter[31]_i_5_n_0\
    );
\packetCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(3),
      Q => packetCounter(3),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(4),
      Q => packetCounter(4),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \packetCounter_reg[4]_i_1_n_0\,
      CO(2) => \packetCounter_reg[4]_i_1_n_1\,
      CO(1) => \packetCounter_reg[4]_i_1_n_2\,
      CO(0) => \packetCounter_reg[4]_i_1_n_3\,
      CYINIT => packetCounter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \packetCounter[4]_i_2_n_0\,
      S(2) => \packetCounter[4]_i_3_n_0\,
      S(1) => \packetCounter[4]_i_4_n_0\,
      S(0) => \packetCounter[4]_i_5_n_0\
    );
\packetCounter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(5),
      Q => packetCounter(5),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(6),
      Q => packetCounter(6),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(7),
      Q => packetCounter(7),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(8),
      Q => packetCounter(8),
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[4]_i_1_n_0\,
      CO(3) => \packetCounter_reg[8]_i_1_n_0\,
      CO(2) => \packetCounter_reg[8]_i_1_n_1\,
      CO(1) => \packetCounter_reg[8]_i_1_n_2\,
      CO(0) => \packetCounter_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \packetCounter[8]_i_2_n_0\,
      S(2) => \packetCounter[8]_i_3_n_0\,
      S(1) => \packetCounter[8]_i_4_n_0\,
      S(0) => \packetCounter[8]_i_5_n_0\
    );
\packetCounter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => m_tvalid_i_1_n_0,
      D => data0(9),
      Q => packetCounter(9),
      R => \packetCounter[31]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    S_AXIS_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXIS_TVALID : in STD_LOGIC;
    M_AXIS_TREADY : in STD_LOGIC;
    S_AXIS_TREADY : out STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_TLAST : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_fifo_dma_synchro_0_0,fifo_dma_synchro,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "fifo_dma_synchro,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_fifo_dma_synchro
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      M_AXIS_TDATA(31 downto 0) => M_AXIS_TDATA(31 downto 0),
      M_AXIS_TLAST => M_AXIS_TLAST,
      M_AXIS_TREADY => M_AXIS_TREADY,
      M_AXIS_TVALID => M_AXIS_TVALID,
      S_AXIS_TDATA(31 downto 0) => S_AXIS_TDATA(31 downto 0),
      S_AXIS_TREADY => S_AXIS_TREADY,
      S_AXIS_TVALID => S_AXIS_TVALID
    );
end STRUCTURE;
