////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: microProcessor_synthesis.v
// /___/   /\     Timestamp: Sun Apr 16 22:37:46 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim microProcessor.ngc microProcessor_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: microProcessor.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Processor\Start\netgen\synthesis\microProcessor_synthesis.v
// # of Modules	: 1
// Design Name	: microProcessor
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module microProcessor (
  clk, Z_flag, addr_sel, JUMP, addr, MBRU, MIR
);
  input clk;
  input Z_flag;
  input addr_sel;
  input JUMP;
  input [7 : 0] addr;
  input [7 : 0] MBRU;
  output [30 : 0] MIR;
  wire addr_5_IBUF_0;
  wire addr_4_IBUF_1;
  wire addr_3_IBUF_2;
  wire addr_2_IBUF_3;
  wire addr_1_IBUF_4;
  wire addr_0_IBUF_5;
  wire MBRU_5_IBUF_6;
  wire MBRU_4_IBUF_7;
  wire MBRU_3_IBUF_8;
  wire MBRU_2_IBUF_9;
  wire MBRU_1_IBUF_10;
  wire MBRU_0_IBUF_11;
  wire clk_BUFGP_12;
  wire Z_flag_IBUF_13;
  wire addr_sel_IBUF_14;
  wire JUMP_IBUF_15;
  wire MIR_26_OBUF_28;
  wire MIR_25_OBUF_29;
  wire MIR_24_OBUF_30;
  wire MIR_23_OBUF_31;
  wire MIR_22_OBUF_32;
  wire MIR_21_OBUF_33;
  wire MIR_20_OBUF_34;
  wire MIR_19_OBUF_35;
  wire MIR_18_OBUF_36;
  wire MIR_17_OBUF_37;
  wire MIR_16_OBUF_38;
  wire MIR_15_OBUF_39;
  wire MIR_14_OBUF_40;
  wire MIR_13_OBUF_41;
  wire MIR_12_OBUF_42;
  wire MIR_11_OBUF_43;
  wire MIR_10_OBUF_44;
  wire MIR_9_OBUF_45;
  wire MIR_8_OBUF_46;
  wire MIR_7_OBUF_47;
  wire MIR_6_OBUF_48;
  wire MIR_5_OBUF_49;
  wire MIR_4_OBUF_50;
  wire MIR_3_OBUF_51;
  wire MIR_2_OBUF_52;
  wire MIR_1_OBUF_53;
  wire MIR_0_OBUF_54;
  wire MIR_30_OBUF_102;
  wire [5 : 0] next_addr;
  wire [5 : 0] n0014;
  FD_1   next_addr_0 (
    .C(clk_BUFGP_12),
    .D(n0014[0]),
    .Q(next_addr[0])
  );
  FD_1   next_addr_1 (
    .C(clk_BUFGP_12),
    .D(n0014[1]),
    .Q(next_addr[1])
  );
  FD_1   next_addr_2 (
    .C(clk_BUFGP_12),
    .D(n0014[2]),
    .Q(next_addr[2])
  );
  FD_1   next_addr_3 (
    .C(clk_BUFGP_12),
    .D(n0014[3]),
    .Q(next_addr[3])
  );
  FD_1   next_addr_4 (
    .C(clk_BUFGP_12),
    .D(n0014[4]),
    .Q(next_addr[4])
  );
  FD_1   next_addr_5 (
    .C(clk_BUFGP_12),
    .D(n0014[5]),
    .Q(next_addr[5])
  );
  LUT4 #(
    .INIT ( 16'hDED4 ))
  \n0014<3>1  (
    .I0(addr_sel_IBUF_14),
    .I1(addr_5_IBUF_0),
    .I2(JUMP_IBUF_15),
    .I3(MBRU_5_IBUF_6),
    .O(n0014[5])
  );
  LUT4 #(
    .INIT ( 16'hDED4 ))
  \n0014<4>1  (
    .I0(addr_sel_IBUF_14),
    .I1(addr_4_IBUF_1),
    .I2(JUMP_IBUF_15),
    .I3(MBRU_4_IBUF_7),
    .O(n0014[4])
  );
  LUT4 #(
    .INIT ( 16'hB290 ))
  \n0014<5>1  (
    .I0(addr_sel_IBUF_14),
    .I1(JUMP_IBUF_15),
    .I2(addr_3_IBUF_2),
    .I3(MBRU_3_IBUF_8),
    .O(n0014[3])
  );
  LUT4 #(
    .INIT ( 16'hB290 ))
  \n0014<6>1  (
    .I0(addr_sel_IBUF_14),
    .I1(JUMP_IBUF_15),
    .I2(addr_2_IBUF_3),
    .I3(MBRU_2_IBUF_9),
    .O(n0014[2])
  );
  LUT5 #(
    .INIT ( 32'hB290F6D4 ))
  \n0014<7>1  (
    .I0(addr_sel_IBUF_14),
    .I1(JUMP_IBUF_15),
    .I2(addr_1_IBUF_4),
    .I3(MBRU_1_IBUF_10),
    .I4(Z_flag_IBUF_13),
    .O(n0014[1])
  );
  LUT4 #(
    .INIT ( 16'hB290 ))
  \n0014<8>1  (
    .I0(addr_sel_IBUF_14),
    .I1(JUMP_IBUF_15),
    .I2(addr_0_IBUF_5),
    .I3(MBRU_0_IBUF_11),
    .O(n0014[0])
  );
  IBUF   addr_5_IBUF (
    .I(addr[5]),
    .O(addr_5_IBUF_0)
  );
  IBUF   addr_4_IBUF (
    .I(addr[4]),
    .O(addr_4_IBUF_1)
  );
  IBUF   addr_3_IBUF (
    .I(addr[3]),
    .O(addr_3_IBUF_2)
  );
  IBUF   addr_2_IBUF (
    .I(addr[2]),
    .O(addr_2_IBUF_3)
  );
  IBUF   addr_1_IBUF (
    .I(addr[1]),
    .O(addr_1_IBUF_4)
  );
  IBUF   addr_0_IBUF (
    .I(addr[0]),
    .O(addr_0_IBUF_5)
  );
  IBUF   MBRU_5_IBUF (
    .I(MBRU[5]),
    .O(MBRU_5_IBUF_6)
  );
  IBUF   MBRU_4_IBUF (
    .I(MBRU[4]),
    .O(MBRU_4_IBUF_7)
  );
  IBUF   MBRU_3_IBUF (
    .I(MBRU[3]),
    .O(MBRU_3_IBUF_8)
  );
  IBUF   MBRU_2_IBUF (
    .I(MBRU[2]),
    .O(MBRU_2_IBUF_9)
  );
  IBUF   MBRU_1_IBUF (
    .I(MBRU[1]),
    .O(MBRU_1_IBUF_10)
  );
  IBUF   MBRU_0_IBUF (
    .I(MBRU[0]),
    .O(MBRU_0_IBUF_11)
  );
  IBUF   Z_flag_IBUF (
    .I(Z_flag),
    .O(Z_flag_IBUF_13)
  );
  IBUF   addr_sel_IBUF (
    .I(addr_sel),
    .O(addr_sel_IBUF_14)
  );
  IBUF   JUMP_IBUF (
    .I(JUMP),
    .O(JUMP_IBUF_15)
  );
  OBUF   MIR_30_OBUF (
    .I(MIR_30_OBUF_102),
    .O(MIR[30])
  );
  OBUF   MIR_29_OBUF (
    .I(MIR_30_OBUF_102),
    .O(MIR[29])
  );
  OBUF   MIR_28_OBUF (
    .I(MIR_30_OBUF_102),
    .O(MIR[28])
  );
  OBUF   MIR_27_OBUF (
    .I(MIR_30_OBUF_102),
    .O(MIR[27])
  );
  OBUF   MIR_26_OBUF (
    .I(MIR_26_OBUF_28),
    .O(MIR[26])
  );
  OBUF   MIR_25_OBUF (
    .I(MIR_25_OBUF_29),
    .O(MIR[25])
  );
  OBUF   MIR_24_OBUF (
    .I(MIR_24_OBUF_30),
    .O(MIR[24])
  );
  OBUF   MIR_23_OBUF (
    .I(MIR_23_OBUF_31),
    .O(MIR[23])
  );
  OBUF   MIR_22_OBUF (
    .I(MIR_22_OBUF_32),
    .O(MIR[22])
  );
  OBUF   MIR_21_OBUF (
    .I(MIR_21_OBUF_33),
    .O(MIR[21])
  );
  OBUF   MIR_20_OBUF (
    .I(MIR_20_OBUF_34),
    .O(MIR[20])
  );
  OBUF   MIR_19_OBUF (
    .I(MIR_19_OBUF_35),
    .O(MIR[19])
  );
  OBUF   MIR_18_OBUF (
    .I(MIR_18_OBUF_36),
    .O(MIR[18])
  );
  OBUF   MIR_17_OBUF (
    .I(MIR_17_OBUF_37),
    .O(MIR[17])
  );
  OBUF   MIR_16_OBUF (
    .I(MIR_16_OBUF_38),
    .O(MIR[16])
  );
  OBUF   MIR_15_OBUF (
    .I(MIR_15_OBUF_39),
    .O(MIR[15])
  );
  OBUF   MIR_14_OBUF (
    .I(MIR_14_OBUF_40),
    .O(MIR[14])
  );
  OBUF   MIR_13_OBUF (
    .I(MIR_13_OBUF_41),
    .O(MIR[13])
  );
  OBUF   MIR_12_OBUF (
    .I(MIR_12_OBUF_42),
    .O(MIR[12])
  );
  OBUF   MIR_11_OBUF (
    .I(MIR_11_OBUF_43),
    .O(MIR[11])
  );
  OBUF   MIR_10_OBUF (
    .I(MIR_10_OBUF_44),
    .O(MIR[10])
  );
  OBUF   MIR_9_OBUF (
    .I(MIR_9_OBUF_45),
    .O(MIR[9])
  );
  OBUF   MIR_8_OBUF (
    .I(MIR_8_OBUF_46),
    .O(MIR[8])
  );
  OBUF   MIR_7_OBUF (
    .I(MIR_7_OBUF_47),
    .O(MIR[7])
  );
  OBUF   MIR_6_OBUF (
    .I(MIR_6_OBUF_48),
    .O(MIR[6])
  );
  OBUF   MIR_5_OBUF (
    .I(MIR_5_OBUF_49),
    .O(MIR[5])
  );
  OBUF   MIR_4_OBUF (
    .I(MIR_4_OBUF_50),
    .O(MIR[4])
  );
  OBUF   MIR_3_OBUF (
    .I(MIR_3_OBUF_51),
    .O(MIR[3])
  );
  OBUF   MIR_2_OBUF (
    .I(MIR_2_OBUF_52),
    .O(MIR[2])
  );
  OBUF   MIR_1_OBUF (
    .I(MIR_1_OBUF_53),
    .O(MIR[1])
  );
  OBUF   MIR_0_OBUF (
    .I(MIR_0_OBUF_54),
    .O(MIR[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_12)
  );
  LUT6 #(
    .INIT ( 64'h3800100918441858 ))
  Mram_ROM261 (
    .I0(next_addr[2]),
    .I1(next_addr[4]),
    .I2(next_addr[5]),
    .I3(next_addr[3]),
    .I4(next_addr[1]),
    .I5(next_addr[0]),
    .O(MIR_26_OBUF_28)
  );
  LUT6 #(
    .INIT ( 64'h522220202228222A ))
  Mram_ROM251 (
    .I0(next_addr[4]),
    .I1(next_addr[5]),
    .I2(next_addr[3]),
    .I3(next_addr[0]),
    .I4(next_addr[1]),
    .I5(next_addr[2]),
    .O(MIR_25_OBUF_29)
  );
  LUT6 #(
    .INIT ( 64'h1240564116101240 ))
  Mram_ROM241 (
    .I0(next_addr[5]),
    .I1(next_addr[2]),
    .I2(next_addr[4]),
    .I3(next_addr[3]),
    .I4(next_addr[1]),
    .I5(next_addr[0]),
    .O(MIR_24_OBUF_30)
  );
  LUT6 #(
    .INIT ( 64'h1440145014800004 ))
  Mram_ROM231 (
    .I0(next_addr[5]),
    .I1(next_addr[0]),
    .I2(next_addr[1]),
    .I3(next_addr[2]),
    .I4(next_addr[3]),
    .I5(next_addr[4]),
    .O(MIR_23_OBUF_31)
  );
  LUT6 #(
    .INIT ( 64'h1104141C14002810 ))
  Mram_ROM221 (
    .I0(next_addr[5]),
    .I1(next_addr[1]),
    .I2(next_addr[0]),
    .I3(next_addr[3]),
    .I4(next_addr[2]),
    .I5(next_addr[4]),
    .O(MIR_22_OBUF_32)
  );
  LUT6 #(
    .INIT ( 64'h0110145001111091 ))
  Mram_ROM211 (
    .I0(next_addr[0]),
    .I1(next_addr[2]),
    .I2(next_addr[4]),
    .I3(next_addr[3]),
    .I4(next_addr[5]),
    .I5(next_addr[1]),
    .O(MIR_21_OBUF_33)
  );
  LUT6 #(
    .INIT ( 64'h0000400000000000 ))
  Mram_ROM201 (
    .I0(next_addr[0]),
    .I1(next_addr[1]),
    .I2(next_addr[2]),
    .I3(next_addr[3]),
    .I4(next_addr[4]),
    .I5(next_addr[5]),
    .O(MIR_20_OBUF_34)
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  Mram_ROM191 (
    .I0(next_addr[0]),
    .I1(next_addr[1]),
    .I2(next_addr[4]),
    .I3(next_addr[3]),
    .I4(next_addr[5]),
    .I5(next_addr[2]),
    .O(MIR_19_OBUF_35)
  );
  LUT6 #(
    .INIT ( 64'hFFEEBF78FFEEFFBB ))
  Mram_ROM181 (
    .I0(next_addr[4]),
    .I1(next_addr[3]),
    .I2(next_addr[0]),
    .I3(next_addr[5]),
    .I4(next_addr[2]),
    .I5(next_addr[1]),
    .O(MIR_18_OBUF_36)
  );
  LUT6 #(
    .INIT ( 64'h8FD9EFF99AA2B27B ))
  Mram_ROM171 (
    .I0(next_addr[4]),
    .I1(next_addr[5]),
    .I2(next_addr[0]),
    .I3(next_addr[1]),
    .I4(next_addr[2]),
    .I5(next_addr[3]),
    .O(MIR_17_OBUF_37)
  );
  LUT6 #(
    .INIT ( 64'hE8FFFFEAFDFFFAFD ))
  Mram_ROM161 (
    .I0(next_addr[2]),
    .I1(next_addr[4]),
    .I2(next_addr[5]),
    .I3(next_addr[1]),
    .I4(next_addr[0]),
    .I5(next_addr[3]),
    .O(MIR_16_OBUF_38)
  );
  LUT6 #(
    .INIT ( 64'hBFFAC6F7EFEEBBEF ))
  Mram_ROM151 (
    .I0(next_addr[4]),
    .I1(next_addr[3]),
    .I2(next_addr[1]),
    .I3(next_addr[0]),
    .I4(next_addr[5]),
    .I5(next_addr[2]),
    .O(MIR_15_OBUF_39)
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  Mram_ROM141 (
    .I0(next_addr[0]),
    .I1(next_addr[1]),
    .I2(next_addr[2]),
    .I3(next_addr[4]),
    .I4(next_addr[5]),
    .I5(next_addr[3]),
    .O(MIR_14_OBUF_40)
  );
  LUT6 #(
    .INIT ( 64'h8888888880808000 ))
  Mram_ROM131 (
    .I0(next_addr[4]),
    .I1(next_addr[5]),
    .I2(next_addr[2]),
    .I3(next_addr[0]),
    .I4(next_addr[1]),
    .I5(next_addr[3]),
    .O(MIR_13_OBUF_41)
  );
  LUT6 #(
    .INIT ( 64'h0220240028040028 ))
  Mram_ROM121 (
    .I0(next_addr[3]),
    .I1(next_addr[4]),
    .I2(next_addr[5]),
    .I3(next_addr[0]),
    .I4(next_addr[1]),
    .I5(next_addr[2]),
    .O(MIR_12_OBUF_42)
  );
  LUT6 #(
    .INIT ( 64'h040110246E272646 ))
  Mram_ROM1111 (
    .I0(next_addr[2]),
    .I1(next_addr[3]),
    .I2(next_addr[5]),
    .I3(next_addr[0]),
    .I4(next_addr[1]),
    .I5(next_addr[4]),
    .O(MIR_11_OBUF_43)
  );
  LUT6 #(
    .INIT ( 64'h0000000220000000 ))
  Mram_ROM101 (
    .I0(next_addr[1]),
    .I1(next_addr[3]),
    .I2(next_addr[2]),
    .I3(next_addr[0]),
    .I4(next_addr[4]),
    .I5(next_addr[5]),
    .O(MIR_10_OBUF_44)
  );
  LUT6 #(
    .INIT ( 64'h0000100000000000 ))
  Mram_ROM91 (
    .I0(next_addr[2]),
    .I1(next_addr[3]),
    .I2(next_addr[0]),
    .I3(next_addr[1]),
    .I4(next_addr[4]),
    .I5(next_addr[5]),
    .O(MIR_9_OBUF_45)
  );
  LUT6 #(
    .INIT ( 64'h0000001000000000 ))
  Mram_ROM81 (
    .I0(next_addr[0]),
    .I1(next_addr[1]),
    .I2(next_addr[2]),
    .I3(next_addr[3]),
    .I4(next_addr[4]),
    .I5(next_addr[5]),
    .O(MIR_8_OBUF_46)
  );
  LUT6 #(
    .INIT ( 64'h0000100000000000 ))
  Mram_ROM71 (
    .I0(next_addr[0]),
    .I1(next_addr[1]),
    .I2(next_addr[2]),
    .I3(next_addr[3]),
    .I4(next_addr[4]),
    .I5(next_addr[5]),
    .O(MIR_7_OBUF_47)
  );
  LUT6 #(
    .INIT ( 64'h0100000000000100 ))
  Mram_ROM61 (
    .I0(next_addr[0]),
    .I1(next_addr[2]),
    .I2(next_addr[3]),
    .I3(next_addr[5]),
    .I4(next_addr[1]),
    .I5(next_addr[4]),
    .O(MIR_6_OBUF_48)
  );
  LUT6 #(
    .INIT ( 64'h0880008000000080 ))
  Mram_ROM51 (
    .I0(next_addr[2]),
    .I1(next_addr[3]),
    .I2(next_addr[4]),
    .I3(next_addr[5]),
    .I4(next_addr[1]),
    .I5(next_addr[0]),
    .O(MIR_5_OBUF_49)
  );
  LUT6 #(
    .INIT ( 64'h0200000000000200 ))
  Mram_ROM41 (
    .I0(next_addr[0]),
    .I1(next_addr[2]),
    .I2(next_addr[3]),
    .I3(next_addr[5]),
    .I4(next_addr[1]),
    .I5(next_addr[4]),
    .O(MIR_4_OBUF_50)
  );
  LUT6 #(
    .INIT ( 64'h0041100410002004 ))
  Mram_ROM31 (
    .I0(next_addr[5]),
    .I1(next_addr[0]),
    .I2(next_addr[1]),
    .I3(next_addr[3]),
    .I4(next_addr[2]),
    .I5(next_addr[4]),
    .O(MIR_3_OBUF_51)
  );
  LUT6 #(
    .INIT ( 64'h0000100010000000 ))
  Mram_ROM27 (
    .I0(next_addr[1]),
    .I1(next_addr[3]),
    .I2(next_addr[4]),
    .I3(next_addr[5]),
    .I4(next_addr[2]),
    .I5(next_addr[0]),
    .O(MIR_2_OBUF_52)
  );
  LUT6 #(
    .INIT ( 64'h0008800000080000 ))
  Mram_ROM112 (
    .I0(next_addr[1]),
    .I1(next_addr[2]),
    .I2(next_addr[3]),
    .I3(next_addr[4]),
    .I4(next_addr[5]),
    .I5(next_addr[0]),
    .O(MIR_1_OBUF_53)
  );
  LUT6 #(
    .INIT ( 64'h1102014311020102 ))
  Mram_ROM110 (
    .I0(next_addr[3]),
    .I1(next_addr[4]),
    .I2(next_addr[5]),
    .I3(next_addr[2]),
    .I4(next_addr[0]),
    .I5(next_addr[1]),
    .O(MIR_0_OBUF_54)
  );
  GND   XST_GND1 (
    .G(MIR_30_OBUF_102)
  );
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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

