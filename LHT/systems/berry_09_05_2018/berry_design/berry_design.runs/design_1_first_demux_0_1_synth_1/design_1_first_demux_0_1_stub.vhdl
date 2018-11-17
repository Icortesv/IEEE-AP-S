-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Jun  6 00:55:10 2018
-- Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_first_demux_0_1_stub.vhdl
-- Design      : design_1_first_demux_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ACLK : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
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
    clk_adc : in STD_LOGIC;
    enable : in STD_LOGIC;
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ACLK,ARESETN,I_b0_b1,I_b2_b3,I_b4_b5,I_b6_b7,I_b8_b9,I_b10_b11,I_b12_b13,I_b14_b15,Q_b0_b1,Q_b2_b3,Q_b4_b5,Q_b6_b7,Q_b8_b9,Q_b10_b11,Q_b12_b13,Q_b14_b15,clk_adc,enable,M_AXIS_TVALID,M_AXIS_TDATA[31:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "first_demux,Vivado 2017.2";
begin
end;
