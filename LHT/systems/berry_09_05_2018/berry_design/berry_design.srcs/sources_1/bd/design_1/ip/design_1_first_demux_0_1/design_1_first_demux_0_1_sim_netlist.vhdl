-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Wed Jun  6 00:55:13 2018
-- Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               D:/INIGO/AP_CONTEST/PROJECTS_VIVADO/berry_09_05_2018/berry_design/berry_design.srcs/sources_1/bd/design_1/ip/design_1_first_demux_0_1/design_1_first_demux_0_1_sim_netlist.vhdl
-- Design      : design_1_first_demux_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg225-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_first_demux_0_1_first_demux is
  port (
    M_AXIS_TVALID : out STD_LOGIC;
    M_AXIS_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    enable : in STD_LOGIC;
    ARESETN : in STD_LOGIC;
    ACLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_first_demux_0_1_first_demux : entity is "first_demux";
end design_1_first_demux_0_1_first_demux;

architecture STRUCTURE of design_1_first_demux_0_1_first_demux is
  signal \FSM_sequential_state_nxt[0]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[0]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_nxt[1]_i_9_n_0\ : STD_LOGIC;
  signal I_data : STD_LOGIC_VECTOR ( 14 to 14 );
  signal I_data1 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal enable_nxt_i_1_n_0 : STD_LOGIC;
  signal enable_nxt_reg_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
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
  signal \packetCounter[31]_i_10_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_11_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_12_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_13_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_2_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_4_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_5_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_6_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_7_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_8_n_0\ : STD_LOGIC;
  signal \packetCounter[31]_i_9_n_0\ : STD_LOGIC;
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
  signal \packetCounter_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \packetCounter_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \packetCounter_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \packetCounter_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[0]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[10]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[11]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[12]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[13]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[14]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[15]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[16]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[17]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[18]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[19]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[1]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[20]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[21]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[22]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[23]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[24]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[25]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[26]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[27]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[28]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[29]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[2]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[30]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[31]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[3]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[4]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[5]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[6]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[7]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[8]\ : STD_LOGIC;
  signal \packetCounter_reg_n_0_[9]\ : STD_LOGIC;
  signal \plusOp_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__2_n_1\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal \plusOp_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__3_n_1\ : STD_LOGIC;
  signal \plusOp_carry__3_n_2\ : STD_LOGIC;
  signal \plusOp_carry__3_n_3\ : STD_LOGIC;
  signal \plusOp_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__4_n_1\ : STD_LOGIC;
  signal \plusOp_carry__4_n_2\ : STD_LOGIC;
  signal \plusOp_carry__4_n_3\ : STD_LOGIC;
  signal \plusOp_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_0\ : STD_LOGIC;
  signal \plusOp_carry__5_n_1\ : STD_LOGIC;
  signal \plusOp_carry__5_n_2\ : STD_LOGIC;
  signal \plusOp_carry__5_n_3\ : STD_LOGIC;
  signal \plusOp_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \plusOp_carry__6_n_2\ : STD_LOGIC;
  signal \plusOp_carry__6_n_3\ : STD_LOGIC;
  signal plusOp_carry_i_1_n_0 : STD_LOGIC;
  signal plusOp_carry_i_2_n_0 : STD_LOGIC;
  signal plusOp_carry_i_3_n_0 : STD_LOGIC;
  signal plusOp_carry_i_4_n_0 : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal state_nxt : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state_nxt : signal is "yes";
  signal synch_data_0 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal synch_data_1 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \synch_data_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[10]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[11]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[12]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[13]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[14]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[15]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[16]\ : STD_LOGIC;
  signal \synch_data_2_reg_n_0_[3]\ : STD_LOGIC;
  signal transfer_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \transfer_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_4_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_5_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_6_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_7_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_8_n_0\ : STD_LOGIC;
  signal \transfer_cnt[0]_i_9_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_10_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_11_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_12_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_13_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_14_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_15_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_1_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_2_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_3_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_4_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_5_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_6_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_7_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_8_n_0\ : STD_LOGIC;
  signal \transfer_cnt[31]_i_9_n_0\ : STD_LOGIC;
  signal tvalid_i_2_n_0 : STD_LOGIC;
  signal \NLW_packetCounter_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_packetCounter_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_plusOp_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_nxt[0]_i_10\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state_nxt[1]_i_10\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state_nxt[1]_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state_nxt[1]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state_nxt[1]_i_8\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state_nxt[1]_i_9\ : label is "soft_lutpair0";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_nxt_reg[0]\ : label is "yes";
  attribute KEEP of \FSM_sequential_state_nxt_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM of \packetCounter[31]_i_12\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \transfer_cnt[0]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \transfer_cnt[0]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \transfer_cnt[0]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \transfer_cnt[0]_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \transfer_cnt[31]_i_13\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \transfer_cnt[31]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \transfer_cnt[31]_i_7\ : label is "soft_lutpair3";
begin
\FSM_sequential_state_nxt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFBFB08000808"
    )
        port map (
      I0 => \FSM_sequential_state_nxt[0]_i_2_n_0\,
      I1 => ARESETN,
      I2 => \FSM_sequential_state_nxt[0]_i_3_n_0\,
      I3 => \FSM_sequential_state_nxt[0]_i_4_n_0\,
      I4 => state_nxt(1),
      I5 => state_nxt(0),
      O => \FSM_sequential_state_nxt[0]_i_1_n_0\
    );
\FSM_sequential_state_nxt[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => enable,
      I1 => \packetCounter_reg_n_0_[9]\,
      I2 => \packetCounter_reg_n_0_[10]\,
      O => \FSM_sequential_state_nxt[0]_i_10_n_0\
    );
\FSM_sequential_state_nxt[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[16]\,
      I1 => \packetCounter_reg_n_0_[3]\,
      I2 => \packetCounter_reg_n_0_[13]\,
      I3 => \packetCounter_reg_n_0_[2]\,
      O => \FSM_sequential_state_nxt[0]_i_11_n_0\
    );
\FSM_sequential_state_nxt[0]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[18]\,
      I1 => \packetCounter_reg_n_0_[25]\,
      I2 => \packetCounter_reg_n_0_[12]\,
      I3 => \packetCounter_reg_n_0_[29]\,
      O => \FSM_sequential_state_nxt[0]_i_12_n_0\
    );
\FSM_sequential_state_nxt[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[4]\,
      I1 => \packetCounter_reg_n_0_[24]\,
      I2 => \packetCounter_reg_n_0_[9]\,
      I3 => \packetCounter_reg_n_0_[1]\,
      O => \FSM_sequential_state_nxt[0]_i_13_n_0\
    );
