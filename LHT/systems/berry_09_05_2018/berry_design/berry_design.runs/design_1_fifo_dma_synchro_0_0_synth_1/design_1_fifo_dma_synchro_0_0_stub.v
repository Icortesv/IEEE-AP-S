// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jun 28 11:38:09 2018
// Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_fifo_dma_synchro_0_0_stub.v
// Design      : design_1_fifo_dma_synchro_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_dma_synchro,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(ACLK, ARESETN, S_AXIS_TDATA, S_AXIS_TVALID, 
  M_AXIS_TREADY, S_AXIS_TREADY, M_AXIS_TVALID, M_AXIS_TDATA, M_AXIS_TLAST)
/* synthesis syn_black_box black_box_pad_pin="ACLK,ARESETN,S_AXIS_TDATA[31:0],S_AXIS_TVALID,M_AXIS_TREADY,S_AXIS_TREADY,M_AXIS_TVALID,M_AXIS_TDATA[31:0],M_AXIS_TLAST" */;
  input ACLK;
  input ARESETN;
  input [31:0]S_AXIS_TDATA;
  input S_AXIS_TVALID;
  input M_AXIS_TREADY;
  output S_AXIS_TREADY;
  output M_AXIS_TVALID;
  output [31:0]M_AXIS_TDATA;
  output M_AXIS_TLAST;
endmodule
