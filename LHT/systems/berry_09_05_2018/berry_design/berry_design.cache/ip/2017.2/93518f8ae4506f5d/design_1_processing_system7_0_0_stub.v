// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Wed Feb 28 13:49:14 2018
// Host        : ix1229 running 64-bit Red Hat Enterprise Linux Server release 6.9 (Final)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_processing_system7_0_0_stub.v
// Design      : design_1_processing_system7_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg225-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "processing_system7_v5_5_processing_system7,Vivado 2017.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(GPIO_I, GPIO_O, GPIO_T, I2C0_SDA_I, I2C0_SDA_O, 
  I2C0_SDA_T, I2C0_SCL_I, I2C0_SCL_O, I2C0_SCL_T, SDIO0_CLK, SDIO0_CLK_FB, SDIO0_CMD_O, 
  SDIO0_CMD_I, SDIO0_CMD_T, SDIO0_DATA_I, SDIO0_DATA_O, SDIO0_DATA_T, SDIO0_LED, SDIO0_CDN, 
  SDIO0_WP, SDIO0_BUSPOW, SDIO0_BUSVOLT, SPI0_SCLK_I, SPI0_SCLK_O, SPI0_SCLK_T, SPI0_MOSI_I, 
  SPI0_MOSI_O, SPI0_MOSI_T, SPI0_MISO_I, SPI0_MISO_O, SPI0_MISO_T, SPI0_SS_I, SPI0_SS_O, 
  SPI0_SS1_O, SPI0_SS2_O, SPI0_SS_T, SPI1_SCLK_I, SPI1_SCLK_O, SPI1_SCLK_T, SPI1_MOSI_I, 
  SPI1_MOSI_O, SPI1_MOSI_T, SPI1_MISO_I, SPI1_MISO_O, SPI1_MISO_T, SPI1_SS_I, SPI1_SS_O, 
  SPI1_SS1_O, SPI1_SS2_O, SPI1_SS_T, UART0_TX, UART0_RX, TTC0_WAVE0_OUT, TTC0_WAVE1_OUT, 
  TTC0_WAVE2_OUT, TTC1_WAVE0_OUT, TTC1_WAVE1_OUT, TTC1_WAVE2_OUT, USB0_PORT_INDCTL, 
  USB0_VBUS_PWRSELECT, USB0_VBUS_PWRFAULT, M_AXI_GP0_ARVALID, M_AXI_GP0_AWVALID, 
  M_AXI_GP0_BREADY, M_AXI_GP0_RREADY, M_AXI_GP0_WLAST, M_AXI_GP0_WVALID, M_AXI_GP0_ARID, 
  M_AXI_GP0_AWID, M_AXI_GP0_WID, M_AXI_GP0_ARBURST, M_AXI_GP0_ARLOCK, M_AXI_GP0_ARSIZE, 
  M_AXI_GP0_AWBURST, M_AXI_GP0_AWLOCK, M_AXI_GP0_AWSIZE, M_AXI_GP0_ARPROT, 
  M_AXI_GP0_AWPROT, M_AXI_GP0_ARADDR, M_AXI_GP0_AWADDR, M_AXI_GP0_WDATA, M_AXI_GP0_ARCACHE, 
  M_AXI_GP0_ARLEN, M_AXI_GP0_ARQOS, M_AXI_GP0_AWCACHE, M_AXI_GP0_AWLEN, M_AXI_GP0_AWQOS, 
  M_AXI_GP0_WSTRB, M_AXI_GP0_ACLK, M_AXI_GP0_ARREADY, M_AXI_GP0_AWREADY, M_AXI_GP0_BVALID, 
  M_AXI_GP0_RLAST, M_AXI_GP0_RVALID, M_AXI_GP0_WREADY, M_AXI_GP0_BID, M_AXI_GP0_RID, 
  M_AXI_GP0_BRESP, M_AXI_GP0_RRESP, M_AXI_GP0_RDATA, IRQ_F2P, FCLK_CLK0, FCLK_CLK1, 
  FCLK_RESET0_N, MIO, DDR_CAS_n, DDR_CKE, DDR_Clk_n, DDR_Clk, DDR_CS_n, DDR_DRSTB, DDR_ODT, 
  DDR_RAS_n, DDR_WEB, DDR_BankAddr, DDR_Addr, DDR_VRN, DDR_VRP, DDR_DM, DDR_DQ, DDR_DQS_n, DDR_DQS, 
  PS_SRSTB, PS_CLK, PS_PORB)