\FSM_sequential_state_nxt[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[20]\,
      I1 => \packetCounter_reg_n_0_[23]\,
      I2 => \packetCounter_reg_n_0_[17]\,
      I3 => \packetCounter_reg_n_0_[27]\,
      O => \FSM_sequential_state_nxt[0]_i_14_n_0\
    );
\FSM_sequential_state_nxt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => \FSM_sequential_state_nxt[0]_i_5_n_0\,
      I1 => \FSM_sequential_state_nxt[0]_i_6_n_0\,
      I2 => \FSM_sequential_state_nxt[0]_i_7_n_0\,
      I3 => \FSM_sequential_state_nxt[0]_i_8_n_0\,
      I4 => \FSM_sequential_state_nxt[0]_i_9_n_0\,
      O => \FSM_sequential_state_nxt[0]_i_2_n_0\
    );
\FSM_sequential_state_nxt[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state_nxt(0),
      I1 => enable,
      I2 => \synch_data_2_reg_n_0_[0]\,
      O => \FSM_sequential_state_nxt[0]_i_3_n_0\
    );
\FSM_sequential_state_nxt[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F1FFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state_nxt[1]_i_6_n_0\,
      I1 => \FSM_sequential_state_nxt[1]_i_5_n_0\,
      I2 => \packetCounter[31]_i_4_n_0\,
      I3 => \FSM_sequential_state_nxt[0]_i_10_n_0\,
      I4 => \packetCounter[31]_i_5_n_0\,
      I5 => I_data1,
      O => \FSM_sequential_state_nxt[0]_i_4_n_0\
    );
\FSM_sequential_state_nxt[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => enable,
      I1 => state_nxt(1),
      I2 => \packetCounter_reg_n_0_[28]\,
      I3 => \packetCounter_reg_n_0_[21]\,
      I4 => \packetCounter_reg_n_0_[22]\,
      I5 => \packetCounter_reg_n_0_[11]\,
      O => \FSM_sequential_state_nxt[0]_i_5_n_0\
    );
\FSM_sequential_state_nxt[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[14]\,
      I1 => \packetCounter_reg_n_0_[31]\,
      I2 => \packetCounter_reg_n_0_[6]\,
      I3 => \packetCounter_reg_n_0_[7]\,
      I4 => \FSM_sequential_state_nxt[0]_i_11_n_0\,
      O => \FSM_sequential_state_nxt[0]_i_6_n_0\
    );
\FSM_sequential_state_nxt[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[30]\,
      I1 => \packetCounter_reg_n_0_[19]\,
      I2 => \packetCounter_reg_n_0_[26]\,
      I3 => \packetCounter_reg_n_0_[0]\,
      I4 => \FSM_sequential_state_nxt[0]_i_12_n_0\,
      O => \FSM_sequential_state_nxt[0]_i_7_n_0\
    );
\FSM_sequential_state_nxt[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[15]\,
      I1 => \packetCounter_reg_n_0_[10]\,
      I2 => \packetCounter_reg_n_0_[5]\,
      I3 => \packetCounter_reg_n_0_[8]\,
      I4 => \FSM_sequential_state_nxt[0]_i_13_n_0\,
      I5 => \FSM_sequential_state_nxt[0]_i_14_n_0\,
      O => \FSM_sequential_state_nxt[0]_i_8_n_0\
    );
\FSM_sequential_state_nxt[0]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BFF88FF"
    )
        port map (
      I0 => \synch_data_2_reg_n_0_[0]\,
      I1 => state_nxt(0),
      I2 => state_nxt(1),
      I3 => enable,
      I4 => enable_nxt_reg_n_0,
      O => \FSM_sequential_state_nxt[0]_i_9_n_0\
    );
\FSM_sequential_state_nxt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5FFFF80000000"
    )
        port map (
      I0 => ARESETN,
      I1 => state_nxt(0),
      I2 => enable,
      I3 => \synch_data_2_reg_n_0_[0]\,
      I4 => \FSM_sequential_state_nxt[1]_i_2_n_0\,
      I5 => state_nxt(1),
      O => \FSM_sequential_state_nxt[1]_i_1_n_0\
    );
\FSM_sequential_state_nxt[1]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(22),
      I1 => transfer_cnt(16),
      I2 => transfer_cnt(9),
      I3 => transfer_cnt(5),
      O => \FSM_sequential_state_nxt[1]_i_10_n_0\
    );
\FSM_sequential_state_nxt[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(28),
      I1 => transfer_cnt(25),
      I2 => transfer_cnt(30),
      I3 => transfer_cnt(0),
      O => \FSM_sequential_state_nxt[1]_i_11_n_0\
    );
\FSM_sequential_state_nxt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"54545455FFFFFFFF"
    )
        port map (
      I0 => I_data1,
      I1 => \FSM_sequential_state_nxt[1]_i_4_n_0\,
      I2 => \packetCounter[31]_i_4_n_0\,
      I3 => \FSM_sequential_state_nxt[1]_i_5_n_0\,
      I4 => \FSM_sequential_state_nxt[1]_i_6_n_0\,
      I5 => state_nxt(1),
      O => \FSM_sequential_state_nxt[1]_i_2_n_0\
    );
\FSM_sequential_state_nxt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => enable,
      I1 => \synch_data_2_reg_n_0_[0]\,
      O => I_data1
    );
\FSM_sequential_state_nxt[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state_nxt[1]_i_7_n_0\,
      I1 => \packetCounter[31]_i_13_n_0\,
      I2 => \transfer_cnt[31]_i_6_n_0\,
      I3 => \packetCounter_reg_n_0_[10]\,
      I4 => \packetCounter_reg_n_0_[9]\,
      I5 => enable,
      O => \FSM_sequential_state_nxt[1]_i_4_n_0\
    );
\FSM_sequential_state_nxt[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \transfer_cnt[0]_i_9_n_0\,
      I1 => \FSM_sequential_state_nxt[1]_i_8_n_0\,
      I2 => \transfer_cnt[0]_i_8_n_0\,
      I3 => \FSM_sequential_state_nxt[1]_i_9_n_0\,
      O => \FSM_sequential_state_nxt[1]_i_5_n_0\
    );
\FSM_sequential_state_nxt[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \transfer_cnt[0]_i_7_n_0\,
      I1 => \FSM_sequential_state_nxt[1]_i_10_n_0\,
      I2 => \transfer_cnt[0]_i_6_n_0\,
      I3 => \FSM_sequential_state_nxt[1]_i_11_n_0\,
      O => \FSM_sequential_state_nxt[1]_i_6_n_0\
    );
