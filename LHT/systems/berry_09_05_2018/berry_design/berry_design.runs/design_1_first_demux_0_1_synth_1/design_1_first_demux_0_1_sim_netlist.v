// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Jun  6 00:55:10 2018
// Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_first_demux_0_1_sim_netlist.v
// Design      : design_1_first_demux_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_first_demux_0_1,first_demux,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "first_demux,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (ACLK,
    ARESETN,
    I_b0_b1,
    I_b2_b3,
    I_b4_b5,
    I_b6_b7,
    I_b8_b9,
    I_b10_b11,
    I_b12_b13,
    I_b14_b15,
    Q_b0_b1,
    Q_b2_b3,
    Q_b4_b5,
    Q_b6_b7,
    Q_b8_b9,
    Q_b10_b11,
    Q_b12_b13,
    Q_b14_b15,
    clk_adc,
    enable,
    M_AXIS_TVALID,
    M_AXIS_TDATA);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) input ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) input ARESETN;
  input I_b0_b1;
  input I_b2_b3;
  input I_b4_b5;
  input I_b6_b7;
  input I_b8_b9;
  input I_b10_b11;
  input I_b12_b13;
  input I_b14_b15;
  input Q_b0_b1;
  input Q_b2_b3;
  input Q_b4_b5;
  input Q_b6_b7;
  input Q_b8_b9;
  input Q_b10_b11;
  input Q_b12_b13;
  input Q_b14_b15;
  input clk_adc;
  input enable;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]M_AXIS_TDATA;

  wire ACLK;
  wire ARESETN;
  wire I_b0_b1;
  wire I_b10_b11;
  wire I_b12_b13;
  wire I_b14_b15;
  wire I_b2_b3;
  wire I_b4_b5;
  wire I_b6_b7;
  wire I_b8_b9;
  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TVALID;
  wire Q_b0_b1;
  wire Q_b10_b11;
  wire Q_b12_b13;
  wire Q_b14_b15;
  wire Q_b2_b3;
  wire Q_b4_b5;
  wire Q_b6_b7;
  wire Q_b8_b9;
  wire clk_adc;
  wire enable;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_first_demux U0
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .D({Q_b14_b15,Q_b12_b13,Q_b10_b11,Q_b8_b9,Q_b6_b7,Q_b4_b5,Q_b2_b3,Q_b0_b1,I_b14_b15,I_b12_b13,I_b10_b11,I_b8_b9,I_b6_b7,I_b4_b5,I_b2_b3,I_b0_b1,clk_adc}),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .enable(enable));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_first_demux
   (M_AXIS_TVALID,
    M_AXIS_TDATA,
    enable,
    ARESETN,
    ACLK,
    D);
  output M_AXIS_TVALID;
  output [31:0]M_AXIS_TDATA;
  input enable;
  input ARESETN;
  input ACLK;
  input [16:0]D;

  wire ACLK;
  wire ARESETN;
  wire [16:0]D;
  wire \FSM_sequential_state_nxt[0]_i_10_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_11_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_12_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_13_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_14_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_1_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_2_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_3_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_4_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_5_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_6_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_7_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_8_n_0 ;
  wire \FSM_sequential_state_nxt[0]_i_9_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_10_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_11_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_1_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_2_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_4_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_5_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_6_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_7_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_8_n_0 ;
  wire \FSM_sequential_state_nxt[1]_i_9_n_0 ;
  wire [14:14]I_data;
  wire I_data1;
  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TVALID;
  wire [31:1]data0;
  wire enable;
  wire enable_nxt_i_1_n_0;
  wire enable_nxt_reg_n_0;
  wire p_0_in;
  wire p_0_in_0;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire p_7_in;
  wire \packetCounter[0]_i_1_n_0 ;
  wire \packetCounter[12]_i_2_n_0 ;
  wire \packetCounter[12]_i_3_n_0 ;
  wire \packetCounter[12]_i_4_n_0 ;
  wire \packetCounter[12]_i_5_n_0 ;
  wire \packetCounter[16]_i_2_n_0 ;
  wire \packetCounter[16]_i_3_n_0 ;
  wire \packetCounter[16]_i_4_n_0 ;
  wire \packetCounter[16]_i_5_n_0 ;
  wire \packetCounter[20]_i_2_n_0 ;
  wire \packetCounter[20]_i_3_n_0 ;
  wire \packetCounter[20]_i_4_n_0 ;
  wire \packetCounter[20]_i_5_n_0 ;
  wire \packetCounter[24]_i_2_n_0 ;
  wire \packetCounter[24]_i_3_n_0 ;
  wire \packetCounter[24]_i_4_n_0 ;
  wire \packetCounter[24]_i_5_n_0 ;
  wire \packetCounter[28]_i_2_n_0 ;
  wire \packetCounter[28]_i_3_n_0 ;
  wire \packetCounter[28]_i_4_n_0 ;
  wire \packetCounter[28]_i_5_n_0 ;
  wire \packetCounter[31]_i_10_n_0 ;
  wire \packetCounter[31]_i_11_n_0 ;
  wire \packetCounter[31]_i_12_n_0 ;
  wire \packetCounter[31]_i_13_n_0 ;
  wire \packetCounter[31]_i_1_n_0 ;
  wire \packetCounter[31]_i_2_n_0 ;
  wire \packetCounter[31]_i_4_n_0 ;
  wire \packetCounter[31]_i_5_n_0 ;
  wire \packetCounter[31]_i_6_n_0 ;
  wire \packetCounter[31]_i_7_n_0 ;
  wire \packetCounter[31]_i_8_n_0 ;
  wire \packetCounter[31]_i_9_n_0 ;
  wire \packetCounter[4]_i_2_n_0 ;
  wire \packetCounter[4]_i_3_n_0 ;
  wire \packetCounter[4]_i_4_n_0 ;
  wire \packetCounter[4]_i_5_n_0 ;
  wire \packetCounter[8]_i_2_n_0 ;
  wire \packetCounter[8]_i_3_n_0 ;
  wire \packetCounter[8]_i_4_n_0 ;
  wire \packetCounter[8]_i_5_n_0 ;
  wire \packetCounter_reg[12]_i_1_n_0 ;
  wire \packetCounter_reg[12]_i_1_n_1 ;
  wire \packetCounter_reg[12]_i_1_n_2 ;
  wire \packetCounter_reg[12]_i_1_n_3 ;
  wire \packetCounter_reg[12]_i_1_n_4 ;
  wire \packetCounter_reg[12]_i_1_n_5 ;
  wire \packetCounter_reg[12]_i_1_n_6 ;
  wire \packetCounter_reg[12]_i_1_n_7 ;
  wire \packetCounter_reg[16]_i_1_n_0 ;
  wire \packetCounter_reg[16]_i_1_n_1 ;
  wire \packetCounter_reg[16]_i_1_n_2 ;
  wire \packetCounter_reg[16]_i_1_n_3 ;
  wire \packetCounter_reg[16]_i_1_n_4 ;
  wire \packetCounter_reg[16]_i_1_n_5 ;
  wire \packetCounter_reg[16]_i_1_n_6 ;
  wire \packetCounter_reg[16]_i_1_n_7 ;
  wire \packetCounter_reg[20]_i_1_n_0 ;
  wire \packetCounter_reg[20]_i_1_n_1 ;
  wire \packetCounter_reg[20]_i_1_n_2 ;
  wire \packetCounter_reg[20]_i_1_n_3 ;
  wire \packetCounter_reg[20]_i_1_n_4 ;
  wire \packetCounter_reg[20]_i_1_n_5 ;
  wire \packetCounter_reg[20]_i_1_n_6 ;
  wire \packetCounter_reg[20]_i_1_n_7 ;
  wire \packetCounter_reg[24]_i_1_n_0 ;
  wire \packetCounter_reg[24]_i_1_n_1 ;
  wire \packetCounter_reg[24]_i_1_n_2 ;
  wire \packetCounter_reg[24]_i_1_n_3 ;
  wire \packetCounter_reg[24]_i_1_n_4 ;
  wire \packetCounter_reg[24]_i_1_n_5 ;
  wire \packetCounter_reg[24]_i_1_n_6 ;
  wire \packetCounter_reg[24]_i_1_n_7 ;
  wire \packetCounter_reg[28]_i_1_n_0 ;
  wire \packetCounter_reg[28]_i_1_n_1 ;
  wire \packetCounter_reg[28]_i_1_n_2 ;
  wire \packetCounter_reg[28]_i_1_n_3 ;
  wire \packetCounter_reg[28]_i_1_n_4 ;
  wire \packetCounter_reg[28]_i_1_n_5 ;
  wire \packetCounter_reg[28]_i_1_n_6 ;
  wire \packetCounter_reg[28]_i_1_n_7 ;
  wire \packetCounter_reg[31]_i_3_n_2 ;
  wire \packetCounter_reg[31]_i_3_n_3 ;
  wire \packetCounter_reg[31]_i_3_n_5 ;
  wire \packetCounter_reg[31]_i_3_n_6 ;
  wire \packetCounter_reg[31]_i_3_n_7 ;
  wire \packetCounter_reg[4]_i_1_n_0 ;
  wire \packetCounter_reg[4]_i_1_n_1 ;
  wire \packetCounter_reg[4]_i_1_n_2 ;
  wire \packetCounter_reg[4]_i_1_n_3 ;
  wire \packetCounter_reg[4]_i_1_n_4 ;
  wire \packetCounter_reg[4]_i_1_n_5 ;
  wire \packetCounter_reg[4]_i_1_n_6 ;
  wire \packetCounter_reg[4]_i_1_n_7 ;
  wire \packetCounter_reg[8]_i_1_n_0 ;
  wire \packetCounter_reg[8]_i_1_n_1 ;
  wire \packetCounter_reg[8]_i_1_n_2 ;
  wire \packetCounter_reg[8]_i_1_n_3 ;
  wire \packetCounter_reg[8]_i_1_n_4 ;
  wire \packetCounter_reg[8]_i_1_n_5 ;
  wire \packetCounter_reg[8]_i_1_n_6 ;
  wire \packetCounter_reg[8]_i_1_n_7 ;
  wire \packetCounter_reg_n_0_[0] ;
  wire \packetCounter_reg_n_0_[10] ;
  wire \packetCounter_reg_n_0_[11] ;
  wire \packetCounter_reg_n_0_[12] ;
  wire \packetCounter_reg_n_0_[13] ;
  wire \packetCounter_reg_n_0_[14] ;
  wire \packetCounter_reg_n_0_[15] ;
  wire \packetCounter_reg_n_0_[16] ;
  wire \packetCounter_reg_n_0_[17] ;
  wire \packetCounter_reg_n_0_[18] ;
  wire \packetCounter_reg_n_0_[19] ;
  wire \packetCounter_reg_n_0_[1] ;
  wire \packetCounter_reg_n_0_[20] ;
  wire \packetCounter_reg_n_0_[21] ;
  wire \packetCounter_reg_n_0_[22] ;
  wire \packetCounter_reg_n_0_[23] ;
  wire \packetCounter_reg_n_0_[24] ;
  wire \packetCounter_reg_n_0_[25] ;
  wire \packetCounter_reg_n_0_[26] ;
  wire \packetCounter_reg_n_0_[27] ;
  wire \packetCounter_reg_n_0_[28] ;
  wire \packetCounter_reg_n_0_[29] ;
  wire \packetCounter_reg_n_0_[2] ;
  wire \packetCounter_reg_n_0_[30] ;
  wire \packetCounter_reg_n_0_[31] ;
  wire \packetCounter_reg_n_0_[3] ;
  wire \packetCounter_reg_n_0_[4] ;
  wire \packetCounter_reg_n_0_[5] ;
  wire \packetCounter_reg_n_0_[6] ;
  wire \packetCounter_reg_n_0_[7] ;
  wire \packetCounter_reg_n_0_[8] ;
  wire \packetCounter_reg_n_0_[9] ;
  wire plusOp_carry__0_i_1_n_0;
  wire plusOp_carry__0_i_2_n_0;
  wire plusOp_carry__0_i_3_n_0;
  wire plusOp_carry__0_i_4_n_0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_i_1_n_0;
  wire plusOp_carry__1_i_2_n_0;
  wire plusOp_carry__1_i_3_n_0;
  wire plusOp_carry__1_i_4_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_i_1_n_0;
  wire plusOp_carry__2_i_2_n_0;
  wire plusOp_carry__2_i_3_n_0;
  wire plusOp_carry__2_i_4_n_0;
  wire plusOp_carry__2_n_0;
  wire plusOp_carry__2_n_1;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry__3_i_1_n_0;
  wire plusOp_carry__3_i_2_n_0;
  wire plusOp_carry__3_i_3_n_0;
  wire plusOp_carry__3_i_4_n_0;
  wire plusOp_carry__3_n_0;
  wire plusOp_carry__3_n_1;
  wire plusOp_carry__3_n_2;
  wire plusOp_carry__3_n_3;
  wire plusOp_carry__4_i_1_n_0;
  wire plusOp_carry__4_i_2_n_0;
  wire plusOp_carry__4_i_3_n_0;
  wire plusOp_carry__4_i_4_n_0;
  wire plusOp_carry__4_n_0;
  wire plusOp_carry__4_n_1;
  wire plusOp_carry__4_n_2;
  wire plusOp_carry__4_n_3;
  wire plusOp_carry__5_i_1_n_0;
  wire plusOp_carry__5_i_2_n_0;
  wire plusOp_carry__5_i_3_n_0;
  wire plusOp_carry__5_i_4_n_0;
  wire plusOp_carry__5_n_0;
  wire plusOp_carry__5_n_1;
  wire plusOp_carry__5_n_2;
  wire plusOp_carry__5_n_3;
  wire plusOp_carry__6_i_1_n_0;
  wire plusOp_carry__6_i_2_n_0;
  wire plusOp_carry__6_i_3_n_0;
  wire plusOp_carry__6_n_2;
  wire plusOp_carry__6_n_3;
  wire plusOp_carry_i_1_n_0;
  wire plusOp_carry_i_2_n_0;
  wire plusOp_carry_i_3_n_0;
  wire plusOp_carry_i_4_n_0;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  (* RTL_KEEP = "yes" *) wire [1:0]state_nxt;
  wire [16:0]synch_data_0;
  wire [16:0]synch_data_1;
  wire \synch_data_2_reg_n_0_[0] ;
  wire \synch_data_2_reg_n_0_[10] ;
  wire \synch_data_2_reg_n_0_[11] ;
  wire \synch_data_2_reg_n_0_[12] ;
  wire \synch_data_2_reg_n_0_[13] ;
  wire \synch_data_2_reg_n_0_[14] ;
  wire \synch_data_2_reg_n_0_[15] ;
  wire \synch_data_2_reg_n_0_[16] ;
  wire \synch_data_2_reg_n_0_[3] ;
  wire [31:0]transfer_cnt;
  wire \transfer_cnt[0]_i_1_n_0 ;
  wire \transfer_cnt[0]_i_2_n_0 ;
  wire \transfer_cnt[0]_i_3_n_0 ;
  wire \transfer_cnt[0]_i_4_n_0 ;
  wire \transfer_cnt[0]_i_5_n_0 ;
  wire \transfer_cnt[0]_i_6_n_0 ;
  wire \transfer_cnt[0]_i_7_n_0 ;
  wire \transfer_cnt[0]_i_8_n_0 ;
  wire \transfer_cnt[0]_i_9_n_0 ;
  wire \transfer_cnt[31]_i_10_n_0 ;
  wire \transfer_cnt[31]_i_11_n_0 ;
  wire \transfer_cnt[31]_i_12_n_0 ;
  wire \transfer_cnt[31]_i_13_n_0 ;
  wire \transfer_cnt[31]_i_14_n_0 ;
  wire \transfer_cnt[31]_i_15_n_0 ;
  wire \transfer_cnt[31]_i_1_n_0 ;
  wire \transfer_cnt[31]_i_2_n_0 ;
  wire \transfer_cnt[31]_i_3_n_0 ;
  wire \transfer_cnt[31]_i_4_n_0 ;
  wire \transfer_cnt[31]_i_5_n_0 ;
  wire \transfer_cnt[31]_i_6_n_0 ;
  wire \transfer_cnt[31]_i_7_n_0 ;
  wire \transfer_cnt[31]_i_8_n_0 ;
  wire \transfer_cnt[31]_i_9_n_0 ;
  wire tvalid_i_2_n_0;
  wire [3:2]\NLW_packetCounter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_packetCounter_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFBFFFBFB08000808)) 
    \FSM_sequential_state_nxt[0]_i_1 
       (.I0(\FSM_sequential_state_nxt[0]_i_2_n_0 ),
        .I1(ARESETN),
        .I2(\FSM_sequential_state_nxt[0]_i_3_n_0 ),
        .I3(\FSM_sequential_state_nxt[0]_i_4_n_0 ),
        .I4(state_nxt[1]),
        .I5(state_nxt[0]),
        .O(\FSM_sequential_state_nxt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_state_nxt[0]_i_10 
       (.I0(enable),
        .I1(\packetCounter_reg_n_0_[9] ),
        .I2(\packetCounter_reg_n_0_[10] ),
        .O(\FSM_sequential_state_nxt[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[0]_i_11 
       (.I0(\packetCounter_reg_n_0_[16] ),
        .I1(\packetCounter_reg_n_0_[3] ),
        .I2(\packetCounter_reg_n_0_[13] ),
        .I3(\packetCounter_reg_n_0_[2] ),
        .O(\FSM_sequential_state_nxt[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_state_nxt[0]_i_12 
       (.I0(\packetCounter_reg_n_0_[18] ),
        .I1(\packetCounter_reg_n_0_[25] ),
        .I2(\packetCounter_reg_n_0_[12] ),
        .I3(\packetCounter_reg_n_0_[29] ),
        .O(\FSM_sequential_state_nxt[0]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_state_nxt[0]_i_13 
       (.I0(\packetCounter_reg_n_0_[4] ),
        .I1(\packetCounter_reg_n_0_[24] ),
        .I2(\packetCounter_reg_n_0_[9] ),
        .I3(\packetCounter_reg_n_0_[1] ),
        .O(\FSM_sequential_state_nxt[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[0]_i_14 
       (.I0(\packetCounter_reg_n_0_[20] ),
        .I1(\packetCounter_reg_n_0_[23] ),
        .I2(\packetCounter_reg_n_0_[17] ),
        .I3(\packetCounter_reg_n_0_[27] ),
        .O(\FSM_sequential_state_nxt[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \FSM_sequential_state_nxt[0]_i_2 
       (.I0(\FSM_sequential_state_nxt[0]_i_5_n_0 ),
        .I1(\FSM_sequential_state_nxt[0]_i_6_n_0 ),
        .I2(\FSM_sequential_state_nxt[0]_i_7_n_0 ),
        .I3(\FSM_sequential_state_nxt[0]_i_8_n_0 ),
        .I4(\FSM_sequential_state_nxt[0]_i_9_n_0 ),
        .O(\FSM_sequential_state_nxt[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_state_nxt[0]_i_3 
       (.I0(state_nxt[0]),
        .I1(enable),
        .I2(\synch_data_2_reg_n_0_[0] ),
        .O(\FSM_sequential_state_nxt[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000F1FFFFFF)) 
    \FSM_sequential_state_nxt[0]_i_4 
       (.I0(\FSM_sequential_state_nxt[1]_i_6_n_0 ),
        .I1(\FSM_sequential_state_nxt[1]_i_5_n_0 ),
        .I2(\packetCounter[31]_i_4_n_0 ),
        .I3(\FSM_sequential_state_nxt[0]_i_10_n_0 ),
        .I4(\packetCounter[31]_i_5_n_0 ),
        .I5(I_data1),
        .O(\FSM_sequential_state_nxt[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \FSM_sequential_state_nxt[0]_i_5 
       (.I0(enable),
        .I1(state_nxt[1]),
        .I2(\packetCounter_reg_n_0_[28] ),
        .I3(\packetCounter_reg_n_0_[21] ),
        .I4(\packetCounter_reg_n_0_[22] ),
        .I5(\packetCounter_reg_n_0_[11] ),
        .O(\FSM_sequential_state_nxt[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \FSM_sequential_state_nxt[0]_i_6 
       (.I0(\packetCounter_reg_n_0_[14] ),
        .I1(\packetCounter_reg_n_0_[31] ),
        .I2(\packetCounter_reg_n_0_[6] ),
        .I3(\packetCounter_reg_n_0_[7] ),
        .I4(\FSM_sequential_state_nxt[0]_i_11_n_0 ),
        .O(\FSM_sequential_state_nxt[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \FSM_sequential_state_nxt[0]_i_7 
       (.I0(\packetCounter_reg_n_0_[30] ),
        .I1(\packetCounter_reg_n_0_[19] ),
        .I2(\packetCounter_reg_n_0_[26] ),
        .I3(\packetCounter_reg_n_0_[0] ),
        .I4(\FSM_sequential_state_nxt[0]_i_12_n_0 ),
        .O(\FSM_sequential_state_nxt[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \FSM_sequential_state_nxt[0]_i_8 
       (.I0(\packetCounter_reg_n_0_[15] ),
        .I1(\packetCounter_reg_n_0_[10] ),
        .I2(\packetCounter_reg_n_0_[5] ),
        .I3(\packetCounter_reg_n_0_[8] ),
        .I4(\FSM_sequential_state_nxt[0]_i_13_n_0 ),
        .I5(\FSM_sequential_state_nxt[0]_i_14_n_0 ),
        .O(\FSM_sequential_state_nxt[0]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h8BFF88FF)) 
    \FSM_sequential_state_nxt[0]_i_9 
       (.I0(\synch_data_2_reg_n_0_[0] ),
        .I1(state_nxt[0]),
        .I2(state_nxt[1]),
        .I3(enable),
        .I4(enable_nxt_reg_n_0),
        .O(\FSM_sequential_state_nxt[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hD5D5FFFF80000000)) 
    \FSM_sequential_state_nxt[1]_i_1 
       (.I0(ARESETN),
        .I1(state_nxt[0]),
        .I2(enable),
        .I3(\synch_data_2_reg_n_0_[0] ),
        .I4(\FSM_sequential_state_nxt[1]_i_2_n_0 ),
        .I5(state_nxt[1]),
        .O(\FSM_sequential_state_nxt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[1]_i_10 
       (.I0(transfer_cnt[22]),
        .I1(transfer_cnt[16]),
        .I2(transfer_cnt[9]),
        .I3(transfer_cnt[5]),
        .O(\FSM_sequential_state_nxt[1]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[1]_i_11 
       (.I0(transfer_cnt[28]),
        .I1(transfer_cnt[25]),
        .I2(transfer_cnt[30]),
        .I3(transfer_cnt[0]),
        .O(\FSM_sequential_state_nxt[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h54545455FFFFFFFF)) 
    \FSM_sequential_state_nxt[1]_i_2 
       (.I0(I_data1),
        .I1(\FSM_sequential_state_nxt[1]_i_4_n_0 ),
        .I2(\packetCounter[31]_i_4_n_0 ),
        .I3(\FSM_sequential_state_nxt[1]_i_5_n_0 ),
        .I4(\FSM_sequential_state_nxt[1]_i_6_n_0 ),
        .I5(state_nxt[1]),
        .O(\FSM_sequential_state_nxt[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state_nxt[1]_i_3 
       (.I0(enable),
        .I1(\synch_data_2_reg_n_0_[0] ),
        .O(I_data1));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \FSM_sequential_state_nxt[1]_i_4 
       (.I0(\FSM_sequential_state_nxt[1]_i_7_n_0 ),
        .I1(\packetCounter[31]_i_13_n_0 ),
        .I2(\transfer_cnt[31]_i_6_n_0 ),
        .I3(\packetCounter_reg_n_0_[10] ),
        .I4(\packetCounter_reg_n_0_[9] ),
        .I5(enable),
        .O(\FSM_sequential_state_nxt[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[1]_i_5 
       (.I0(\transfer_cnt[0]_i_9_n_0 ),
        .I1(\FSM_sequential_state_nxt[1]_i_8_n_0 ),
        .I2(\transfer_cnt[0]_i_8_n_0 ),
        .I3(\FSM_sequential_state_nxt[1]_i_9_n_0 ),
        .O(\FSM_sequential_state_nxt[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[1]_i_6 
       (.I0(\transfer_cnt[0]_i_7_n_0 ),
        .I1(\FSM_sequential_state_nxt[1]_i_10_n_0 ),
        .I2(\transfer_cnt[0]_i_6_n_0 ),
        .I3(\FSM_sequential_state_nxt[1]_i_11_n_0 ),
        .O(\FSM_sequential_state_nxt[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_sequential_state_nxt[1]_i_7 
       (.I0(\packetCounter_reg_n_0_[0] ),
        .I1(\packetCounter_reg_n_0_[1] ),
        .I2(\packetCounter_reg_n_0_[11] ),
        .I3(\packetCounter_reg_n_0_[3] ),
        .O(\FSM_sequential_state_nxt[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[1]_i_8 
       (.I0(transfer_cnt[11]),
        .I1(transfer_cnt[4]),
        .I2(transfer_cnt[13]),
        .I3(transfer_cnt[7]),
        .O(\FSM_sequential_state_nxt[1]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state_nxt[1]_i_9 
       (.I0(transfer_cnt[10]),
        .I1(transfer_cnt[6]),
        .I2(transfer_cnt[23]),
        .I3(transfer_cnt[17]),
        .O(\FSM_sequential_state_nxt[1]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_nxt_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_nxt[0]_i_1_n_0 ),
        .Q(state_nxt[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_nxt_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_nxt[1]_i_1_n_0 ),
        .Q(state_nxt[1]),
        .R(1'b0));
  FDRE \I_data_reg[0] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_2_in),
        .Q(M_AXIS_TDATA[0]),
        .R(p_0_in));
  FDRE \I_data_reg[10] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_5_in),
        .Q(M_AXIS_TDATA[10]),
        .R(p_0_in));
  FDRE \I_data_reg[11] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_5_in),
        .Q(M_AXIS_TDATA[11]),
        .R(p_0_in));
  FDRE \I_data_reg[12] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_6_in),
        .Q(M_AXIS_TDATA[12]),
        .R(p_0_in));
  FDRE \I_data_reg[13] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_6_in),
        .Q(M_AXIS_TDATA[13]),
        .R(p_0_in));
  FDRE \I_data_reg[14] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_7_in),
        .Q(M_AXIS_TDATA[14]),
        .R(p_0_in));
  FDRE \I_data_reg[15] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_7_in),
        .Q(M_AXIS_TDATA[15]),
        .R(p_0_in));
  FDRE \I_data_reg[1] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_2_in),
        .Q(M_AXIS_TDATA[1]),
        .R(p_0_in));
  FDRE \I_data_reg[2] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_1_in),
        .Q(M_AXIS_TDATA[2]),
        .R(p_0_in));
  FDRE \I_data_reg[3] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_1_in),
        .Q(M_AXIS_TDATA[3]),
        .R(p_0_in));
  FDRE \I_data_reg[4] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[3] ),
        .Q(M_AXIS_TDATA[4]),
        .R(p_0_in));
  FDRE \I_data_reg[5] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[3] ),
        .Q(M_AXIS_TDATA[5]),
        .R(p_0_in));
  FDRE \I_data_reg[6] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_3_in),
        .Q(M_AXIS_TDATA[6]),
        .R(p_0_in));
  FDRE \I_data_reg[7] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_3_in),
        .Q(M_AXIS_TDATA[7]),
        .R(p_0_in));
  FDRE \I_data_reg[8] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_4_in),
        .Q(M_AXIS_TDATA[8]),
        .R(p_0_in));
  FDRE \I_data_reg[9] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_4_in),
        .Q(M_AXIS_TDATA[9]),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h80)) 
    \Q_data[14]_i_1 
       (.I0(state_nxt[0]),
        .I1(\synch_data_2_reg_n_0_[0] ),
        .I2(enable),
        .O(I_data));
  FDRE \Q_data_reg[0] 
       (.C(ACLK),
        .CE(I_data),
        .D(p_0_in_0),
        .Q(M_AXIS_TDATA[16]),
        .R(p_0_in));
  FDRE \Q_data_reg[10] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[14] ),
        .Q(M_AXIS_TDATA[26]),
        .R(p_0_in));
  FDRE \Q_data_reg[11] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[14] ),
        .Q(M_AXIS_TDATA[27]),
        .R(p_0_in));
  FDRE \Q_data_reg[12] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[15] ),
        .Q(M_AXIS_TDATA[28]),
        .R(p_0_in));
  FDRE \Q_data_reg[13] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[15] ),
        .Q(M_AXIS_TDATA[29]),
        .R(p_0_in));
  FDRE \Q_data_reg[14] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[16] ),
        .Q(M_AXIS_TDATA[30]),
        .R(p_0_in));
  FDRE \Q_data_reg[15] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[16] ),
        .Q(M_AXIS_TDATA[31]),
        .R(p_0_in));
  FDRE \Q_data_reg[1] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(p_0_in_0),
        .Q(M_AXIS_TDATA[17]),
        .R(p_0_in));
  FDRE \Q_data_reg[2] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[10] ),
        .Q(M_AXIS_TDATA[18]),
        .R(p_0_in));
  FDRE \Q_data_reg[3] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[10] ),
        .Q(M_AXIS_TDATA[19]),
        .R(p_0_in));
  FDRE \Q_data_reg[4] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[11] ),
        .Q(M_AXIS_TDATA[20]),
        .R(p_0_in));
  FDRE \Q_data_reg[5] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[11] ),
        .Q(M_AXIS_TDATA[21]),
        .R(p_0_in));
  FDRE \Q_data_reg[6] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[12] ),
        .Q(M_AXIS_TDATA[22]),
        .R(p_0_in));
  FDRE \Q_data_reg[7] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[12] ),
        .Q(M_AXIS_TDATA[23]),
        .R(p_0_in));
  FDRE \Q_data_reg[8] 
       (.C(ACLK),
        .CE(I_data),
        .D(\synch_data_2_reg_n_0_[13] ),
        .Q(M_AXIS_TDATA[24]),
        .R(p_0_in));
  FDRE \Q_data_reg[9] 
       (.C(ACLK),
        .CE(tvalid_i_2_n_0),
        .D(\synch_data_2_reg_n_0_[13] ),
        .Q(M_AXIS_TDATA[25]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFFFB0008)) 
    enable_nxt_i_1
       (.I0(enable),
        .I1(ARESETN),
        .I2(state_nxt[0]),
        .I3(state_nxt[1]),
        .I4(enable_nxt_reg_n_0),
        .O(enable_nxt_i_1_n_0));
  FDRE enable_nxt_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(enable_nxt_i_1_n_0),
        .Q(enable_nxt_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \packetCounter[0]_i_1 
       (.I0(state_nxt[1]),
        .I1(enable),
        .I2(\synch_data_2_reg_n_0_[0] ),
        .I3(ARESETN),
        .I4(\packetCounter_reg_n_0_[0] ),
        .O(\packetCounter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_2 
       (.I0(\packetCounter_reg_n_0_[12] ),
        .O(\packetCounter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_3 
       (.I0(\packetCounter_reg_n_0_[11] ),
        .O(\packetCounter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_4 
       (.I0(\packetCounter_reg_n_0_[10] ),
        .O(\packetCounter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_5 
       (.I0(\packetCounter_reg_n_0_[9] ),
        .O(\packetCounter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_2 
       (.I0(\packetCounter_reg_n_0_[16] ),
        .O(\packetCounter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_3 
       (.I0(\packetCounter_reg_n_0_[15] ),
        .O(\packetCounter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_4 
       (.I0(\packetCounter_reg_n_0_[14] ),
        .O(\packetCounter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_5 
       (.I0(\packetCounter_reg_n_0_[13] ),
        .O(\packetCounter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_2 
       (.I0(\packetCounter_reg_n_0_[20] ),
        .O(\packetCounter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_3 
       (.I0(\packetCounter_reg_n_0_[19] ),
        .O(\packetCounter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_4 
       (.I0(\packetCounter_reg_n_0_[18] ),
        .O(\packetCounter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_5 
       (.I0(\packetCounter_reg_n_0_[17] ),
        .O(\packetCounter[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_2 
       (.I0(\packetCounter_reg_n_0_[24] ),
        .O(\packetCounter[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_3 
       (.I0(\packetCounter_reg_n_0_[23] ),
        .O(\packetCounter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_4 
       (.I0(\packetCounter_reg_n_0_[22] ),
        .O(\packetCounter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_5 
       (.I0(\packetCounter_reg_n_0_[21] ),
        .O(\packetCounter[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_2 
       (.I0(\packetCounter_reg_n_0_[28] ),
        .O(\packetCounter[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_3 
       (.I0(\packetCounter_reg_n_0_[27] ),
        .O(\packetCounter[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_4 
       (.I0(\packetCounter_reg_n_0_[26] ),
        .O(\packetCounter[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_5 
       (.I0(\packetCounter_reg_n_0_[25] ),
        .O(\packetCounter[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \packetCounter[31]_i_1 
       (.I0(\packetCounter[31]_i_4_n_0 ),
        .I1(\packetCounter_reg_n_0_[9] ),
        .I2(\packetCounter_reg_n_0_[10] ),
        .I3(\packetCounter[31]_i_5_n_0 ),
        .I4(\packetCounter[31]_i_2_n_0 ),
        .O(\packetCounter[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \packetCounter[31]_i_10 
       (.I0(\packetCounter_reg_n_0_[30] ),
        .I1(\packetCounter_reg_n_0_[15] ),
        .I2(\packetCounter_reg_n_0_[13] ),
        .I3(\packetCounter_reg_n_0_[31] ),
        .O(\packetCounter[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \packetCounter[31]_i_11 
       (.I0(\packetCounter_reg_n_0_[19] ),
        .I1(\packetCounter_reg_n_0_[18] ),
        .I2(\packetCounter_reg_n_0_[27] ),
        .I3(\packetCounter_reg_n_0_[14] ),
        .O(\packetCounter[31]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \packetCounter[31]_i_12 
       (.I0(\packetCounter_reg_n_0_[5] ),
        .I1(\packetCounter_reg_n_0_[8] ),
        .O(\packetCounter[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \packetCounter[31]_i_13 
       (.I0(\packetCounter_reg_n_0_[7] ),
        .I1(\packetCounter_reg_n_0_[6] ),
        .I2(\packetCounter_reg_n_0_[20] ),
        .I3(\packetCounter_reg_n_0_[2] ),
        .O(\packetCounter[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \packetCounter[31]_i_2 
       (.I0(ARESETN),
        .I1(\synch_data_2_reg_n_0_[0] ),
        .I2(enable),
        .I3(state_nxt[1]),
        .O(\packetCounter[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \packetCounter[31]_i_4 
       (.I0(\packetCounter[31]_i_9_n_0 ),
        .I1(\packetCounter[31]_i_10_n_0 ),
        .I2(\packetCounter[31]_i_11_n_0 ),
        .I3(\packetCounter_reg_n_0_[12] ),
        .I4(\packetCounter_reg_n_0_[4] ),
        .I5(\packetCounter[31]_i_12_n_0 ),
        .O(\packetCounter[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \packetCounter[31]_i_5 
       (.I0(\transfer_cnt[31]_i_6_n_0 ),
        .I1(\packetCounter[31]_i_13_n_0 ),
        .I2(\packetCounter_reg_n_0_[0] ),
        .I3(\packetCounter_reg_n_0_[1] ),
        .I4(\packetCounter_reg_n_0_[11] ),
        .I5(\packetCounter_reg_n_0_[3] ),
        .O(\packetCounter[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[31]_i_6 
       (.I0(\packetCounter_reg_n_0_[31] ),
        .O(\packetCounter[31]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[31]_i_7 
       (.I0(\packetCounter_reg_n_0_[30] ),
        .O(\packetCounter[31]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[31]_i_8 
       (.I0(\packetCounter_reg_n_0_[29] ),
        .O(\packetCounter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \packetCounter[31]_i_9 
       (.I0(\packetCounter_reg_n_0_[17] ),
        .I1(\packetCounter_reg_n_0_[16] ),
        .I2(\packetCounter_reg_n_0_[28] ),
        .I3(\packetCounter_reg_n_0_[29] ),
        .O(\packetCounter[31]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_2 
       (.I0(\packetCounter_reg_n_0_[4] ),
        .O(\packetCounter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_3 
       (.I0(\packetCounter_reg_n_0_[3] ),
        .O(\packetCounter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_4 
       (.I0(\packetCounter_reg_n_0_[2] ),
        .O(\packetCounter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_5 
       (.I0(\packetCounter_reg_n_0_[1] ),
        .O(\packetCounter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_2 
       (.I0(\packetCounter_reg_n_0_[8] ),
        .O(\packetCounter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_3 
       (.I0(\packetCounter_reg_n_0_[7] ),
        .O(\packetCounter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_4 
       (.I0(\packetCounter_reg_n_0_[6] ),
        .O(\packetCounter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_5 
       (.I0(\packetCounter_reg_n_0_[5] ),
        .O(\packetCounter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\packetCounter[0]_i_1_n_0 ),
        .Q(\packetCounter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[10] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[12]_i_1_n_6 ),
        .Q(\packetCounter_reg_n_0_[10] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[11] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[12]_i_1_n_5 ),
        .Q(\packetCounter_reg_n_0_[11] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[12] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[12]_i_1_n_4 ),
        .Q(\packetCounter_reg_n_0_[12] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[12]_i_1 
       (.CI(\packetCounter_reg[8]_i_1_n_0 ),
        .CO({\packetCounter_reg[12]_i_1_n_0 ,\packetCounter_reg[12]_i_1_n_1 ,\packetCounter_reg[12]_i_1_n_2 ,\packetCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\packetCounter_reg[12]_i_1_n_4 ,\packetCounter_reg[12]_i_1_n_5 ,\packetCounter_reg[12]_i_1_n_6 ,\packetCounter_reg[12]_i_1_n_7 }),
        .S({\packetCounter[12]_i_2_n_0 ,\packetCounter[12]_i_3_n_0 ,\packetCounter[12]_i_4_n_0 ,\packetCounter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[13] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[16]_i_1_n_7 ),
        .Q(\packetCounter_reg_n_0_[13] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[14] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[16]_i_1_n_6 ),
        .Q(\packetCounter_reg_n_0_[14] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[15] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[16]_i_1_n_5 ),
        .Q(\packetCounter_reg_n_0_[15] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[16] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[16]_i_1_n_4 ),
        .Q(\packetCounter_reg_n_0_[16] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[16]_i_1 
       (.CI(\packetCounter_reg[12]_i_1_n_0 ),
        .CO({\packetCounter_reg[16]_i_1_n_0 ,\packetCounter_reg[16]_i_1_n_1 ,\packetCounter_reg[16]_i_1_n_2 ,\packetCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\packetCounter_reg[16]_i_1_n_4 ,\packetCounter_reg[16]_i_1_n_5 ,\packetCounter_reg[16]_i_1_n_6 ,\packetCounter_reg[16]_i_1_n_7 }),
        .S({\packetCounter[16]_i_2_n_0 ,\packetCounter[16]_i_3_n_0 ,\packetCounter[16]_i_4_n_0 ,\packetCounter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[17] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[20]_i_1_n_7 ),
        .Q(\packetCounter_reg_n_0_[17] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[18] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[20]_i_1_n_6 ),
        .Q(\packetCounter_reg_n_0_[18] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[19] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[20]_i_1_n_5 ),
        .Q(\packetCounter_reg_n_0_[19] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[1] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[4]_i_1_n_7 ),
        .Q(\packetCounter_reg_n_0_[1] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[20] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[20]_i_1_n_4 ),
        .Q(\packetCounter_reg_n_0_[20] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[20]_i_1 
       (.CI(\packetCounter_reg[16]_i_1_n_0 ),
        .CO({\packetCounter_reg[20]_i_1_n_0 ,\packetCounter_reg[20]_i_1_n_1 ,\packetCounter_reg[20]_i_1_n_2 ,\packetCounter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\packetCounter_reg[20]_i_1_n_4 ,\packetCounter_reg[20]_i_1_n_5 ,\packetCounter_reg[20]_i_1_n_6 ,\packetCounter_reg[20]_i_1_n_7 }),
        .S({\packetCounter[20]_i_2_n_0 ,\packetCounter[20]_i_3_n_0 ,\packetCounter[20]_i_4_n_0 ,\packetCounter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[21] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[24]_i_1_n_7 ),
        .Q(\packetCounter_reg_n_0_[21] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[22] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[24]_i_1_n_6 ),
        .Q(\packetCounter_reg_n_0_[22] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[23] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[24]_i_1_n_5 ),
        .Q(\packetCounter_reg_n_0_[23] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[24] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[24]_i_1_n_4 ),
        .Q(\packetCounter_reg_n_0_[24] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[24]_i_1 
       (.CI(\packetCounter_reg[20]_i_1_n_0 ),
        .CO({\packetCounter_reg[24]_i_1_n_0 ,\packetCounter_reg[24]_i_1_n_1 ,\packetCounter_reg[24]_i_1_n_2 ,\packetCounter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\packetCounter_reg[24]_i_1_n_4 ,\packetCounter_reg[24]_i_1_n_5 ,\packetCounter_reg[24]_i_1_n_6 ,\packetCounter_reg[24]_i_1_n_7 }),
        .S({\packetCounter[24]_i_2_n_0 ,\packetCounter[24]_i_3_n_0 ,\packetCounter[24]_i_4_n_0 ,\packetCounter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[25] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[28]_i_1_n_7 ),
        .Q(\packetCounter_reg_n_0_[25] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[26] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[28]_i_1_n_6 ),
        .Q(\packetCounter_reg_n_0_[26] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[27] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[28]_i_1_n_5 ),
        .Q(\packetCounter_reg_n_0_[27] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[28] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[28]_i_1_n_4 ),
        .Q(\packetCounter_reg_n_0_[28] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[28]_i_1 
       (.CI(\packetCounter_reg[24]_i_1_n_0 ),
        .CO({\packetCounter_reg[28]_i_1_n_0 ,\packetCounter_reg[28]_i_1_n_1 ,\packetCounter_reg[28]_i_1_n_2 ,\packetCounter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\packetCounter_reg[28]_i_1_n_4 ,\packetCounter_reg[28]_i_1_n_5 ,\packetCounter_reg[28]_i_1_n_6 ,\packetCounter_reg[28]_i_1_n_7 }),
        .S({\packetCounter[28]_i_2_n_0 ,\packetCounter[28]_i_3_n_0 ,\packetCounter[28]_i_4_n_0 ,\packetCounter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[29] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[31]_i_3_n_7 ),
        .Q(\packetCounter_reg_n_0_[29] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[2] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[4]_i_1_n_6 ),
        .Q(\packetCounter_reg_n_0_[2] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[30] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[31]_i_3_n_6 ),
        .Q(\packetCounter_reg_n_0_[30] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[31] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[31]_i_3_n_5 ),
        .Q(\packetCounter_reg_n_0_[31] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[31]_i_3 
       (.CI(\packetCounter_reg[28]_i_1_n_0 ),
        .CO({\NLW_packetCounter_reg[31]_i_3_CO_UNCONNECTED [3:2],\packetCounter_reg[31]_i_3_n_2 ,\packetCounter_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_packetCounter_reg[31]_i_3_O_UNCONNECTED [3],\packetCounter_reg[31]_i_3_n_5 ,\packetCounter_reg[31]_i_3_n_6 ,\packetCounter_reg[31]_i_3_n_7 }),
        .S({1'b0,\packetCounter[31]_i_6_n_0 ,\packetCounter[31]_i_7_n_0 ,\packetCounter[31]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[3] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[4]_i_1_n_5 ),
        .Q(\packetCounter_reg_n_0_[3] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[4] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[4]_i_1_n_4 ),
        .Q(\packetCounter_reg_n_0_[4] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\packetCounter_reg[4]_i_1_n_0 ,\packetCounter_reg[4]_i_1_n_1 ,\packetCounter_reg[4]_i_1_n_2 ,\packetCounter_reg[4]_i_1_n_3 }),
        .CYINIT(\packetCounter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\packetCounter_reg[4]_i_1_n_4 ,\packetCounter_reg[4]_i_1_n_5 ,\packetCounter_reg[4]_i_1_n_6 ,\packetCounter_reg[4]_i_1_n_7 }),
        .S({\packetCounter[4]_i_2_n_0 ,\packetCounter[4]_i_3_n_0 ,\packetCounter[4]_i_4_n_0 ,\packetCounter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[5] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[8]_i_1_n_7 ),
        .Q(\packetCounter_reg_n_0_[5] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[6] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[8]_i_1_n_6 ),
        .Q(\packetCounter_reg_n_0_[6] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[7] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[8]_i_1_n_5 ),
        .Q(\packetCounter_reg_n_0_[7] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[8] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[8]_i_1_n_4 ),
        .Q(\packetCounter_reg_n_0_[8] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[8]_i_1 
       (.CI(\packetCounter_reg[4]_i_1_n_0 ),
        .CO({\packetCounter_reg[8]_i_1_n_0 ,\packetCounter_reg[8]_i_1_n_1 ,\packetCounter_reg[8]_i_1_n_2 ,\packetCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\packetCounter_reg[8]_i_1_n_4 ,\packetCounter_reg[8]_i_1_n_5 ,\packetCounter_reg[8]_i_1_n_6 ,\packetCounter_reg[8]_i_1_n_7 }),
        .S({\packetCounter[8]_i_2_n_0 ,\packetCounter[8]_i_3_n_0 ,\packetCounter[8]_i_4_n_0 ,\packetCounter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[9] 
       (.C(ACLK),
        .CE(\packetCounter[31]_i_2_n_0 ),
        .D(\packetCounter_reg[12]_i_1_n_7 ),
        .Q(\packetCounter_reg_n_0_[9] ),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(transfer_cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({plusOp_carry_i_1_n_0,plusOp_carry_i_2_n_0,plusOp_carry_i_3_n_0,plusOp_carry_i_4_n_0}));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({plusOp_carry__0_i_1_n_0,plusOp_carry__0_i_2_n_0,plusOp_carry__0_i_3_n_0,plusOp_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_1
       (.I0(transfer_cnt[8]),
        .O(plusOp_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_2
       (.I0(transfer_cnt[7]),
        .O(plusOp_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_3
       (.I0(transfer_cnt[6]),
        .O(plusOp_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__0_i_4
       (.I0(transfer_cnt[5]),
        .O(plusOp_carry__0_i_4_n_0));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({plusOp_carry__1_i_1_n_0,plusOp_carry__1_i_2_n_0,plusOp_carry__1_i_3_n_0,plusOp_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_1
       (.I0(transfer_cnt[12]),
        .O(plusOp_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_2
       (.I0(transfer_cnt[11]),
        .O(plusOp_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_3
       (.I0(transfer_cnt[10]),
        .O(plusOp_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__1_i_4
       (.I0(transfer_cnt[9]),
        .O(plusOp_carry__1_i_4_n_0));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({plusOp_carry__2_n_0,plusOp_carry__2_n_1,plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({plusOp_carry__2_i_1_n_0,plusOp_carry__2_i_2_n_0,plusOp_carry__2_i_3_n_0,plusOp_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__2_i_1
       (.I0(transfer_cnt[16]),
        .O(plusOp_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__2_i_2
       (.I0(transfer_cnt[15]),
        .O(plusOp_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__2_i_3
       (.I0(transfer_cnt[14]),
        .O(plusOp_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__2_i_4
       (.I0(transfer_cnt[13]),
        .O(plusOp_carry__2_i_4_n_0));
  CARRY4 plusOp_carry__3
       (.CI(plusOp_carry__2_n_0),
        .CO({plusOp_carry__3_n_0,plusOp_carry__3_n_1,plusOp_carry__3_n_2,plusOp_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({plusOp_carry__3_i_1_n_0,plusOp_carry__3_i_2_n_0,plusOp_carry__3_i_3_n_0,plusOp_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__3_i_1
       (.I0(transfer_cnt[20]),
        .O(plusOp_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__3_i_2
       (.I0(transfer_cnt[19]),
        .O(plusOp_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__3_i_3
       (.I0(transfer_cnt[18]),
        .O(plusOp_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__3_i_4
       (.I0(transfer_cnt[17]),
        .O(plusOp_carry__3_i_4_n_0));
  CARRY4 plusOp_carry__4
       (.CI(plusOp_carry__3_n_0),
        .CO({plusOp_carry__4_n_0,plusOp_carry__4_n_1,plusOp_carry__4_n_2,plusOp_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({plusOp_carry__4_i_1_n_0,plusOp_carry__4_i_2_n_0,plusOp_carry__4_i_3_n_0,plusOp_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__4_i_1
       (.I0(transfer_cnt[24]),
        .O(plusOp_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__4_i_2
       (.I0(transfer_cnt[23]),
        .O(plusOp_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__4_i_3
       (.I0(transfer_cnt[22]),
        .O(plusOp_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__4_i_4
       (.I0(transfer_cnt[21]),
        .O(plusOp_carry__4_i_4_n_0));
  CARRY4 plusOp_carry__5
       (.CI(plusOp_carry__4_n_0),
        .CO({plusOp_carry__5_n_0,plusOp_carry__5_n_1,plusOp_carry__5_n_2,plusOp_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({plusOp_carry__5_i_1_n_0,plusOp_carry__5_i_2_n_0,plusOp_carry__5_i_3_n_0,plusOp_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__5_i_1
       (.I0(transfer_cnt[28]),
        .O(plusOp_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__5_i_2
       (.I0(transfer_cnt[27]),
        .O(plusOp_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__5_i_3
       (.I0(transfer_cnt[26]),
        .O(plusOp_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__5_i_4
       (.I0(transfer_cnt[25]),
        .O(plusOp_carry__5_i_4_n_0));
  CARRY4 plusOp_carry__6
       (.CI(plusOp_carry__5_n_0),
        .CO({NLW_plusOp_carry__6_CO_UNCONNECTED[3:2],plusOp_carry__6_n_2,plusOp_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,plusOp_carry__6_i_1_n_0,plusOp_carry__6_i_2_n_0,plusOp_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__6_i_1
       (.I0(transfer_cnt[31]),
        .O(plusOp_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__6_i_2
       (.I0(transfer_cnt[30]),
        .O(plusOp_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry__6_i_3
       (.I0(transfer_cnt[29]),
        .O(plusOp_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_1
       (.I0(transfer_cnt[4]),
        .O(plusOp_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_2
       (.I0(transfer_cnt[3]),
        .O(plusOp_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_3
       (.I0(transfer_cnt[2]),
        .O(plusOp_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    plusOp_carry_i_4
       (.I0(transfer_cnt[1]),
        .O(plusOp_carry_i_4_n_0));
  FDRE \synch_data_0_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(synch_data_0[0]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[10]),
        .Q(synch_data_0[10]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[11]),
        .Q(synch_data_0[11]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[12]),
        .Q(synch_data_0[12]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[13]),
        .Q(synch_data_0[13]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[14]),
        .Q(synch_data_0[14]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[15]),
        .Q(synch_data_0[15]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[16]),
        .Q(synch_data_0[16]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(synch_data_0[1]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(synch_data_0[2]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(synch_data_0[3]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[4]),
        .Q(synch_data_0[4]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[5]),
        .Q(synch_data_0[5]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[6]),
        .Q(synch_data_0[6]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[7]),
        .Q(synch_data_0[7]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[8]),
        .Q(synch_data_0[8]),
        .R(p_0_in));
  FDRE \synch_data_0_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(D[9]),
        .Q(synch_data_0[9]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[0]),
        .Q(synch_data_1[0]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[10]),
        .Q(synch_data_1[10]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[11]),
        .Q(synch_data_1[11]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[12]),
        .Q(synch_data_1[12]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[13]),
        .Q(synch_data_1[13]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[14]),
        .Q(synch_data_1[14]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[15]),
        .Q(synch_data_1[15]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[16]),
        .Q(synch_data_1[16]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[1]),
        .Q(synch_data_1[1]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[2]),
        .Q(synch_data_1[2]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[3]),
        .Q(synch_data_1[3]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[4]),
        .Q(synch_data_1[4]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[5]),
        .Q(synch_data_1[5]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[6]),
        .Q(synch_data_1[6]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[7]),
        .Q(synch_data_1[7]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[8]),
        .Q(synch_data_1[8]),
        .R(p_0_in));
  FDRE \synch_data_1_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_0[9]),
        .Q(synch_data_1[9]),
        .R(p_0_in));
  FDRE \synch_data_2_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[0]),
        .Q(\synch_data_2_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[10] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[10]),
        .Q(\synch_data_2_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[11] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[11]),
        .Q(\synch_data_2_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[12] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[12]),
        .Q(\synch_data_2_reg_n_0_[12] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[13] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[13]),
        .Q(\synch_data_2_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[14] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[14]),
        .Q(\synch_data_2_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[15] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[15]),
        .Q(\synch_data_2_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[16] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[16]),
        .Q(\synch_data_2_reg_n_0_[16] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[1]),
        .Q(p_2_in),
        .R(p_0_in));
  FDRE \synch_data_2_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[2]),
        .Q(p_1_in),
        .R(p_0_in));
  FDRE \synch_data_2_reg[3] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[3]),
        .Q(\synch_data_2_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \synch_data_2_reg[4] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[4]),
        .Q(p_3_in),
        .R(p_0_in));
  FDRE \synch_data_2_reg[5] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[5]),
        .Q(p_4_in),
        .R(p_0_in));
  FDRE \synch_data_2_reg[6] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[6]),
        .Q(p_5_in),
        .R(p_0_in));
  FDRE \synch_data_2_reg[7] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[7]),
        .Q(p_6_in),
        .R(p_0_in));
  FDRE \synch_data_2_reg[8] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[8]),
        .Q(p_7_in),
        .R(p_0_in));
  FDRE \synch_data_2_reg[9] 
       (.C(ACLK),
        .CE(1'b1),
        .D(synch_data_1[9]),
        .Q(p_0_in_0),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \transfer_cnt[0]_i_1 
       (.I0(\transfer_cnt[0]_i_2_n_0 ),
        .I1(\transfer_cnt[0]_i_3_n_0 ),
        .I2(\transfer_cnt[0]_i_4_n_0 ),
        .I3(\transfer_cnt[0]_i_5_n_0 ),
        .I4(\transfer_cnt[31]_i_2_n_0 ),
        .I5(transfer_cnt[0]),
        .O(\transfer_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \transfer_cnt[0]_i_2 
       (.I0(transfer_cnt[0]),
        .I1(transfer_cnt[30]),
        .I2(transfer_cnt[25]),
        .I3(transfer_cnt[28]),
        .I4(\transfer_cnt[0]_i_6_n_0 ),
        .O(\transfer_cnt[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \transfer_cnt[0]_i_3 
       (.I0(transfer_cnt[5]),
        .I1(transfer_cnt[9]),
        .I2(transfer_cnt[16]),
        .I3(transfer_cnt[22]),
        .I4(\transfer_cnt[0]_i_7_n_0 ),
        .O(\transfer_cnt[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \transfer_cnt[0]_i_4 
       (.I0(transfer_cnt[17]),
        .I1(transfer_cnt[23]),
        .I2(transfer_cnt[6]),
        .I3(transfer_cnt[10]),
        .I4(\transfer_cnt[0]_i_8_n_0 ),
        .O(\transfer_cnt[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \transfer_cnt[0]_i_5 
       (.I0(transfer_cnt[7]),
        .I1(transfer_cnt[13]),
        .I2(transfer_cnt[4]),
        .I3(transfer_cnt[11]),
        .I4(\transfer_cnt[0]_i_9_n_0 ),
        .O(\transfer_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \transfer_cnt[0]_i_6 
       (.I0(transfer_cnt[21]),
        .I1(transfer_cnt[19]),
        .I2(transfer_cnt[3]),
        .I3(transfer_cnt[26]),
        .O(\transfer_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \transfer_cnt[0]_i_7 
       (.I0(transfer_cnt[29]),
        .I1(transfer_cnt[20]),
        .I2(transfer_cnt[24]),
        .I3(transfer_cnt[12]),
        .O(\transfer_cnt[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \transfer_cnt[0]_i_8 
       (.I0(transfer_cnt[2]),
        .I1(transfer_cnt[18]),
        .I2(transfer_cnt[31]),
        .I3(transfer_cnt[1]),
        .O(\transfer_cnt[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \transfer_cnt[0]_i_9 
       (.I0(transfer_cnt[27]),
        .I1(transfer_cnt[15]),
        .I2(transfer_cnt[14]),
        .I3(transfer_cnt[8]),
        .O(\transfer_cnt[0]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \transfer_cnt[31]_i_1 
       (.I0(\transfer_cnt[31]_i_3_n_0 ),
        .I1(\transfer_cnt[31]_i_4_n_0 ),
        .I2(\transfer_cnt[31]_i_2_n_0 ),
        .O(\transfer_cnt[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \transfer_cnt[31]_i_10 
       (.I0(transfer_cnt[26]),
        .I1(transfer_cnt[27]),
        .I2(transfer_cnt[24]),
        .I3(transfer_cnt[25]),
        .I4(\transfer_cnt[31]_i_14_n_0 ),
        .O(\transfer_cnt[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \transfer_cnt[31]_i_11 
       (.I0(transfer_cnt[13]),
        .I1(transfer_cnt[12]),
        .I2(transfer_cnt[15]),
        .I3(transfer_cnt[14]),
        .O(\transfer_cnt[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \transfer_cnt[31]_i_12 
       (.I0(transfer_cnt[6]),
        .I1(transfer_cnt[7]),
        .I2(transfer_cnt[4]),
        .I3(transfer_cnt[5]),
        .I4(\transfer_cnt[31]_i_15_n_0 ),
        .O(\transfer_cnt[31]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \transfer_cnt[31]_i_13 
       (.I0(\packetCounter_reg_n_0_[12] ),
        .I1(\packetCounter_reg_n_0_[4] ),
        .I2(\packetCounter_reg_n_0_[8] ),
        .I3(\packetCounter_reg_n_0_[5] ),
        .O(\transfer_cnt[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \transfer_cnt[31]_i_14 
       (.I0(transfer_cnt[29]),
        .I1(transfer_cnt[28]),
        .I2(transfer_cnt[2]),
        .I3(transfer_cnt[30]),
        .O(\transfer_cnt[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \transfer_cnt[31]_i_15 
       (.I0(transfer_cnt[1]),
        .I1(transfer_cnt[0]),
        .I2(transfer_cnt[3]),
        .I3(transfer_cnt[31]),
        .O(\transfer_cnt[31]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \transfer_cnt[31]_i_2 
       (.I0(ARESETN),
        .I1(\transfer_cnt[31]_i_5_n_0 ),
        .I2(\transfer_cnt[31]_i_6_n_0 ),
        .I3(\transfer_cnt[31]_i_7_n_0 ),
        .I4(\transfer_cnt[31]_i_8_n_0 ),
        .I5(state_nxt[1]),
        .O(\transfer_cnt[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \transfer_cnt[31]_i_3 
       (.I0(\transfer_cnt[31]_i_9_n_0 ),
        .I1(transfer_cnt[17]),
        .I2(transfer_cnt[16]),
        .I3(transfer_cnt[19]),
        .I4(transfer_cnt[18]),
        .I5(\transfer_cnt[31]_i_10_n_0 ),
        .O(\transfer_cnt[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \transfer_cnt[31]_i_4 
       (.I0(\transfer_cnt[31]_i_11_n_0 ),
        .I1(transfer_cnt[9]),
        .I2(transfer_cnt[8]),
        .I3(transfer_cnt[11]),
        .I4(transfer_cnt[10]),
        .I5(\transfer_cnt[31]_i_12_n_0 ),
        .O(\transfer_cnt[31]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \transfer_cnt[31]_i_5 
       (.I0(\synch_data_2_reg_n_0_[0] ),
        .I1(enable),
        .O(\transfer_cnt[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \transfer_cnt[31]_i_6 
       (.I0(\packetCounter_reg_n_0_[24] ),
        .I1(\packetCounter_reg_n_0_[21] ),
        .I2(\packetCounter_reg_n_0_[26] ),
        .I3(\packetCounter_reg_n_0_[25] ),
        .I4(\packetCounter_reg_n_0_[22] ),
        .I5(\packetCounter_reg_n_0_[23] ),
        .O(\transfer_cnt[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \transfer_cnt[31]_i_7 
       (.I0(\packetCounter_reg_n_0_[3] ),
        .I1(\packetCounter_reg_n_0_[11] ),
        .I2(\packetCounter_reg_n_0_[1] ),
        .I3(\packetCounter_reg_n_0_[0] ),
        .I4(\packetCounter[31]_i_13_n_0 ),
        .O(\transfer_cnt[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFFFFFFFFFF)) 
    \transfer_cnt[31]_i_8 
       (.I0(\transfer_cnt[31]_i_13_n_0 ),
        .I1(\packetCounter[31]_i_11_n_0 ),
        .I2(\packetCounter[31]_i_10_n_0 ),
        .I3(\packetCounter[31]_i_9_n_0 ),
        .I4(\packetCounter_reg_n_0_[9] ),
        .I5(\packetCounter_reg_n_0_[10] ),
        .O(\transfer_cnt[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \transfer_cnt[31]_i_9 
       (.I0(transfer_cnt[21]),
        .I1(transfer_cnt[20]),
        .I2(transfer_cnt[23]),
        .I3(transfer_cnt[22]),
        .O(\transfer_cnt[31]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\transfer_cnt[0]_i_1_n_0 ),
        .Q(transfer_cnt[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[10] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[10]),
        .Q(transfer_cnt[10]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[11] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[11]),
        .Q(transfer_cnt[11]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[12] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[12]),
        .Q(transfer_cnt[12]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[13] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[13]),
        .Q(transfer_cnt[13]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[14] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[14]),
        .Q(transfer_cnt[14]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[15] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[15]),
        .Q(transfer_cnt[15]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[16] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[16]),
        .Q(transfer_cnt[16]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[17] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[17]),
        .Q(transfer_cnt[17]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[18] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[18]),
        .Q(transfer_cnt[18]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[19] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[19]),
        .Q(transfer_cnt[19]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[1] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[1]),
        .Q(transfer_cnt[1]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[20] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[20]),
        .Q(transfer_cnt[20]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[21] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[21]),
        .Q(transfer_cnt[21]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[22] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[22]),
        .Q(transfer_cnt[22]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[23] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[23]),
        .Q(transfer_cnt[23]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[24] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[24]),
        .Q(transfer_cnt[24]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[25] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[25]),
        .Q(transfer_cnt[25]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[26] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[26]),
        .Q(transfer_cnt[26]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[27] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[27]),
        .Q(transfer_cnt[27]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[28] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[28]),
        .Q(transfer_cnt[28]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[29] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[29]),
        .Q(transfer_cnt[29]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[2] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[2]),
        .Q(transfer_cnt[2]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[30] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[30]),
        .Q(transfer_cnt[30]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[31] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[31]),
        .Q(transfer_cnt[31]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[3] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[3]),
        .Q(transfer_cnt[3]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[4] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[4]),
        .Q(transfer_cnt[4]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[5] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[5]),
        .Q(transfer_cnt[5]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[6] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[6]),
        .Q(transfer_cnt[6]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[7] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[7]),
        .Q(transfer_cnt[7]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[8] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[8]),
        .Q(transfer_cnt[8]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \transfer_cnt_reg[9] 
       (.C(ACLK),
        .CE(\transfer_cnt[31]_i_2_n_0 ),
        .D(data0[9]),
        .Q(transfer_cnt[9]),
        .R(\transfer_cnt[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    tvalid_i_1
       (.I0(ARESETN),
        .O(p_0_in));
  LUT3 #(
    .INIT(8'h08)) 
    tvalid_i_2
       (.I0(state_nxt[1]),
        .I1(enable),
        .I2(\synch_data_2_reg_n_0_[0] ),
        .O(tvalid_i_2_n_0));
  FDRE tvalid_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(tvalid_i_2_n_0),
        .Q(M_AXIS_TVALID),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
