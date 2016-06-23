-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
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

-- IP VLNV: utt.fr:hls:doHist:1.0
-- IP Revision: 1606202043

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_doHist_0_1 IS
  PORT (
    s_axi_CTRL_BUS_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    inStream_TVALID : IN STD_LOGIC;
    inStream_TREADY : OUT STD_LOGIC;
    inStream_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    inStream_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    inStream_TKEEP : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inStream_TSTRB : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inStream_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    inStream_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inStream_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    histo_Clk_A : OUT STD_LOGIC;
    histo_Rst_A : OUT STD_LOGIC;
    histo_EN_A : OUT STD_LOGIC;
    histo_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    histo_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    histo_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    histo_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END design_1_doHist_0_1;

ARCHITECTURE design_1_doHist_0_1_arch OF design_1_doHist_0_1 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_doHist_0_1_arch: ARCHITECTURE IS "yes";
  COMPONENT doHist IS
    GENERIC (
      C_S_AXI_CTRL_BUS_ADDR_WIDTH : INTEGER;
      C_S_AXI_CTRL_BUS_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_CTRL_BUS_AWADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CTRL_BUS_AWVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_AWREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CTRL_BUS_WVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_WREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_BUS_BVALID : OUT STD_LOGIC;
      s_axi_CTRL_BUS_BREADY : IN STD_LOGIC;
      s_axi_CTRL_BUS_ARADDR : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CTRL_BUS_ARVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_ARREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_BUS_RVALID : OUT STD_LOGIC;
      s_axi_CTRL_BUS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      inStream_TVALID : IN STD_LOGIC;
      inStream_TREADY : OUT STD_LOGIC;
      inStream_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      inStream_TDEST : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      inStream_TKEEP : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      inStream_TSTRB : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      inStream_TUSER : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      inStream_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      inStream_TID : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      histo_Clk_A : OUT STD_LOGIC;
      histo_Rst_A : OUT STD_LOGIC;
      histo_EN_A : OUT STD_LOGIC;
      histo_WEN_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      histo_Addr_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      histo_Din_A : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      histo_Dout_A : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
    );
  END COMPONENT doHist;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_doHist_0_1_arch: ARCHITECTURE IS "doHist,Vivado 2016.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_doHist_0_1_arch : ARCHITECTURE IS "design_1_doHist_0_1,doHist,{}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TUSER";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF inStream_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 inStream TID";
  ATTRIBUTE X_INTERFACE_INFO OF histo_Clk_A: SIGNAL IS "xilinx.com:interface:bram:1.0 histo_PORTA CLK";
  ATTRIBUTE X_INTERFACE_INFO OF histo_Rst_A: SIGNAL IS "xilinx.com:interface:bram:1.0 histo_PORTA RST";
  ATTRIBUTE X_INTERFACE_INFO OF histo_EN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 histo_PORTA EN";
  ATTRIBUTE X_INTERFACE_INFO OF histo_WEN_A: SIGNAL IS "xilinx.com:interface:bram:1.0 histo_PORTA WE";
  ATTRIBUTE X_INTERFACE_INFO OF histo_Addr_A: SIGNAL IS "xilinx.com:interface:bram:1.0 histo_PORTA ADDR";
  ATTRIBUTE X_INTERFACE_INFO OF histo_Din_A: SIGNAL IS "xilinx.com:interface:bram:1.0 histo_PORTA DIN";
  ATTRIBUTE X_INTERFACE_INFO OF histo_Dout_A: SIGNAL IS "xilinx.com:interface:bram:1.0 histo_PORTA DOUT";
BEGIN
  U0 : doHist
    GENERIC MAP (
      C_S_AXI_CTRL_BUS_ADDR_WIDTH => 4,
      C_S_AXI_CTRL_BUS_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_CTRL_BUS_AWADDR => s_axi_CTRL_BUS_AWADDR,
      s_axi_CTRL_BUS_AWVALID => s_axi_CTRL_BUS_AWVALID,
      s_axi_CTRL_BUS_AWREADY => s_axi_CTRL_BUS_AWREADY,
      s_axi_CTRL_BUS_WDATA => s_axi_CTRL_BUS_WDATA,
      s_axi_CTRL_BUS_WSTRB => s_axi_CTRL_BUS_WSTRB,
      s_axi_CTRL_BUS_WVALID => s_axi_CTRL_BUS_WVALID,
      s_axi_CTRL_BUS_WREADY => s_axi_CTRL_BUS_WREADY,
      s_axi_CTRL_BUS_BRESP => s_axi_CTRL_BUS_BRESP,
      s_axi_CTRL_BUS_BVALID => s_axi_CTRL_BUS_BVALID,
      s_axi_CTRL_BUS_BREADY => s_axi_CTRL_BUS_BREADY,
      s_axi_CTRL_BUS_ARADDR => s_axi_CTRL_BUS_ARADDR,
      s_axi_CTRL_BUS_ARVALID => s_axi_CTRL_BUS_ARVALID,
      s_axi_CTRL_BUS_ARREADY => s_axi_CTRL_BUS_ARREADY,
      s_axi_CTRL_BUS_RDATA => s_axi_CTRL_BUS_RDATA,
      s_axi_CTRL_BUS_RRESP => s_axi_CTRL_BUS_RRESP,
      s_axi_CTRL_BUS_RVALID => s_axi_CTRL_BUS_RVALID,
      s_axi_CTRL_BUS_RREADY => s_axi_CTRL_BUS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      inStream_TVALID => inStream_TVALID,
      inStream_TREADY => inStream_TREADY,
      inStream_TDATA => inStream_TDATA,
      inStream_TDEST => inStream_TDEST,
      inStream_TKEEP => inStream_TKEEP,
      inStream_TSTRB => inStream_TSTRB,
      inStream_TUSER => inStream_TUSER,
      inStream_TLAST => inStream_TLAST,
      inStream_TID => inStream_TID,
      histo_Clk_A => histo_Clk_A,
      histo_Rst_A => histo_Rst_A,
      histo_EN_A => histo_EN_A,
      histo_WEN_A => histo_WEN_A,
      histo_Addr_A => histo_Addr_A,
      histo_Din_A => histo_Din_A,
      histo_Dout_A => histo_Dout_A
    );
END design_1_doHist_0_1_arch;