\FSM_sequential_state_nxt[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[0]\,
      I1 => \packetCounter_reg_n_0_[1]\,
      I2 => \packetCounter_reg_n_0_[11]\,
      I3 => \packetCounter_reg_n_0_[3]\,
      O => \FSM_sequential_state_nxt[1]_i_7_n_0\
    );
\FSM_sequential_state_nxt[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(11),
      I1 => transfer_cnt(4),
      I2 => transfer_cnt(13),
      I3 => transfer_cnt(7),
      O => \FSM_sequential_state_nxt[1]_i_8_n_0\
    );
\FSM_sequential_state_nxt[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(10),
      I1 => transfer_cnt(6),
      I2 => transfer_cnt(23),
      I3 => transfer_cnt(17),
      O => \FSM_sequential_state_nxt[1]_i_9_n_0\
    );
\FSM_sequential_state_nxt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_sequential_state_nxt[0]_i_1_n_0\,
      Q => state_nxt(0),
      R => '0'
    );
\FSM_sequential_state_nxt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \FSM_sequential_state_nxt[1]_i_1_n_0\,
      Q => state_nxt(1),
      R => '0'
    );
\I_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_2_in,
      Q => M_AXIS_TDATA(0),
      R => p_0_in
    );
\I_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_5_in,
      Q => M_AXIS_TDATA(10),
      R => p_0_in
    );
\I_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_5_in,
      Q => M_AXIS_TDATA(11),
      R => p_0_in
    );
\I_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_6_in,
      Q => M_AXIS_TDATA(12),
      R => p_0_in
    );
\I_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_6_in,
      Q => M_AXIS_TDATA(13),
      R => p_0_in
    );
\I_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_7_in,
      Q => M_AXIS_TDATA(14),
      R => p_0_in
    );
\I_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_7_in,
      Q => M_AXIS_TDATA(15),
      R => p_0_in
    );
\I_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_2_in,
      Q => M_AXIS_TDATA(1),
      R => p_0_in
    );
\I_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_1_in,
      Q => M_AXIS_TDATA(2),
      R => p_0_in
    );
\I_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_1_in,
      Q => M_AXIS_TDATA(3),
      R => p_0_in
    );
\I_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[3]\,
      Q => M_AXIS_TDATA(4),
      R => p_0_in
    );
\I_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[3]\,
      Q => M_AXIS_TDATA(5),
      R => p_0_in
    );
\I_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_3_in,
      Q => M_AXIS_TDATA(6),
      R => p_0_in
    );
\I_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_3_in,
      Q => M_AXIS_TDATA(7),
      R => p_0_in
    );
\I_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_4_in,
      Q => M_AXIS_TDATA(8),
      R => p_0_in
    );
\I_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_4_in,
      Q => M_AXIS_TDATA(9),
      R => p_0_in
    );
\Q_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => state_nxt(0),
      I1 => \synch_data_2_reg_n_0_[0]\,
      I2 => enable,
      O => I_data(14)
    );
\Q_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => p_0_in_0,
      Q => M_AXIS_TDATA(16),
      R => p_0_in
    );
\Q_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[14]\,
      Q => M_AXIS_TDATA(26),
      R => p_0_in
    );
\Q_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[14]\,
      Q => M_AXIS_TDATA(27),
      R => p_0_in
    );
\Q_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[15]\,
      Q => M_AXIS_TDATA(28),
      R => p_0_in
    );
\Q_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[15]\,
      Q => M_AXIS_TDATA(29),
      R => p_0_in
    );
\Q_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[16]\,
      Q => M_AXIS_TDATA(30),
      R => p_0_in
    );
\Q_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[16]\,
      Q => M_AXIS_TDATA(31),
      R => p_0_in
    );
\Q_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => p_0_in_0,
      Q => M_AXIS_TDATA(17),
      R => p_0_in
    );
\Q_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[10]\,
      Q => M_AXIS_TDATA(18),
      R => p_0_in
    );
\Q_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[10]\,
      Q => M_AXIS_TDATA(19),
      R => p_0_in
    );
\Q_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[11]\,
      Q => M_AXIS_TDATA(20),
      R => p_0_in
    );
\Q_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[11]\,
      Q => M_AXIS_TDATA(21),
      R => p_0_in
    );
\Q_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[12]\,
      Q => M_AXIS_TDATA(22),
      R => p_0_in
    );
\Q_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[12]\,
      Q => M_AXIS_TDATA(23),
      R => p_0_in
    );
\Q_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => I_data(14),
      D => \synch_data_2_reg_n_0_[13]\,
      Q => M_AXIS_TDATA(24),
      R => p_0_in
    );
\Q_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => tvalid_i_2_n_0,
      D => \synch_data_2_reg_n_0_[13]\,
      Q => M_AXIS_TDATA(25),
      R => p_0_in
    );
enable_nxt_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0008"
    )
        port map (
      I0 => enable,
      I1 => ARESETN,
      I2 => state_nxt(0),
      I3 => state_nxt(1),
      I4 => enable_nxt_reg_n_0,
      O => enable_nxt_i_1_n_0
    );
enable_nxt_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => enable_nxt_i_1_n_0,
      Q => enable_nxt_reg_n_0,
      R => '0'
    );
\packetCounter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => state_nxt(1),
      I1 => enable,
      I2 => \synch_data_2_reg_n_0_[0]\,
      I3 => ARESETN,
      I4 => \packetCounter_reg_n_0_[0]\,
      O => \packetCounter[0]_i_1_n_0\
    );
\packetCounter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[12]\,
      O => \packetCounter[12]_i_2_n_0\
    );
\packetCounter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[11]\,
      O => \packetCounter[12]_i_3_n_0\
    );
\packetCounter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[10]\,
      O => \packetCounter[12]_i_4_n_0\
    );
\packetCounter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[9]\,
      O => \packetCounter[12]_i_5_n_0\
    );
\packetCounter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[16]\,
      O => \packetCounter[16]_i_2_n_0\
    );
\packetCounter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[15]\,
      O => \packetCounter[16]_i_3_n_0\
    );
\packetCounter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[14]\,
      O => \packetCounter[16]_i_4_n_0\
    );
\packetCounter[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[13]\,
      O => \packetCounter[16]_i_5_n_0\
    );
\packetCounter[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[20]\,
      O => \packetCounter[20]_i_2_n_0\
    );
