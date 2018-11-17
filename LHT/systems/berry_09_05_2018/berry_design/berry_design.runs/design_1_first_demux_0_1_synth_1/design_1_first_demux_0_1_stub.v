// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Wed Jun  6 00:55:09 2018
// Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_first_demux_0_1_stub.v
// Design      : design_1_first_demux_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "first_demux,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ACLK, ARESETN, I_b0_b1, I_b2_b3, I_b4_b5, I_b6_b7, 
  I_b8_b9, I_b10_b11, I_b12_b13, I_b14_b15, Q_b0_b1, Q_b2_b3, Q_b4_b5, Q_b6_b7, Q_b8_b9, Q_b10_b11, 
  Q_b12_b13, Q_b14_b15, clk_adc, enable, M_AXIS_TVALID, M_AXIS_TDATA)
/* synthesis syn_black_box black_box_pad_pin="ACLK,ARESETN,I_b0_b1,I_b2_b3,I_b4_b5,I_b6_b7,I_b8_b9,I_b10_b11,I_b12_b13,I_b14_b15,Q_b0_b1,Q_b2_b3,Q_b4_b5,Q_b6_b7,Q_b8_b9,Q_b10_b11,Q_b12_b13,Q_b14_b15,clk_adc,enable,M_AXIS_TVALID,M_AXIS_TDATA[31:0]" */;
  input ACLK;
  input ARESETN;
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
  output M_AXIS_TVALID;
  output [31:0]M_AXIS_TDATA;
endmodule
