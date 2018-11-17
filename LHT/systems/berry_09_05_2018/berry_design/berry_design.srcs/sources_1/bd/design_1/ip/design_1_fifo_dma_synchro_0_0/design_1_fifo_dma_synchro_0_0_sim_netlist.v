// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Thu Jun 28 11:38:11 2018
// Host        : DESKTOP-I8G06M9 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               D:/INIGO/AP_CONTEST/PROJECTS_VIVADO/berry_09_05_2018/berry_design/berry_design.srcs/sources_1/bd/design_1/ip/design_1_fifo_dma_synchro_0_0/design_1_fifo_dma_synchro_0_0_sim_netlist.v
// Design      : design_1_fifo_dma_synchro_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg225-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_fifo_dma_synchro_0_0,fifo_dma_synchro,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_dma_synchro,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_fifo_dma_synchro_0_0
   (ACLK,
    ARESETN,
    S_AXIS_TDATA,
    S_AXIS_TVALID,
    M_AXIS_TREADY,
    S_AXIS_TREADY,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TLAST);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 ACLK CLK" *) input ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 ARESETN RST" *) input ARESETN;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]S_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]M_AXIS_TDATA;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_TLAST;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [31:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;

  design_1_fifo_dma_synchro_0_0_fifo_dma_synchro U0
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "fifo_dma_synchro" *) 
module design_1_fifo_dma_synchro_0_0_fifo_dma_synchro
   (M_AXIS_TDATA,
    M_AXIS_TLAST,
    S_AXIS_TREADY,
    M_AXIS_TVALID,
    S_AXIS_TVALID,
    M_AXIS_TREADY,
    S_AXIS_TDATA,
    ACLK,
    ARESETN);
  output [31:0]M_AXIS_TDATA;
  output M_AXIS_TLAST;
  output S_AXIS_TREADY;
  output M_AXIS_TVALID;
  input S_AXIS_TVALID;
  input M_AXIS_TREADY;
  input [31:0]S_AXIS_TDATA;
  input ACLK;
  input ARESETN;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [31:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TREADY_i_1_n_0;
  wire S_AXIS_TVALID;
  wire [31:1]data0;
  wire \m_data[0]_i_1_n_0 ;
  wire \m_data[10]_i_1_n_0 ;
  wire \m_data[11]_i_1_n_0 ;
  wire \m_data[12]_i_1_n_0 ;
  wire \m_data[13]_i_1_n_0 ;
  wire \m_data[14]_i_1_n_0 ;
  wire \m_data[15]_i_1_n_0 ;
  wire \m_data[16]_i_1_n_0 ;
  wire \m_data[17]_i_1_n_0 ;
  wire \m_data[18]_i_1_n_0 ;
  wire \m_data[19]_i_1_n_0 ;
  wire \m_data[1]_i_1_n_0 ;
  wire \m_data[20]_i_1_n_0 ;
  wire \m_data[21]_i_1_n_0 ;
  wire \m_data[22]_i_1_n_0 ;
  wire \m_data[23]_i_1_n_0 ;
  wire \m_data[24]_i_1_n_0 ;
  wire \m_data[25]_i_1_n_0 ;
  wire \m_data[26]_i_1_n_0 ;
  wire \m_data[27]_i_1_n_0 ;
  wire \m_data[28]_i_1_n_0 ;
  wire \m_data[29]_i_1_n_0 ;
  wire \m_data[2]_i_1_n_0 ;
  wire \m_data[30]_i_1_n_0 ;
  wire \m_data[31]_i_2_n_0 ;
  wire \m_data[31]_i_3_n_0 ;
  wire \m_data[3]_i_1_n_0 ;
  wire \m_data[4]_i_1_n_0 ;
  wire \m_data[5]_i_1_n_0 ;
  wire \m_data[6]_i_1_n_0 ;
  wire \m_data[7]_i_1_n_0 ;
  wire \m_data[8]_i_1_n_0 ;
  wire \m_data[9]_i_1_n_0 ;
  wire m_tlast0_out;
  wire m_tlast_i_2_n_0;
  wire m_tlast_i_3_n_0;
  wire m_tlast_i_4_n_0;
  wire m_tlast_i_5_n_0;
  wire m_tlast_i_6_n_0;
  wire m_tlast_i_7_n_0;
  wire m_tlast_i_8_n_0;
  wire m_tlast_i_9_n_0;
  wire m_tvalid_i_1_n_0;
  wire p_0_in;
  wire [31:0]packetCounter;
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
  wire \packetCounter[31]_i_1_n_0 ;
  wire \packetCounter[31]_i_3_n_0 ;
  wire \packetCounter[31]_i_4_n_0 ;
  wire \packetCounter[31]_i_5_n_0 ;
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
  wire \packetCounter_reg[16]_i_1_n_0 ;
  wire \packetCounter_reg[16]_i_1_n_1 ;
  wire \packetCounter_reg[16]_i_1_n_2 ;
  wire \packetCounter_reg[16]_i_1_n_3 ;
  wire \packetCounter_reg[20]_i_1_n_0 ;
  wire \packetCounter_reg[20]_i_1_n_1 ;
  wire \packetCounter_reg[20]_i_1_n_2 ;
  wire \packetCounter_reg[20]_i_1_n_3 ;
  wire \packetCounter_reg[24]_i_1_n_0 ;
  wire \packetCounter_reg[24]_i_1_n_1 ;
  wire \packetCounter_reg[24]_i_1_n_2 ;
  wire \packetCounter_reg[24]_i_1_n_3 ;
  wire \packetCounter_reg[28]_i_1_n_0 ;
  wire \packetCounter_reg[28]_i_1_n_1 ;
  wire \packetCounter_reg[28]_i_1_n_2 ;
  wire \packetCounter_reg[28]_i_1_n_3 ;
  wire \packetCounter_reg[31]_i_2_n_2 ;
  wire \packetCounter_reg[31]_i_2_n_3 ;
  wire \packetCounter_reg[4]_i_1_n_0 ;
  wire \packetCounter_reg[4]_i_1_n_1 ;
  wire \packetCounter_reg[4]_i_1_n_2 ;
  wire \packetCounter_reg[4]_i_1_n_3 ;
  wire \packetCounter_reg[8]_i_1_n_0 ;
  wire \packetCounter_reg[8]_i_1_n_1 ;
  wire \packetCounter_reg[8]_i_1_n_2 ;
  wire \packetCounter_reg[8]_i_1_n_3 ;
  wire [3:2]\NLW_packetCounter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_packetCounter_reg[31]_i_2_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    S_AXIS_TREADY_i_1
       (.I0(M_AXIS_TREADY),
        .I1(ARESETN),
        .I2(S_AXIS_TREADY),
        .O(S_AXIS_TREADY_i_1_n_0));
  FDRE S_AXIS_TREADY_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(S_AXIS_TREADY_i_1_n_0),
        .Q(S_AXIS_TREADY),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[0]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[0]),
        .O(\m_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[10]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[10]),
        .O(\m_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[11]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[11]),
        .O(\m_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[12]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[12]),
        .O(\m_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[13]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[13]),
        .O(\m_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[14]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[14]),
        .O(\m_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[15]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[15]),
        .O(\m_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[16]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[16]),
        .O(\m_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[17]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[17]),
        .O(\m_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[18]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[18]),
        .O(\m_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[19]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[19]),
        .O(\m_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[1]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[1]),
        .O(\m_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[20]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[20]),
        .O(\m_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[21]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[21]),
        .O(\m_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[22]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[22]),
        .O(\m_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[23]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[23]),
        .O(\m_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[24]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[24]),
        .O(\m_data[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[25]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[25]),
        .O(\m_data[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[26]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[26]),
        .O(\m_data[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[27]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[27]),
        .O(\m_data[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[28]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[28]),
        .O(\m_data[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[29]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[29]),
        .O(\m_data[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[2]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[2]),
        .O(\m_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[30]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[30]),
        .O(\m_data[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_data[31]_i_1 
       (.I0(ARESETN),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'hB)) 
    \m_data[31]_i_2 
       (.I0(S_AXIS_TVALID),
        .I1(M_AXIS_TREADY),
        .O(\m_data[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[31]_i_3 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[31]),
        .O(\m_data[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[3]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[3]),
        .O(\m_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[4]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[4]),
        .O(\m_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[5]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[5]),
        .O(\m_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[6]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[6]),
        .O(\m_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[7]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[7]),
        .O(\m_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[8]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[8]),
        .O(\m_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_data[9]_i_1 
       (.I0(M_AXIS_TREADY),
        .I1(S_AXIS_TDATA[9]),
        .O(\m_data[9]_i_1_n_0 ));
  FDRE \m_data_reg[0] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[0]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[0]),
        .R(p_0_in));
  FDRE \m_data_reg[10] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[10]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[10]),
        .R(p_0_in));
  FDRE \m_data_reg[11] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[11]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[11]),
        .R(p_0_in));
  FDRE \m_data_reg[12] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[12]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[12]),
        .R(p_0_in));
  FDRE \m_data_reg[13] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[13]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[13]),
        .R(p_0_in));
  FDRE \m_data_reg[14] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[14]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[14]),
        .R(p_0_in));
  FDRE \m_data_reg[15] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[15]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[15]),
        .R(p_0_in));
  FDRE \m_data_reg[16] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[16]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[16]),
        .R(p_0_in));
  FDRE \m_data_reg[17] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[17]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[17]),
        .R(p_0_in));
  FDRE \m_data_reg[18] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[18]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[18]),
        .R(p_0_in));
  FDRE \m_data_reg[19] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[19]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[19]),
        .R(p_0_in));
  FDRE \m_data_reg[1] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[1]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[1]),
        .R(p_0_in));
  FDRE \m_data_reg[20] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[20]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[20]),
        .R(p_0_in));
  FDRE \m_data_reg[21] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[21]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[21]),
        .R(p_0_in));
  FDRE \m_data_reg[22] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[22]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[22]),
        .R(p_0_in));
  FDRE \m_data_reg[23] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[23]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[23]),
        .R(p_0_in));
  FDRE \m_data_reg[24] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[24]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[24]),
        .R(p_0_in));
  FDRE \m_data_reg[25] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[25]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[25]),
        .R(p_0_in));
  FDRE \m_data_reg[26] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[26]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[26]),
        .R(p_0_in));
  FDRE \m_data_reg[27] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[27]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[27]),
        .R(p_0_in));
  FDRE \m_data_reg[28] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[28]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[28]),
        .R(p_0_in));
  FDRE \m_data_reg[29] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[29]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[29]),
        .R(p_0_in));
  FDRE \m_data_reg[2] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[2]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[2]),
        .R(p_0_in));
  FDRE \m_data_reg[30] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[30]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[30]),
        .R(p_0_in));
  FDRE \m_data_reg[31] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[31]_i_3_n_0 ),
        .Q(M_AXIS_TDATA[31]),
        .R(p_0_in));
  FDRE \m_data_reg[3] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[3]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[3]),
        .R(p_0_in));
  FDRE \m_data_reg[4] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[4]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[4]),
        .R(p_0_in));
  FDRE \m_data_reg[5] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[5]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[5]),
        .R(p_0_in));
  FDRE \m_data_reg[6] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[6]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[6]),
        .R(p_0_in));
  FDRE \m_data_reg[7] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[7]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[7]),
        .R(p_0_in));
  FDRE \m_data_reg[8] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[8]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[8]),
        .R(p_0_in));
  FDRE \m_data_reg[9] 
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(\m_data[9]_i_1_n_0 ),
        .Q(M_AXIS_TDATA[9]),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'h00000002)) 
    m_tlast_i_1
       (.I0(M_AXIS_TREADY),
        .I1(m_tlast_i_2_n_0),
        .I2(m_tlast_i_3_n_0),
        .I3(m_tlast_i_4_n_0),
        .I4(m_tlast_i_5_n_0),
        .O(m_tlast0_out));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_tlast_i_2
       (.I0(packetCounter[18]),
        .I1(packetCounter[19]),
        .I2(packetCounter[16]),
        .I3(packetCounter[17]),
        .I4(m_tlast_i_6_n_0),
        .O(m_tlast_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_tlast_i_3
       (.I0(packetCounter[26]),
        .I1(packetCounter[27]),
        .I2(packetCounter[24]),
        .I3(packetCounter[25]),
        .I4(m_tlast_i_7_n_0),
        .O(m_tlast_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    m_tlast_i_4
       (.I0(packetCounter[2]),
        .I1(packetCounter[3]),
        .I2(packetCounter[0]),
        .I3(packetCounter[1]),
        .I4(m_tlast_i_8_n_0),
        .O(m_tlast_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    m_tlast_i_5
       (.I0(packetCounter[11]),
        .I1(packetCounter[10]),
        .I2(packetCounter[8]),
        .I3(packetCounter[9]),
        .I4(m_tlast_i_9_n_0),
        .O(m_tlast_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_tlast_i_6
       (.I0(packetCounter[21]),
        .I1(packetCounter[20]),
        .I2(packetCounter[23]),
        .I3(packetCounter[22]),
        .O(m_tlast_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_tlast_i_7
       (.I0(packetCounter[29]),
        .I1(packetCounter[28]),
        .I2(packetCounter[31]),
        .I3(packetCounter[30]),
        .O(m_tlast_i_7_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    m_tlast_i_8
       (.I0(packetCounter[5]),
        .I1(packetCounter[4]),
        .I2(packetCounter[7]),
        .I3(packetCounter[6]),
        .O(m_tlast_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    m_tlast_i_9
       (.I0(packetCounter[12]),
        .I1(packetCounter[13]),
        .I2(packetCounter[15]),
        .I3(packetCounter[14]),
        .O(m_tlast_i_9_n_0));
  FDRE m_tlast_reg
       (.C(ACLK),
        .CE(\m_data[31]_i_2_n_0 ),
        .D(m_tlast0_out),
        .Q(M_AXIS_TLAST),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h80)) 
    m_tvalid_i_1
       (.I0(S_AXIS_TVALID),
        .I1(M_AXIS_TREADY),
        .I2(ARESETN),
        .O(m_tvalid_i_1_n_0));
  FDRE m_tvalid_reg
       (.C(ACLK),
        .CE(1'b1),
        .D(m_tvalid_i_1_n_0),
        .Q(M_AXIS_TVALID),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \packetCounter[0]_i_1 
       (.I0(ARESETN),
        .I1(M_AXIS_TREADY),
        .I2(S_AXIS_TVALID),
        .I3(packetCounter[0]),
        .O(\packetCounter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_2 
       (.I0(packetCounter[12]),
        .O(\packetCounter[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_3 
       (.I0(packetCounter[11]),
        .O(\packetCounter[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_4 
       (.I0(packetCounter[10]),
        .O(\packetCounter[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[12]_i_5 
       (.I0(packetCounter[9]),
        .O(\packetCounter[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_2 
       (.I0(packetCounter[16]),
        .O(\packetCounter[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_3 
       (.I0(packetCounter[15]),
        .O(\packetCounter[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_4 
       (.I0(packetCounter[14]),
        .O(\packetCounter[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[16]_i_5 
       (.I0(packetCounter[13]),
        .O(\packetCounter[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_2 
       (.I0(packetCounter[20]),
        .O(\packetCounter[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_3 
       (.I0(packetCounter[19]),
        .O(\packetCounter[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_4 
       (.I0(packetCounter[18]),
        .O(\packetCounter[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[20]_i_5 
       (.I0(packetCounter[17]),
        .O(\packetCounter[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_2 
       (.I0(packetCounter[24]),
        .O(\packetCounter[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_3 
       (.I0(packetCounter[23]),
        .O(\packetCounter[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_4 
       (.I0(packetCounter[22]),
        .O(\packetCounter[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[24]_i_5 
       (.I0(packetCounter[21]),
        .O(\packetCounter[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_2 
       (.I0(packetCounter[28]),
        .O(\packetCounter[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_3 
       (.I0(packetCounter[27]),
        .O(\packetCounter[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_4 
       (.I0(packetCounter[26]),
        .O(\packetCounter[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[28]_i_5 
       (.I0(packetCounter[25]),
        .O(\packetCounter[28]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \packetCounter[31]_i_1 
       (.I0(m_tvalid_i_1_n_0),
        .I1(m_tlast_i_2_n_0),
        .I2(m_tlast_i_3_n_0),
        .I3(m_tlast_i_4_n_0),
        .I4(m_tlast_i_5_n_0),
        .O(\packetCounter[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[31]_i_3 
       (.I0(packetCounter[31]),
        .O(\packetCounter[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[31]_i_4 
       (.I0(packetCounter[30]),
        .O(\packetCounter[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[31]_i_5 
       (.I0(packetCounter[29]),
        .O(\packetCounter[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_2 
       (.I0(packetCounter[4]),
        .O(\packetCounter[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_3 
       (.I0(packetCounter[3]),
        .O(\packetCounter[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_4 
       (.I0(packetCounter[2]),
        .O(\packetCounter[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[4]_i_5 
       (.I0(packetCounter[1]),
        .O(\packetCounter[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_2 
       (.I0(packetCounter[8]),
        .O(\packetCounter[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_3 
       (.I0(packetCounter[7]),
        .O(\packetCounter[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_4 
       (.I0(packetCounter[6]),
        .O(\packetCounter[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    \packetCounter[8]_i_5 
       (.I0(packetCounter[5]),
        .O(\packetCounter[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\packetCounter[0]_i_1_n_0 ),
        .Q(packetCounter[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[10] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[10]),
        .Q(packetCounter[10]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[11] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[11]),
        .Q(packetCounter[11]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[12] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[12]),
        .Q(packetCounter[12]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[12]_i_1 
       (.CI(\packetCounter_reg[8]_i_1_n_0 ),
        .CO({\packetCounter_reg[12]_i_1_n_0 ,\packetCounter_reg[12]_i_1_n_1 ,\packetCounter_reg[12]_i_1_n_2 ,\packetCounter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\packetCounter[12]_i_2_n_0 ,\packetCounter[12]_i_3_n_0 ,\packetCounter[12]_i_4_n_0 ,\packetCounter[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[13] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[13]),
        .Q(packetCounter[13]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[14] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[14]),
        .Q(packetCounter[14]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[15] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[15]),
        .Q(packetCounter[15]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[16] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[16]),
        .Q(packetCounter[16]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[16]_i_1 
       (.CI(\packetCounter_reg[12]_i_1_n_0 ),
        .CO({\packetCounter_reg[16]_i_1_n_0 ,\packetCounter_reg[16]_i_1_n_1 ,\packetCounter_reg[16]_i_1_n_2 ,\packetCounter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\packetCounter[16]_i_2_n_0 ,\packetCounter[16]_i_3_n_0 ,\packetCounter[16]_i_4_n_0 ,\packetCounter[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[17] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[17]),
        .Q(packetCounter[17]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[18] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[18]),
        .Q(packetCounter[18]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[19] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[19]),
        .Q(packetCounter[19]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[1] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[1]),
        .Q(packetCounter[1]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[20] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[20]),
        .Q(packetCounter[20]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[20]_i_1 
       (.CI(\packetCounter_reg[16]_i_1_n_0 ),
        .CO({\packetCounter_reg[20]_i_1_n_0 ,\packetCounter_reg[20]_i_1_n_1 ,\packetCounter_reg[20]_i_1_n_2 ,\packetCounter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\packetCounter[20]_i_2_n_0 ,\packetCounter[20]_i_3_n_0 ,\packetCounter[20]_i_4_n_0 ,\packetCounter[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[21] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[21]),
        .Q(packetCounter[21]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[22] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[22]),
        .Q(packetCounter[22]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[23] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[23]),
        .Q(packetCounter[23]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[24] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[24]),
        .Q(packetCounter[24]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[24]_i_1 
       (.CI(\packetCounter_reg[20]_i_1_n_0 ),
        .CO({\packetCounter_reg[24]_i_1_n_0 ,\packetCounter_reg[24]_i_1_n_1 ,\packetCounter_reg[24]_i_1_n_2 ,\packetCounter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\packetCounter[24]_i_2_n_0 ,\packetCounter[24]_i_3_n_0 ,\packetCounter[24]_i_4_n_0 ,\packetCounter[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[25] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[25]),
        .Q(packetCounter[25]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[26] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[26]),
        .Q(packetCounter[26]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[27] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[27]),
        .Q(packetCounter[27]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[28] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[28]),
        .Q(packetCounter[28]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[28]_i_1 
       (.CI(\packetCounter_reg[24]_i_1_n_0 ),
        .CO({\packetCounter_reg[28]_i_1_n_0 ,\packetCounter_reg[28]_i_1_n_1 ,\packetCounter_reg[28]_i_1_n_2 ,\packetCounter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\packetCounter[28]_i_2_n_0 ,\packetCounter[28]_i_3_n_0 ,\packetCounter[28]_i_4_n_0 ,\packetCounter[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[29] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[29]),
        .Q(packetCounter[29]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[2] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[2]),
        .Q(packetCounter[2]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[30] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[30]),
        .Q(packetCounter[30]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[31] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[31]),
        .Q(packetCounter[31]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[31]_i_2 
       (.CI(\packetCounter_reg[28]_i_1_n_0 ),
        .CO({\NLW_packetCounter_reg[31]_i_2_CO_UNCONNECTED [3:2],\packetCounter_reg[31]_i_2_n_2 ,\packetCounter_reg[31]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_packetCounter_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\packetCounter[31]_i_3_n_0 ,\packetCounter[31]_i_4_n_0 ,\packetCounter[31]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[3] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[3]),
        .Q(packetCounter[3]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[4] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[4]),
        .Q(packetCounter[4]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\packetCounter_reg[4]_i_1_n_0 ,\packetCounter_reg[4]_i_1_n_1 ,\packetCounter_reg[4]_i_1_n_2 ,\packetCounter_reg[4]_i_1_n_3 }),
        .CYINIT(packetCounter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\packetCounter[4]_i_2_n_0 ,\packetCounter[4]_i_3_n_0 ,\packetCounter[4]_i_4_n_0 ,\packetCounter[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[5] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[5]),
        .Q(packetCounter[5]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[6] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[6]),
        .Q(packetCounter[6]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[7] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[7]),
        .Q(packetCounter[7]),
        .R(\packetCounter[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[8] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[8]),
        .Q(packetCounter[8]),
        .R(\packetCounter[31]_i_1_n_0 ));
  CARRY4 \packetCounter_reg[8]_i_1 
       (.CI(\packetCounter_reg[4]_i_1_n_0 ),
        .CO({\packetCounter_reg[8]_i_1_n_0 ,\packetCounter_reg[8]_i_1_n_1 ,\packetCounter_reg[8]_i_1_n_2 ,\packetCounter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\packetCounter[8]_i_2_n_0 ,\packetCounter[8]_i_3_n_0 ,\packetCounter[8]_i_4_n_0 ,\packetCounter[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \packetCounter_reg[9] 
       (.C(ACLK),
        .CE(m_tvalid_i_1_n_0),
        .D(data0[9]),
        .Q(packetCounter[9]),
        .R(\packetCounter[31]_i_1_n_0 ));
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