\packetCounter[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[19]\,
      O => \packetCounter[20]_i_3_n_0\
    );
\packetCounter[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[18]\,
      O => \packetCounter[20]_i_4_n_0\
    );
\packetCounter[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[17]\,
      O => \packetCounter[20]_i_5_n_0\
    );
\packetCounter[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[24]\,
      O => \packetCounter[24]_i_2_n_0\
    );
\packetCounter[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[23]\,
      O => \packetCounter[24]_i_3_n_0\
    );
\packetCounter[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[22]\,
      O => \packetCounter[24]_i_4_n_0\
    );
\packetCounter[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[21]\,
      O => \packetCounter[24]_i_5_n_0\
    );
\packetCounter[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[28]\,
      O => \packetCounter[28]_i_2_n_0\
    );
\packetCounter[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[27]\,
      O => \packetCounter[28]_i_3_n_0\
    );
\packetCounter[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[26]\,
      O => \packetCounter[28]_i_4_n_0\
    );
\packetCounter[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[25]\,
      O => \packetCounter[28]_i_5_n_0\
    );
\packetCounter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \packetCounter[31]_i_4_n_0\,
      I1 => \packetCounter_reg_n_0_[9]\,
      I2 => \packetCounter_reg_n_0_[10]\,
      I3 => \packetCounter[31]_i_5_n_0\,
      I4 => \packetCounter[31]_i_2_n_0\,
      O => \packetCounter[31]_i_1_n_0\
    );
\packetCounter[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[30]\,
      I1 => \packetCounter_reg_n_0_[15]\,
      I2 => \packetCounter_reg_n_0_[13]\,
      I3 => \packetCounter_reg_n_0_[31]\,
      O => \packetCounter[31]_i_10_n_0\
    );
\packetCounter[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[19]\,
      I1 => \packetCounter_reg_n_0_[18]\,
      I2 => \packetCounter_reg_n_0_[27]\,
      I3 => \packetCounter_reg_n_0_[14]\,
      O => \packetCounter[31]_i_11_n_0\
    );
\packetCounter[31]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[5]\,
      I1 => \packetCounter_reg_n_0_[8]\,
      O => \packetCounter[31]_i_12_n_0\
    );
\packetCounter[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[7]\,
      I1 => \packetCounter_reg_n_0_[6]\,
      I2 => \packetCounter_reg_n_0_[20]\,
      I3 => \packetCounter_reg_n_0_[2]\,
      O => \packetCounter[31]_i_13_n_0\
    );
\packetCounter[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => ARESETN,
      I1 => \synch_data_2_reg_n_0_[0]\,
      I2 => enable,
      I3 => state_nxt(1),
      O => \packetCounter[31]_i_2_n_0\
    );
\packetCounter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \packetCounter[31]_i_9_n_0\,
      I1 => \packetCounter[31]_i_10_n_0\,
      I2 => \packetCounter[31]_i_11_n_0\,
      I3 => \packetCounter_reg_n_0_[12]\,
      I4 => \packetCounter_reg_n_0_[4]\,
      I5 => \packetCounter[31]_i_12_n_0\,
      O => \packetCounter[31]_i_4_n_0\
    );
\packetCounter[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \transfer_cnt[31]_i_6_n_0\,
      I1 => \packetCounter[31]_i_13_n_0\,
      I2 => \packetCounter_reg_n_0_[0]\,
      I3 => \packetCounter_reg_n_0_[1]\,
      I4 => \packetCounter_reg_n_0_[11]\,
      I5 => \packetCounter_reg_n_0_[3]\,
      O => \packetCounter[31]_i_5_n_0\
    );
\packetCounter[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[31]\,
      O => \packetCounter[31]_i_6_n_0\
    );
\packetCounter[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[30]\,
      O => \packetCounter[31]_i_7_n_0\
    );
\packetCounter[31]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[29]\,
      O => \packetCounter[31]_i_8_n_0\
    );
\packetCounter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[17]\,
      I1 => \packetCounter_reg_n_0_[16]\,
      I2 => \packetCounter_reg_n_0_[28]\,
      I3 => \packetCounter_reg_n_0_[29]\,
      O => \packetCounter[31]_i_9_n_0\
    );
\packetCounter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[4]\,
      O => \packetCounter[4]_i_2_n_0\
    );
\packetCounter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[3]\,
      O => \packetCounter[4]_i_3_n_0\
    );
\packetCounter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[2]\,
      O => \packetCounter[4]_i_4_n_0\
    );
\packetCounter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[1]\,
      O => \packetCounter[4]_i_5_n_0\
    );
\packetCounter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[8]\,
      O => \packetCounter[8]_i_2_n_0\
    );
\packetCounter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[7]\,
      O => \packetCounter[8]_i_3_n_0\
    );
\packetCounter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[6]\,
      O => \packetCounter[8]_i_4_n_0\
    );
\packetCounter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[5]\,
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
      Q => \packetCounter_reg_n_0_[0]\,
      R => '0'
    );
