--Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
--Date        : Thu Jun 28 11:30:56 2018
--Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    I_b0_b1 : in STD_LOGIC;
    I_b10_b11 : in STD_LOGIC;
    I_b12_b13 : in STD_LOGIC;
    I_b14_b15 : in STD_LOGIC;
    I_b2_b3 : in STD_LOGIC;
    I_b4_b5 : in STD_LOGIC;
    I_b6_b7 : in STD_LOGIC;
    I_b8_b9 : in STD_LOGIC;
    Q_b0_b1 : in STD_LOGIC;
    Q_b10_b11 : in STD_LOGIC;
    Q_b12_b13 : in STD_LOGIC;
    Q_b14_b15 : in STD_LOGIC;
    Q_b2_b3 : in STD_LOGIC;
    Q_b4_b5 : in STD_LOGIC;
    Q_b6_b7 : in STD_LOGIC;
    Q_b8_b9 : in STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    clk_adc : in STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 15 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 1 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    SPI0_SCLK_O : out STD_LOGIC;
    SPI0_MOSI_O : out STD_LOGIC;
    SPI0_SS_O : out STD_LOGIC;
    SPI0_SS1_O : out STD_LOGIC;
    SPI0_SS2_O : out STD_LOGIC;
    gpio_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I_b0_b1 : in STD_LOGIC;
    I_b2_b3 : in STD_LOGIC;
    I_b4_b5 : in STD_LOGIC;
    I_b6_b7 : in STD_LOGIC;
    I_b8_b9 : in STD_LOGIC;
    I_b10_b11 : in STD_LOGIC;
    I_b12_b13 : in STD_LOGIC;
    I_b14_b15 : in STD_LOGIC;
    Q_b0_b1 : in STD_LOGIC;
    Q_b2_b3 : in STD_LOGIC;
    Q_b4_b5 : in STD_LOGIC;
    Q_b6_b7 : in STD_LOGIC;
    Q_b8_b9 : in STD_LOGIC;
    Q_b10_b11 : in STD_LOGIC;
    Q_b12_b13 : in STD_LOGIC;
    Q_b14_b15 : in STD_LOGIC;
    clk_adc : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(1 downto 0) => DDR_dm(1 downto 0),
      DDR_dq(15 downto 0) => DDR_dq(15 downto 0),
      DDR_dqs_n(1 downto 0) => DDR_dqs_n(1 downto 0),
      DDR_dqs_p(1 downto 0) => DDR_dqs_p(1 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(31 downto 0) => FIXED_IO_mio(31 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      I_b0_b1 => I_b0_b1,
      I_b10_b11 => I_b10_b11,
      I_b12_b13 => I_b12_b13,
      I_b14_b15 => I_b14_b15,
      I_b2_b3 => I_b2_b3,
      I_b4_b5 => I_b4_b5,
      I_b6_b7 => I_b6_b7,
      I_b8_b9 => I_b8_b9,
      Q_b0_b1 => Q_b0_b1,
      Q_b10_b11 => Q_b10_b11,
      Q_b12_b13 => Q_b12_b13,
      Q_b14_b15 => Q_b14_b15,
      Q_b2_b3 => Q_b2_b3,
      Q_b4_b5 => Q_b4_b5,
      Q_b6_b7 => Q_b6_b7,
      Q_b8_b9 => Q_b8_b9,
      SPI0_MOSI_O => SPI0_MOSI_O,
      SPI0_SCLK_O => SPI0_SCLK_O,
      SPI0_SS1_O => SPI0_SS1_O,
      SPI0_SS2_O => SPI0_SS2_O,
      SPI0_SS_O => SPI0_SS_O,
      clk_adc => clk_adc,
      gpio_io_o(3 downto 0) => gpio_io_o(3 downto 0)
    );
end STRUCTURE;