/* synthesis syn_black_box black_box_pad_pin="GPIO_I[63:0],GPIO_O[63:0],GPIO_T[63:0],I2C0_SDA_I,I2C0_SDA_O,I2C0_SDA_T,I2C0_SCL_I,I2C0_SCL_O,I2C0_SCL_T,SDIO0_CLK,SDIO0_CLK_FB,SDIO0_CMD_O,SDIO0_CMD_I,SDIO0_CMD_T,SDIO0_DATA_I[3:0],SDIO0_DATA_O[3:0],SDIO0_DATA_T[3:0],SDIO0_LED,SDIO0_CDN,SDIO0_WP,SDIO0_BUSPOW,SDIO0_BUSVOLT[2:0],SPI0_SCLK_I,SPI0_SCLK_O,SPI0_SCLK_T,SPI0_MOSI_I,SPI0_MOSI_O,SPI0_MOSI_T,SPI0_MISO_I,SPI0_MISO_O,SPI0_MISO_T,SPI0_SS_I,SPI0_SS_O,SPI0_SS1_O,SPI0_SS2_O,SPI0_SS_T,SPI1_SCLK_I,SPI1_SCLK_O,SPI1_SCLK_T,SPI1_MOSI_I,SPI1_MOSI_O,SPI1_MOSI_T,SPI1_MISO_I,SPI1_MISO_O,SPI1_MISO_T,SPI1_SS_I,SPI1_SS_O,SPI1_SS1_O,SPI1_SS2_O,SPI1_SS_T,UART0_TX,UART0_RX,TTC0_WAVE0_OUT,TTC0_WAVE1_OUT,TTC0_WAVE2_OUT,TTC1_WAVE0_OUT,TTC1_WAVE1_OUT,TTC1_WAVE2_OUT,USB0_PORT_INDCTL[1:0],USB0_VBUS_PWRSELECT,USB0_VBUS_PWRFAULT,M_AXI_GP0_ARVALID,M_AXI_GP0_AWVALID,M_AXI_GP0_BREADY,M_AXI_GP0_RREADY,M_AXI_GP0_WLAST,M_AXI_GP0_WVALID,M_AXI_GP0_ARID[11:0],M_AXI_GP0_AWID[11:0],M_AXI_GP0_WID[11:0],M_AXI_GP0_ARBURST[1:0],M_AXI_GP0_ARLOCK[1:0],M_AXI_GP0_ARSIZE[2:0],M_AXI_GP0_AWBURST[1:0],M_AXI_GP0_AWLOCK[1:0],M_AXI_GP0_AWSIZE[2:0],M_AXI_GP0_ARPROT[2:0],M_AXI_GP0_AWPROT[2:0],M_AXI_GP0_ARADDR[31:0],M_AXI_GP0_AWADDR[31:0],M_AXI_GP0_WDATA[31:0],M_AXI_GP0_ARCACHE[3:0],M_AXI_GP0_ARLEN[3:0],M_AXI_GP0_ARQOS[3:0],M_AXI_GP0_AWCACHE[3:0],M_AXI_GP0_AWLEN[3:0],M_AXI_GP0_AWQOS[3:0],M_AXI_GP0_WSTRB[3:0],M_AXI_GP0_ACLK,M_AXI_GP0_ARREADY,M_AXI_GP0_AWREADY,M_AXI_GP0_BVALID,M_AXI_GP0_RLAST,M_AXI_GP0_RVALID,M_AXI_GP0_WREADY,M_AXI_GP0_BID[11:0],M_AXI_GP0_RID[11:0],M_AXI_GP0_BRESP[1:0],M_AXI_GP0_RRESP[1:0],M_AXI_GP0_RDATA[31:0],IRQ_F2P[0:0],FCLK_CLK0,FCLK_CLK1,FCLK_RESET0_N,MIO[31:0],DDR_CAS_n,DDR_CKE,DDR_Clk_n,DDR_Clk,DDR_CS_n,DDR_DRSTB,DDR_ODT,DDR_RAS_n,DDR_WEB,DDR_BankAddr[2:0],DDR_Addr[14:0],DDR_VRN,DDR_VRP,DDR_DM[1:0],DDR_DQ[15:0],DDR_DQS_n[1:0],DDR_DQS[1:0],PS_SRSTB,PS_CLK,PS_PORB" */;
  input [63:0]GPIO_I;
  output [63:0]GPIO_O;
  output [63:0]GPIO_T;
  input I2C0_SDA_I;
  output I2C0_SDA_O;
  output I2C0_SDA_T;
  input I2C0_SCL_I;
  output I2C0_SCL_O;
  output I2C0_SCL_T;
  output SDIO0_CLK;
  input SDIO0_CLK_FB;
  output SDIO0_CMD_O;
  input SDIO0_CMD_I;
  output SDIO0_CMD_T;
  input [3:0]SDIO0_DATA_I;
  output [3:0]SDIO0_DATA_O;
  output [3:0]SDIO0_DATA_T;
  output SDIO0_LED;
  input SDIO0_CDN;
  input SDIO0_WP;
  output SDIO0_BUSPOW;
  output [2:0]SDIO0_BUSVOLT;
  input SPI0_SCLK_I;
  output SPI0_SCLK_O;
  output SPI0_SCLK_T;
  input SPI0_MOSI_I;
  output SPI0_MOSI_O;
  output SPI0_MOSI_T;
  input SPI0_MISO_I;
  output SPI0_MISO_O;
  output SPI0_MISO_T;
  input SPI0_SS_I;
  output SPI0_SS_O;
  output SPI0_SS1_O;
  output SPI0_SS2_O;
  output SPI0_SS_T;
  input SPI1_SCLK_I;
  output SPI1_SCLK_O;
  output SPI1_SCLK_T;
  input SPI1_MOSI_I;
  output SPI1_MOSI_O;
  output SPI1_MOSI_T;
  input SPI1_MISO_I;
  output SPI1_MISO_O;
  output SPI1_MISO_T;
  input SPI1_SS_I;
  output SPI1_SS_O;
  output SPI1_SS1_O;
  output SPI1_SS2_O;
  output SPI1_SS_T;
  output UART0_TX;
  input UART0_RX;
  output TTC0_WAVE0_OUT;
  output TTC0_WAVE1_OUT;
  output TTC0_WAVE2_OUT;
  output TTC1_WAVE0_OUT;
  output TTC1_WAVE1_OUT;
  output TTC1_WAVE2_OUT;
  output [1:0]USB0_PORT_INDCTL;
  output USB0_VBUS_PWRSELECT;
  input USB0_VBUS_PWRFAULT;
  output M_AXI_GP0_ARVALID;
  output M_AXI_GP0_AWVALID;
  output M_AXI_GP0_BREADY;
  output M_AXI_GP0_RREADY;
  output M_AXI_GP0_WLAST;
  output M_AXI_GP0_WVALID;
  output [11:0]M_AXI_GP0_ARID;
  output [11:0]M_AXI_GP0_AWID;
  output [11:0]M_AXI_GP0_WID;
  output [1:0]M_AXI_GP0_ARBURST;
  output [1:0]M_AXI_GP0_ARLOCK;
  output [2:0]M_AXI_GP0_ARSIZE;
  output [1:0]M_AXI_GP0_AWBURST;
  output [1:0]M_AXI_GP0_AWLOCK;
  output [2:0]M_AXI_GP0_AWSIZE;
  output [2:0]M_AXI_GP0_ARPROT;
  output [2:0]M_AXI_GP0_AWPROT;
  output [31:0]M_AXI_GP0_ARADDR;
  output [31:0]M_AXI_GP0_AWADDR;
  output [31:0]M_AXI_GP0_WDATA;
  output [3:0]M_AXI_GP0_ARCACHE;
  output [3:0]M_AXI_GP0_ARLEN;
  output [3:0]M_AXI_GP0_ARQOS;
  output [3:0]M_AXI_GP0_AWCACHE;
  output [3:0]M_AXI_GP0_AWLEN;
  output [3:0]M_AXI_GP0_AWQOS;
  output [3:0]M_AXI_GP0_WSTRB;
  input M_AXI_GP0_ACLK;
  input M_AXI_GP0_ARREADY;
  input M_AXI_GP0_AWREADY;
  input M_AXI_GP0_BVALID;
  input M_AXI_GP0_RLAST;
  input M_AXI_GP0_RVALID;
  input M_AXI_GP0_WREADY;
  input [11:0]M_AXI_GP0_BID;
  input [11:0]M_AXI_GP0_RID;
  input [1:0]M_AXI_GP0_BRESP;
  input [1:0]M_AXI_GP0_RRESP;
  input [31:0]M_AXI_GP0_RDATA;
  input [0:0]IRQ_F2P;
  output FCLK_CLK0;
  output FCLK_CLK1;
  output FCLK_RESET0_N;
  inout [31:0]MIO;
  inout DDR_CAS_n;
  inout DDR_CKE;
  inout DDR_Clk_n;
  inout DDR_Clk;
  inout DDR_CS_n;
  inout DDR_DRSTB;
  inout DDR_ODT;
  inout DDR_RAS_n;
  inout DDR_WEB;
  inout [2:0]DDR_BankAddr;
  inout [14:0]DDR_Addr;
  inout DDR_VRN;
  inout DDR_VRP;
  inout [1:0]DDR_DM;
  inout [15:0]DDR_DQ;
  inout [1:0]DDR_DQS_n;
  inout [1:0]DDR_DQS;
  inout PS_SRSTB;
  inout PS_CLK;
  inout PS_PORB;
endmodule