\packetCounter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[12]_i_1_n_6\,
      Q => \packetCounter_reg_n_0_[10]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[12]_i_1_n_5\,
      Q => \packetCounter_reg_n_0_[11]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[12]_i_1_n_4\,
      Q => \packetCounter_reg_n_0_[12]\,
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
      O(3) => \packetCounter_reg[12]_i_1_n_4\,
      O(2) => \packetCounter_reg[12]_i_1_n_5\,
      O(1) => \packetCounter_reg[12]_i_1_n_6\,
      O(0) => \packetCounter_reg[12]_i_1_n_7\,
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
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[16]_i_1_n_7\,
      Q => \packetCounter_reg_n_0_[13]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[16]_i_1_n_6\,
      Q => \packetCounter_reg_n_0_[14]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[16]_i_1_n_5\,
      Q => \packetCounter_reg_n_0_[15]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[16]_i_1_n_4\,
      Q => \packetCounter_reg_n_0_[16]\,
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
      O(3) => \packetCounter_reg[16]_i_1_n_4\,
      O(2) => \packetCounter_reg[16]_i_1_n_5\,
      O(1) => \packetCounter_reg[16]_i_1_n_6\,
      O(0) => \packetCounter_reg[16]_i_1_n_7\,
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
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[20]_i_1_n_7\,
      Q => \packetCounter_reg_n_0_[17]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[20]_i_1_n_6\,
      Q => \packetCounter_reg_n_0_[18]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[20]_i_1_n_5\,
      Q => \packetCounter_reg_n_0_[19]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[4]_i_1_n_7\,
      Q => \packetCounter_reg_n_0_[1]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[20]_i_1_n_4\,
      Q => \packetCounter_reg_n_0_[20]\,
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
      O(3) => \packetCounter_reg[20]_i_1_n_4\,
      O(2) => \packetCounter_reg[20]_i_1_n_5\,
      O(1) => \packetCounter_reg[20]_i_1_n_6\,
      O(0) => \packetCounter_reg[20]_i_1_n_7\,
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
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[24]_i_1_n_7\,
      Q => \packetCounter_reg_n_0_[21]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[24]_i_1_n_6\,
      Q => \packetCounter_reg_n_0_[22]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[24]_i_1_n_5\,
      Q => \packetCounter_reg_n_0_[23]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[24]_i_1_n_4\,
      Q => \packetCounter_reg_n_0_[24]\,
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
      O(3) => \packetCounter_reg[24]_i_1_n_4\,
      O(2) => \packetCounter_reg[24]_i_1_n_5\,
      O(1) => \packetCounter_reg[24]_i_1_n_6\,
      O(0) => \packetCounter_reg[24]_i_1_n_7\,
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
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[28]_i_1_n_7\,
      Q => \packetCounter_reg_n_0_[25]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[28]_i_1_n_6\,
      Q => \packetCounter_reg_n_0_[26]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[28]_i_1_n_5\,
      Q => \packetCounter_reg_n_0_[27]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[28]_i_1_n_4\,
      Q => \packetCounter_reg_n_0_[28]\,
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
      O(3) => \packetCounter_reg[28]_i_1_n_4\,
      O(2) => \packetCounter_reg[28]_i_1_n_5\,
      O(1) => \packetCounter_reg[28]_i_1_n_6\,
      O(0) => \packetCounter_reg[28]_i_1_n_7\,
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
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[31]_i_3_n_7\,
      Q => \packetCounter_reg_n_0_[29]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[4]_i_1_n_6\,
      Q => \packetCounter_reg_n_0_[2]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[31]_i_3_n_6\,
      Q => \packetCounter_reg_n_0_[30]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[31]_i_3_n_5\,
      Q => \packetCounter_reg_n_0_[31]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \packetCounter_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_packetCounter_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \packetCounter_reg[31]_i_3_n_2\,
      CO(0) => \packetCounter_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_packetCounter_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2) => \packetCounter_reg[31]_i_3_n_5\,
      O(1) => \packetCounter_reg[31]_i_3_n_6\,
      O(0) => \packetCounter_reg[31]_i_3_n_7\,
      S(3) => '0',
      S(2) => \packetCounter[31]_i_6_n_0\,
      S(1) => \packetCounter[31]_i_7_n_0\,
      S(0) => \packetCounter[31]_i_8_n_0\
    );
\packetCounter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[4]_i_1_n_5\,
      Q => \packetCounter_reg_n_0_[3]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[4]_i_1_n_4\,
      Q => \packetCounter_reg_n_0_[4]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \packetCounter_reg[4]_i_1_n_0\,
      CO(2) => \packetCounter_reg[4]_i_1_n_1\,
      CO(1) => \packetCounter_reg[4]_i_1_n_2\,
      CO(0) => \packetCounter_reg[4]_i_1_n_3\,
      CYINIT => \packetCounter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \packetCounter_reg[4]_i_1_n_4\,
      O(2) => \packetCounter_reg[4]_i_1_n_5\,
      O(1) => \packetCounter_reg[4]_i_1_n_6\,
      O(0) => \packetCounter_reg[4]_i_1_n_7\,
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
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[8]_i_1_n_7\,
      Q => \packetCounter_reg_n_0_[5]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[8]_i_1_n_6\,
      Q => \packetCounter_reg_n_0_[6]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[8]_i_1_n_5\,
      Q => \packetCounter_reg_n_0_[7]\,
      R => \packetCounter[31]_i_1_n_0\
    );
\packetCounter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[8]_i_1_n_4\,
      Q => \packetCounter_reg_n_0_[8]\,
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
      O(3) => \packetCounter_reg[8]_i_1_n_4\,
      O(2) => \packetCounter_reg[8]_i_1_n_5\,
      O(1) => \packetCounter_reg[8]_i_1_n_6\,
      O(0) => \packetCounter_reg[8]_i_1_n_7\,
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
      CE => \packetCounter[31]_i_2_n_0\,
      D => \packetCounter_reg[12]_i_1_n_7\,
      Q => \packetCounter_reg_n_0_[9]\,
      R => \packetCounter[31]_i_1_n_0\
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => transfer_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => plusOp_carry_i_1_n_0,
      S(2) => plusOp_carry_i_2_n_0,
      S(1) => plusOp_carry_i_3_n_0,
      S(0) => plusOp_carry_i_4_n_0
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \plusOp_carry__0_i_1_n_0\,
      S(2) => \plusOp_carry__0_i_2_n_0\,
      S(1) => \plusOp_carry__0_i_3_n_0\,
      S(0) => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(8),
      O => \plusOp_carry__0_i_1_n_0\
    );
\plusOp_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(7),
      O => \plusOp_carry__0_i_2_n_0\
    );
\plusOp_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(6),
      O => \plusOp_carry__0_i_3_n_0\
    );
\plusOp_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(5),
      O => \plusOp_carry__0_i_4_n_0\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \plusOp_carry__1_i_1_n_0\,
      S(2) => \plusOp_carry__1_i_2_n_0\,
      S(1) => \plusOp_carry__1_i_3_n_0\,
      S(0) => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(12),
      O => \plusOp_carry__1_i_1_n_0\
    );
\plusOp_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(11),
      O => \plusOp_carry__1_i_2_n_0\
    );
\plusOp_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(10),
      O => \plusOp_carry__1_i_3_n_0\
    );
\plusOp_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(9),
      O => \plusOp_carry__1_i_4_n_0\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3) => \plusOp_carry__2_n_0\,
      CO(2) => \plusOp_carry__2_n_1\,
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \plusOp_carry__2_i_1_n_0\,
      S(2) => \plusOp_carry__2_i_2_n_0\,
      S(1) => \plusOp_carry__2_i_3_n_0\,
      S(0) => \plusOp_carry__2_i_4_n_0\
    );
\plusOp_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(16),
      O => \plusOp_carry__2_i_1_n_0\
    );
\plusOp_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(15),
      O => \plusOp_carry__2_i_2_n_0\
    );
\plusOp_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(14),
      O => \plusOp_carry__2_i_3_n_0\
    );
\plusOp_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(13),
      O => \plusOp_carry__2_i_4_n_0\
    );
