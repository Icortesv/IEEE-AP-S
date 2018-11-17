-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:first_demux:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_first_demux_0_1 IS
  PORT (
    ACLK : IN STD_LOGIC;
    ARESETN : IN STD_LOGIC;
    I_b0_b1 : IN STD_LOGIC;
    I_b2_b3 : IN STD_LOGIC;
    I_b4_b5 : IN STD_LOGIC;
    I_b6_b7 : IN STD_LOGIC;
    I_b8_b9 : IN STD_LOGIC;
    I_b10_b11 : IN STD_LOGIC;
    I_b12_b13 : IN STD_LOGIC;
    I_b14_b15 : IN STD_LOGIC;
    Q_b0_b1 : IN STD_LOGIC;
    Q_b2_b3 : IN STD_LOGIC;
    Q_b4_b5 : IN STD_LOGIC;
    Q_b6_b7 : IN STD_LOGIC;
    Q_b8_b9 : IN STD_LOGIC;
    Q_b10_b11 : IN STD_LOGIC;
    Q_b12_b13 : IN STD_LOGIC;
    Q_b14_b15 : IN STD_LOGIC;
    clk_adc : IN STD_LOGIC;
    enable : IN STD_LOGIC;
    M_AXIS_TVALID : OUT STD_LOGIC;
    M_AXIS_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_1_first_demux_0_1;

ARCHITECTURE design_1_first_demux_0_1_arch OF design_1_first_demux_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_first_demux_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT first_demux IS
    GENERIC (
      C_M_DATA_WIDHT : INTEGER;
      BUFFER_LENGTH : INTEGER;
      TRANSFER_LENGTH : INTEGER
    );
    PORT (
      ACLK : IN STD_LOGIC;
      ARESETN : IN STD_LOGIC;
      I_b0_b1 : IN STD_LOGIC;
      I_b2_b3 : IN STD_LOGIC;
      I_b4_b5 : IN STD_LOGIC;
      I_b6_b7 : IN STD_LOGIC;
      I_b8_b9 : IN STD_LOGIC;
      I_b10_b11 : IN STD_LOGIC;
      I_b12_b13 : IN STD_LOGIC;
      I_b14_b15 : IN STD_LOGIC;
      Q_b0_b1 : IN STD_LOGIC;
      Q_b2_b3 : IN STD_LOGIC;
      Q_b4_b5 : IN STD_LOGIC;
      Q_b6_b7 : IN STD_LOGIC;
      Q_b8_b9 : IN STD_LOGIC;
      Q_b10_b11 : IN STD_LOGIC;
      Q_b12_b13 : IN STD_LOGIC;
      Q_b14_b15 : IN STD_LOGIC;
      clk_adc : IN STD_LOGIC;
      enable : IN STD_LOGIC;
      M_AXIS_TVALID : OUT STD_LOGIC;
      M_AXIS_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT first_demux;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF ACLK: SIGNAL IS "xilinx.com:signal:clock:1.0 ACLK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ARESETN: SIGNAL IS "xilinx.com:signal:reset:1.0 ARESETN RST";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF M_AXIS_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
BEGIN
  U0 : first_demux
    GENERIC MAP (
      C_M_DATA_WIDHT => 32,
      BUFFER_LENGTH => 6132,
      TRANSFER_LENGTH => 5
    )
    PORT MAP (
      ACLK => ACLK,
      ARESETN => ARESETN,
      I_b0_b1 => I_b0_b1,
      I_b2_b3 => I_b2_b3,
      I_b4_b5 => I_b4_b5,
      I_b6_b7 => I_b6_b7,
      I_b8_b9 => I_b8_b9,
      I_b10_b11 => I_b10_b11,
      I_b12_b13 => I_b12_b13,
      I_b14_b15 => I_b14_b15,
      Q_b0_b1 => Q_b0_b1,
      Q_b2_b3 => Q_b2_b3,
      Q_b4_b5 => Q_b4_b5,
      Q_b6_b7 => Q_b6_b7,
      Q_b8_b9 => Q_b8_b9,
      Q_b10_b11 => Q_b10_b11,
      Q_b12_b13 => Q_b12_b13,
      Q_b14_b15 => Q_b14_b15,
      clk_adc => clk_adc,
      enable => enable,
      M_AXIS_TVALID => M_AXIS_TVALID,
      M_AXIS_TDATA => M_AXIS_TDATA
    );
END design_1_first_demux_0_1_arch;