\plusOp_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__2_n_0\,
      CO(3) => \plusOp_carry__3_n_0\,
      CO(2) => \plusOp_carry__3_n_1\,
      CO(1) => \plusOp_carry__3_n_2\,
      CO(0) => \plusOp_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \plusOp_carry__3_i_1_n_0\,
      S(2) => \plusOp_carry__3_i_2_n_0\,
      S(1) => \plusOp_carry__3_i_3_n_0\,
      S(0) => \plusOp_carry__3_i_4_n_0\
    );
\plusOp_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(20),
      O => \plusOp_carry__3_i_1_n_0\
    );
\plusOp_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(19),
      O => \plusOp_carry__3_i_2_n_0\
    );
\plusOp_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(18),
      O => \plusOp_carry__3_i_3_n_0\
    );
\plusOp_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(17),
      O => \plusOp_carry__3_i_4_n_0\
    );
\plusOp_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__3_n_0\,
      CO(3) => \plusOp_carry__4_n_0\,
      CO(2) => \plusOp_carry__4_n_1\,
      CO(1) => \plusOp_carry__4_n_2\,
      CO(0) => \plusOp_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \plusOp_carry__4_i_1_n_0\,
      S(2) => \plusOp_carry__4_i_2_n_0\,
      S(1) => \plusOp_carry__4_i_3_n_0\,
      S(0) => \plusOp_carry__4_i_4_n_0\
    );
\plusOp_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(24),
      O => \plusOp_carry__4_i_1_n_0\
    );
\plusOp_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(23),
      O => \plusOp_carry__4_i_2_n_0\
    );
\plusOp_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(22),
      O => \plusOp_carry__4_i_3_n_0\
    );
\plusOp_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(21),
      O => \plusOp_carry__4_i_4_n_0\
    );
\plusOp_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__4_n_0\,
      CO(3) => \plusOp_carry__5_n_0\,
      CO(2) => \plusOp_carry__5_n_1\,
      CO(1) => \plusOp_carry__5_n_2\,
      CO(0) => \plusOp_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \plusOp_carry__5_i_1_n_0\,
      S(2) => \plusOp_carry__5_i_2_n_0\,
      S(1) => \plusOp_carry__5_i_3_n_0\,
      S(0) => \plusOp_carry__5_i_4_n_0\
    );
\plusOp_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(28),
      O => \plusOp_carry__5_i_1_n_0\
    );
\plusOp_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(27),
      O => \plusOp_carry__5_i_2_n_0\
    );
\plusOp_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(26),
      O => \plusOp_carry__5_i_3_n_0\
    );
\plusOp_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(25),
      O => \plusOp_carry__5_i_4_n_0\
    );
\plusOp_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__5_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__6_n_2\,
      CO(0) => \plusOp_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \plusOp_carry__6_i_1_n_0\,
      S(1) => \plusOp_carry__6_i_2_n_0\,
      S(0) => \plusOp_carry__6_i_3_n_0\
    );
\plusOp_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(31),
      O => \plusOp_carry__6_i_1_n_0\
    );
\plusOp_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(30),
      O => \plusOp_carry__6_i_2_n_0\
    );
\plusOp_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(29),
      O => \plusOp_carry__6_i_3_n_0\
    );
plusOp_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(4),
      O => plusOp_carry_i_1_n_0
    );
plusOp_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(3),
      O => plusOp_carry_i_2_n_0
    );
plusOp_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(2),
      O => plusOp_carry_i_3_n_0
    );
plusOp_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => transfer_cnt(1),
      O => plusOp_carry_i_4_n_0
    );
\synch_data_0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(0),
      Q => synch_data_0(0),
      R => p_0_in
    );
\synch_data_0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(10),
      Q => synch_data_0(10),
      R => p_0_in
    );
\synch_data_0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(11),
      Q => synch_data_0(11),
      R => p_0_in
    );
\synch_data_0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(12),
      Q => synch_data_0(12),
      R => p_0_in
    );
\synch_data_0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(13),
      Q => synch_data_0(13),
      R => p_0_in
    );
\synch_data_0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(14),
      Q => synch_data_0(14),
      R => p_0_in
    );
\synch_data_0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(15),
      Q => synch_data_0(15),
      R => p_0_in
    );
\synch_data_0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(16),
      Q => synch_data_0(16),
      R => p_0_in
    );
\synch_data_0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(1),
      Q => synch_data_0(1),
      R => p_0_in
    );
\synch_data_0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(2),
      Q => synch_data_0(2),
      R => p_0_in
    );
\synch_data_0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(3),
      Q => synch_data_0(3),
      R => p_0_in
    );
\synch_data_0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(4),
      Q => synch_data_0(4),
      R => p_0_in
    );
\synch_data_0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(5),
      Q => synch_data_0(5),
      R => p_0_in
    );
\synch_data_0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(6),
      Q => synch_data_0(6),
      R => p_0_in
    );
\synch_data_0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(7),
      Q => synch_data_0(7),
      R => p_0_in
    );
\synch_data_0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(8),
      Q => synch_data_0(8),
      R => p_0_in
    );
\synch_data_0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => D(9),
      Q => synch_data_0(9),
      R => p_0_in
    );
\synch_data_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(0),
      Q => synch_data_1(0),
      R => p_0_in
    );
\synch_data_1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(10),
      Q => synch_data_1(10),
      R => p_0_in
    );
\synch_data_1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(11),
      Q => synch_data_1(11),
      R => p_0_in
    );
\synch_data_1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(12),
      Q => synch_data_1(12),
      R => p_0_in
    );
\synch_data_1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(13),
      Q => synch_data_1(13),
      R => p_0_in
    );
\synch_data_1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(14),
      Q => synch_data_1(14),
      R => p_0_in
    );
\synch_data_1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(15),
      Q => synch_data_1(15),
      R => p_0_in
    );
\synch_data_1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(16),
      Q => synch_data_1(16),
      R => p_0_in
    );
\synch_data_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(1),
      Q => synch_data_1(1),
      R => p_0_in
    );
\synch_data_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(2),
      Q => synch_data_1(2),
      R => p_0_in
    );
\synch_data_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(3),
      Q => synch_data_1(3),
      R => p_0_in
    );
\synch_data_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(4),
      Q => synch_data_1(4),
      R => p_0_in
    );
\synch_data_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(5),
      Q => synch_data_1(5),
      R => p_0_in
    );
\synch_data_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(6),
      Q => synch_data_1(6),
      R => p_0_in
    );
\synch_data_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(7),
      Q => synch_data_1(7),
      R => p_0_in
    );
\synch_data_1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(8),
      Q => synch_data_1(8),
      R => p_0_in
    );
\synch_data_1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_0(9),
      Q => synch_data_1(9),
      R => p_0_in
    );
\synch_data_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(0),
      Q => \synch_data_2_reg_n_0_[0]\,
      R => p_0_in
    );
\synch_data_2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(10),
      Q => \synch_data_2_reg_n_0_[10]\,
      R => p_0_in
    );
\synch_data_2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(11),
      Q => \synch_data_2_reg_n_0_[11]\,
      R => p_0_in
    );
\synch_data_2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(12),
      Q => \synch_data_2_reg_n_0_[12]\,
      R => p_0_in
    );
\synch_data_2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(13),
      Q => \synch_data_2_reg_n_0_[13]\,
      R => p_0_in
    );
\synch_data_2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(14),
      Q => \synch_data_2_reg_n_0_[14]\,
      R => p_0_in
    );
\synch_data_2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(15),
      Q => \synch_data_2_reg_n_0_[15]\,
      R => p_0_in
    );
\synch_data_2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(16),
      Q => \synch_data_2_reg_n_0_[16]\,
      R => p_0_in
    );
\synch_data_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(1),
      Q => p_2_in,
      R => p_0_in
    );
\synch_data_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(2),
      Q => p_1_in,
      R => p_0_in
    );
\synch_data_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(3),
      Q => \synch_data_2_reg_n_0_[3]\,
      R => p_0_in
    );
\synch_data_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(4),
      Q => p_3_in,
      R => p_0_in
    );
\synch_data_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(5),
      Q => p_4_in,
      R => p_0_in
    );
\synch_data_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(6),
      Q => p_5_in,
      R => p_0_in
    );
\synch_data_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(7),
      Q => p_6_in,
      R => p_0_in
    );
\synch_data_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(8),
      Q => p_7_in,
      R => p_0_in
    );
\synch_data_2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => synch_data_1(9),
      Q => p_0_in_0,
      R => p_0_in
    );
\transfer_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFFFFE0000"
    )
        port map (
      I0 => \transfer_cnt[0]_i_2_n_0\,
      I1 => \transfer_cnt[0]_i_3_n_0\,
      I2 => \transfer_cnt[0]_i_4_n_0\,
      I3 => \transfer_cnt[0]_i_5_n_0\,
      I4 => \transfer_cnt[31]_i_2_n_0\,
      I5 => transfer_cnt(0),
      O => \transfer_cnt[0]_i_1_n_0\
    );
\transfer_cnt[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => transfer_cnt(0),
      I1 => transfer_cnt(30),
      I2 => transfer_cnt(25),
      I3 => transfer_cnt(28),
      I4 => \transfer_cnt[0]_i_6_n_0\,
      O => \transfer_cnt[0]_i_2_n_0\
    );
\transfer_cnt[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => transfer_cnt(5),
      I1 => transfer_cnt(9),
      I2 => transfer_cnt(16),
      I3 => transfer_cnt(22),
      I4 => \transfer_cnt[0]_i_7_n_0\,
      O => \transfer_cnt[0]_i_3_n_0\
    );
\transfer_cnt[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => transfer_cnt(17),
      I1 => transfer_cnt(23),
      I2 => transfer_cnt(6),
      I3 => transfer_cnt(10),
      I4 => \transfer_cnt[0]_i_8_n_0\,
      O => \transfer_cnt[0]_i_4_n_0\
    );
\transfer_cnt[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => transfer_cnt(7),
      I1 => transfer_cnt(13),
      I2 => transfer_cnt(4),
      I3 => transfer_cnt(11),
      I4 => \transfer_cnt[0]_i_9_n_0\,
      O => \transfer_cnt[0]_i_5_n_0\
    );
\transfer_cnt[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(21),
      I1 => transfer_cnt(19),
      I2 => transfer_cnt(3),
      I3 => transfer_cnt(26),
      O => \transfer_cnt[0]_i_6_n_0\
    );
\transfer_cnt[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(29),
      I1 => transfer_cnt(20),
      I2 => transfer_cnt(24),
      I3 => transfer_cnt(12),
      O => \transfer_cnt[0]_i_7_n_0\
    );
\transfer_cnt[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => transfer_cnt(2),
      I1 => transfer_cnt(18),
      I2 => transfer_cnt(31),
      I3 => transfer_cnt(1),
      O => \transfer_cnt[0]_i_8_n_0\
    );
\transfer_cnt[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(27),
      I1 => transfer_cnt(15),
      I2 => transfer_cnt(14),
      I3 => transfer_cnt(8),
      O => \transfer_cnt[0]_i_9_n_0\
    );
\transfer_cnt[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \transfer_cnt[31]_i_3_n_0\,
      I1 => \transfer_cnt[31]_i_4_n_0\,
      I2 => \transfer_cnt[31]_i_2_n_0\,
      O => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt[31]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => transfer_cnt(26),
      I1 => transfer_cnt(27),
      I2 => transfer_cnt(24),
      I3 => transfer_cnt(25),
      I4 => \transfer_cnt[31]_i_14_n_0\,
      O => \transfer_cnt[31]_i_10_n_0\
    );
\transfer_cnt[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(13),
      I1 => transfer_cnt(12),
      I2 => transfer_cnt(15),
      I3 => transfer_cnt(14),
      O => \transfer_cnt[31]_i_11_n_0\
    );
\transfer_cnt[31]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => transfer_cnt(6),
      I1 => transfer_cnt(7),
      I2 => transfer_cnt(4),
      I3 => transfer_cnt(5),
      I4 => \transfer_cnt[31]_i_15_n_0\,
      O => \transfer_cnt[31]_i_12_n_0\
    );
\transfer_cnt[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[12]\,
      I1 => \packetCounter_reg_n_0_[4]\,
      I2 => \packetCounter_reg_n_0_[8]\,
      I3 => \packetCounter_reg_n_0_[5]\,
      O => \transfer_cnt[31]_i_13_n_0\
    );
\transfer_cnt[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => transfer_cnt(29),
      I1 => transfer_cnt(28),
      I2 => transfer_cnt(2),
      I3 => transfer_cnt(30),
      O => \transfer_cnt[31]_i_14_n_0\
    );
\transfer_cnt[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(1),
      I1 => transfer_cnt(0),
      I2 => transfer_cnt(3),
      I3 => transfer_cnt(31),
      O => \transfer_cnt[31]_i_15_n_0\
    );
\transfer_cnt[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => ARESETN,
      I1 => \transfer_cnt[31]_i_5_n_0\,
      I2 => \transfer_cnt[31]_i_6_n_0\,
      I3 => \transfer_cnt[31]_i_7_n_0\,
      I4 => \transfer_cnt[31]_i_8_n_0\,
      I5 => state_nxt(1),
      O => \transfer_cnt[31]_i_2_n_0\
    );
\transfer_cnt[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \transfer_cnt[31]_i_9_n_0\,
      I1 => transfer_cnt(17),
      I2 => transfer_cnt(16),
      I3 => transfer_cnt(19),
      I4 => transfer_cnt(18),
      I5 => \transfer_cnt[31]_i_10_n_0\,
      O => \transfer_cnt[31]_i_3_n_0\
    );
\transfer_cnt[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \transfer_cnt[31]_i_11_n_0\,
      I1 => transfer_cnt(9),
      I2 => transfer_cnt(8),
      I3 => transfer_cnt(11),
      I4 => transfer_cnt(10),
      I5 => \transfer_cnt[31]_i_12_n_0\,
      O => \transfer_cnt[31]_i_4_n_0\
    );
\transfer_cnt[31]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \synch_data_2_reg_n_0_[0]\,
      I1 => enable,
      O => \transfer_cnt[31]_i_5_n_0\
    );
\transfer_cnt[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[24]\,
      I1 => \packetCounter_reg_n_0_[21]\,
      I2 => \packetCounter_reg_n_0_[26]\,
      I3 => \packetCounter_reg_n_0_[25]\,
      I4 => \packetCounter_reg_n_0_[22]\,
      I5 => \packetCounter_reg_n_0_[23]\,
      O => \transfer_cnt[31]_i_6_n_0\
    );
\transfer_cnt[31]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => \packetCounter_reg_n_0_[3]\,
      I1 => \packetCounter_reg_n_0_[11]\,
      I2 => \packetCounter_reg_n_0_[1]\,
      I3 => \packetCounter_reg_n_0_[0]\,
      I4 => \packetCounter[31]_i_13_n_0\,
      O => \transfer_cnt[31]_i_7_n_0\
    );
\transfer_cnt[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFFFFFFFFFF"
    )
        port map (
      I0 => \transfer_cnt[31]_i_13_n_0\,
      I1 => \packetCounter[31]_i_11_n_0\,
      I2 => \packetCounter[31]_i_10_n_0\,
      I3 => \packetCounter[31]_i_9_n_0\,
      I4 => \packetCounter_reg_n_0_[9]\,
      I5 => \packetCounter_reg_n_0_[10]\,
      O => \transfer_cnt[31]_i_8_n_0\
    );
\transfer_cnt[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => transfer_cnt(21),
      I1 => transfer_cnt(20),
      I2 => transfer_cnt(23),
      I3 => transfer_cnt(22),
      O => \transfer_cnt[31]_i_9_n_0\
    );
\transfer_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => '1',
      D => \transfer_cnt[0]_i_1_n_0\,
      Q => transfer_cnt(0),
      R => '0'
    );
\transfer_cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(10),
      Q => transfer_cnt(10),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(11),
      Q => transfer_cnt(11),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(12),
      Q => transfer_cnt(12),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(13),
      Q => transfer_cnt(13),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(14),
      Q => transfer_cnt(14),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(15),
      Q => transfer_cnt(15),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(16),
      Q => transfer_cnt(16),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(17),
      Q => transfer_cnt(17),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(18),
      Q => transfer_cnt(18),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(19),
      Q => transfer_cnt(19),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(1),
      Q => transfer_cnt(1),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(20),
      Q => transfer_cnt(20),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(21),
      Q => transfer_cnt(21),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(22),
      Q => transfer_cnt(22),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(23),
      Q => transfer_cnt(23),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(24),
      Q => transfer_cnt(24),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(25),
      Q => transfer_cnt(25),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(26),
      Q => transfer_cnt(26),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(27),
      Q => transfer_cnt(27),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(28),
      Q => transfer_cnt(28),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(29),
      Q => transfer_cnt(29),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(2),
      Q => transfer_cnt(2),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(30),
      Q => transfer_cnt(30),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(31),
      Q => transfer_cnt(31),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(3),
      Q => transfer_cnt(3),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(4),
      Q => transfer_cnt(4),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(5),
      Q => transfer_cnt(5),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(6),
      Q => transfer_cnt(6),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(7),
      Q => transfer_cnt(7),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(8),
      Q => transfer_cnt(8),
      R => \transfer_cnt[31]_i_1_n_0\
    );
\transfer_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ACLK,
      CE => \transfer_cnt[31]_i_2_n_0\,
      D => data0(9),
      Q => transfer_cnt(9),
      R => \transfer_cnt[31]_i_1_n_0\
    );
tvalid_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ARESETN,
      O => p_0_in
    );
tvalid_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => state_nxt(1),
      I1 => enable,
      I2 => \synch_data_2_reg_n_0_[0]\,
      O => tvalid_i_2_n_0
    );
tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => ACLK,
      CE => '1',
      D => tvalid_i_2_n_0,
      Q => M_AXIS_TVALID,
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_first_demux_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_first_demux_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_first_demux_0_1 : entity is "design_1_first_demux_0_1,first_demux,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_first_demux_0_1 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_first_demux_0_1 : entity is "first_demux,Vivado 2017.2";
end design_1_first_demux_0_1;

architecture STRUCTURE of design_1_first_demux_0_1 is
begin
U0: entity work.design_1_first_demux_0_1_first_demux
     port map (
      ACLK => ACLK,
      ARESETN => ARESETN,
      D(16) => Q_b14_b15,
      D(15) => Q_b12_b13,
      D(14) => Q_b10_b11,
      D(13) => Q_b8_b9,
      D(12) => Q_b6_b7,
      D(11) => Q_b4_b5,
      D(10) => Q_b2_b3,
      D(9) => Q_b0_b1,
      D(8) => I_b14_b15,
      D(7) => I_b12_b13,
      D(6) => I_b10_b11,
      D(5) => I_b8_b9,
      D(4) => I_b6_b7,
      D(3) => I_b4_b5,
      D(2) => I_b2_b3,
      D(1) => I_b0_b1,
      D(0) => clk_adc,
      M_AXIS_TDATA(31 downto 0) => M_AXIS_TDATA(31 downto 0),
      M_AXIS_TVALID => M_AXIS_TVALID,
      enable => enable
    );
end STRUCTURE;
