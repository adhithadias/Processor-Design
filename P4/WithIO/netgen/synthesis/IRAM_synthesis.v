////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: IRAM_synthesis.v
// /___/   /\     Timestamp: Wed Apr 19 14:55:15 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim IRAM.ngc IRAM_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: IRAM.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Start\netgen\synthesis\IRAM_synthesis.v
// # of Modules	: 1
// Design Name	: IRAM
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

module IRAM (
  clk, ins_addr, ins_out
);
  input clk;
  input [8 : 0] ins_addr;
  output [7 : 0] ins_out;
  wire ins_addr_8_IBUF_0;
  wire ins_addr_7_IBUF_1;
  wire ins_addr_6_IBUF_2;
  wire ins_addr_5_IBUF_3;
  wire ins_addr_4_IBUF_4;
  wire ins_addr_3_IBUF_5;
  wire ins_addr_2_IBUF_6;
  wire ins_addr_1_IBUF_7;
  wire ins_addr_0_IBUF_8;
  wire ins_out_5_OBUF_9;
  wire ins_out_4_OBUF_10;
  wire ins_out_3_OBUF_11;
  wire ins_out_2_OBUF_12;
  wire ins_out_1_OBUF_13;
  wire ins_out_0_OBUF_14;
  wire N7;
  wire N6;
  wire N5;
  wire N4;
  wire N3;
  wire N2;
  wire N1;
  wire N0;
  wire Mram_ins_memory17114;
  wire Mram_ins_memory17111_41;
  wire Mram_ins_memory1711;
  wire Mram_ins_memory14114;
  wire Mram_ins_memory14111_44;
  wire Mram_ins_memory1411;
  wire Mram_ins_memory11214;
  wire Mram_ins_memory11211_47;
  wire Mram_ins_memory1121;
  wire Mram_ins_memory8113_49;
  wire Mram_ins_memory8112_50;
  wire Mram_ins_memory8111_51;
  wire Mram_ins_memory811;
  wire Mram_ins_memory5111_53;
  wire Mram_ins_memory511;
  wire Mram_ins_memory2114;
  wire Mram_ins_memory2111_56;
  wire Mram_ins_memory211;
  wire ins_out_7_OBUF_58;
  IBUF   ins_addr_8_IBUF (
    .I(ins_addr[8]),
    .O(ins_addr_8_IBUF_0)
  );
  IBUF   ins_addr_7_IBUF (
    .I(ins_addr[7]),
    .O(ins_addr_7_IBUF_1)
  );
  IBUF   ins_addr_6_IBUF (
    .I(ins_addr[6]),
    .O(ins_addr_6_IBUF_2)
  );
  IBUF   ins_addr_5_IBUF (
    .I(ins_addr[5]),
    .O(ins_addr_5_IBUF_3)
  );
  IBUF   ins_addr_4_IBUF (
    .I(ins_addr[4]),
    .O(ins_addr_4_IBUF_4)
  );
  IBUF   ins_addr_3_IBUF (
    .I(ins_addr[3]),
    .O(ins_addr_3_IBUF_5)
  );
  IBUF   ins_addr_2_IBUF (
    .I(ins_addr[2]),
    .O(ins_addr_2_IBUF_6)
  );
  IBUF   ins_addr_1_IBUF (
    .I(ins_addr[1]),
    .O(ins_addr_1_IBUF_7)
  );
  IBUF   ins_addr_0_IBUF (
    .I(ins_addr[0]),
    .O(ins_addr_0_IBUF_8)
  );
  OBUF   ins_out_7_OBUF (
    .I(ins_out_7_OBUF_58),
    .O(ins_out[7])
  );
  OBUF   ins_out_6_OBUF (
    .I(ins_out_7_OBUF_58),
    .O(ins_out[6])
  );
  OBUF   ins_out_5_OBUF (
    .I(ins_out_5_OBUF_9),
    .O(ins_out[5])
  );
  OBUF   ins_out_4_OBUF (
    .I(ins_out_4_OBUF_10),
    .O(ins_out[4])
  );
  OBUF   ins_out_3_OBUF (
    .I(ins_out_3_OBUF_11),
    .O(ins_out[3])
  );
  OBUF   ins_out_2_OBUF (
    .I(ins_out_2_OBUF_12),
    .O(ins_out[2])
  );
  OBUF   ins_out_1_OBUF (
    .I(ins_out_1_OBUF_13),
    .O(ins_out[1])
  );
  OBUF   ins_out_0_OBUF (
    .I(ins_out_0_OBUF_14),
    .O(ins_out[0])
  );
  LUT6 #(
    .INIT ( 64'h0100011000100000 ))
  Mram_ins_memory17115_G (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_5_IBUF_3),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_3_IBUF_5),
    .I4(ins_addr_4_IBUF_4),
    .I5(ins_addr_2_IBUF_6),
    .O(N7)
  );
  LUT6 #(
    .INIT ( 64'h4000004044100401 ))
  Mram_ins_memory17115_F (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_4_IBUF_4),
    .I2(ins_addr_5_IBUF_3),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_0_IBUF_8),
    .O(N6)
  );
  MUXF7   Mram_ins_memory17115 (
    .I0(N6),
    .I1(N7),
    .S(ins_addr_6_IBUF_2),
    .O(Mram_ins_memory17114)
  );
  LUT6 #(
    .INIT ( 64'h1011100101111101 ))
  Mram_ins_memory14115_G (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_4_IBUF_4),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h0041015415111445 ))
  Mram_ins_memory14115_F (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_4_IBUF_4),
    .I5(ins_addr_3_IBUF_5),
    .O(N4)
  );
  MUXF7   Mram_ins_memory14115 (
    .I0(N4),
    .I1(N5),
    .S(ins_addr_5_IBUF_3),
    .O(Mram_ins_memory14114)
  );
  LUT6 #(
    .INIT ( 64'h0110010000000100 ))
  Mram_ins_memory11215_G (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_4_IBUF_4),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'h1100100114010514 ))
  Mram_ins_memory11215_F (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_4_IBUF_4),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_6_IBUF_2),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_2_IBUF_6),
    .O(N2)
  );
  MUXF7   Mram_ins_memory11215 (
    .I0(N2),
    .I1(N3),
    .S(ins_addr_5_IBUF_3),
    .O(Mram_ins_memory11214)
  );
  LUT6 #(
    .INIT ( 64'h1010110500110010 ))
  Mram_ins_memory2115_G (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_3_IBUF_5),
    .I3(ins_addr_4_IBUF_4),
    .I4(ins_addr_1_IBUF_7),
    .I5(ins_addr_0_IBUF_8),
    .O(N1)
  );
  LUT6 #(
    .INIT ( 64'h1015100145511454 ))
  Mram_ins_memory2115_F (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_4_IBUF_4),
    .I2(ins_addr_6_IBUF_2),
    .I3(ins_addr_1_IBUF_7),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_0_IBUF_8),
    .O(N0)
  );
  MUXF7   Mram_ins_memory2115 (
    .I0(N0),
    .I1(N1),
    .S(ins_addr_5_IBUF_3),
    .O(Mram_ins_memory2114)
  );
  LUT6 #(
    .INIT ( 64'h5551151144400400 ))
  Mram_ins_memory17116 (
    .I0(ins_addr_8_IBUF_0),
    .I1(ins_addr_1_IBUF_7),
    .I2(ins_addr_0_IBUF_8),
    .I3(Mram_ins_memory17111_41),
    .I4(Mram_ins_memory1711),
    .I5(Mram_ins_memory17114),
    .O(ins_out_5_OBUF_9)
  );
  LUT6 #(
    .INIT ( 64'h0001000010000150 ))
  Mram_ins_memory17112 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_2_IBUF_6),
    .I3(ins_addr_5_IBUF_3),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_4_IBUF_4),
    .O(Mram_ins_memory17111_41)
  );
  LUT6 #(
    .INIT ( 64'h0100100105000111 ))
  Mram_ins_memory17111 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_3_IBUF_5),
    .I2(ins_addr_6_IBUF_2),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_5_IBUF_3),
    .I5(ins_addr_4_IBUF_4),
    .O(Mram_ins_memory1711)
  );
  LUT6 #(
    .INIT ( 64'h5551151144400400 ))
  Mram_ins_memory14116 (
    .I0(ins_addr_8_IBUF_0),
    .I1(ins_addr_1_IBUF_7),
    .I2(ins_addr_4_IBUF_4),
    .I3(Mram_ins_memory14111_44),
    .I4(Mram_ins_memory1411),
    .I5(Mram_ins_memory14114),
    .O(ins_out_4_OBUF_10)
  );
  LUT6 #(
    .INIT ( 64'h1050114510001054 ))
  Mram_ins_memory14112 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_5_IBUF_3),
    .I2(ins_addr_3_IBUF_5),
    .I3(ins_addr_6_IBUF_2),
    .I4(ins_addr_2_IBUF_6),
    .I5(ins_addr_0_IBUF_8),
    .O(Mram_ins_memory14111_44)
  );
  LUT6 #(
    .INIT ( 64'h1100101045100150 ))
  Mram_ins_memory14111 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_3_IBUF_5),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_0_IBUF_8),
    .I5(ins_addr_5_IBUF_3),
    .O(Mram_ins_memory1411)
  );
  LUT6 #(
    .INIT ( 64'h5551151144400400 ))
  Mram_ins_memory11216 (
    .I0(ins_addr_8_IBUF_0),
    .I1(ins_addr_1_IBUF_7),
    .I2(ins_addr_2_IBUF_6),
    .I3(Mram_ins_memory11211_47),
    .I4(Mram_ins_memory1121),
    .I5(Mram_ins_memory11214),
    .O(ins_out_3_OBUF_11)
  );
  LUT6 #(
    .INIT ( 64'h0110010041104101 ))
  Mram_ins_memory11212 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_4_IBUF_4),
    .I3(ins_addr_3_IBUF_5),
    .I4(ins_addr_0_IBUF_8),
    .I5(ins_addr_5_IBUF_3),
    .O(Mram_ins_memory11211_47)
  );
  LUT6 #(
    .INIT ( 64'h1001001011411155 ))
  Mram_ins_memory11211 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_4_IBUF_4),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_5_IBUF_3),
    .O(Mram_ins_memory1121)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  Mram_ins_memory8115 (
    .I0(Mram_ins_memory8113_49),
    .I1(ins_addr_8_IBUF_0),
    .O(ins_out_2_OBUF_12)
  );
  LUT6 #(
    .INIT ( 64'h51405140FBEA5140 ))
  Mram_ins_memory8114 (
    .I0(ins_addr_5_IBUF_3),
    .I1(ins_addr_2_IBUF_6),
    .I2(Mram_ins_memory8111_51),
    .I3(Mram_ins_memory8112_50),
    .I4(Mram_ins_memory811),
    .I5(ins_addr_6_IBUF_2),
    .O(Mram_ins_memory8113_49)
  );
  LUT6 #(
    .INIT ( 64'h5454105510014105 ))
  Mram_ins_memory8113 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_3_IBUF_5),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_6_IBUF_2),
    .I4(ins_addr_4_IBUF_4),
    .I5(ins_addr_1_IBUF_7),
    .O(Mram_ins_memory8112_50)
  );
  LUT6 #(
    .INIT ( 64'h5555411501105101 ))
  Mram_ins_memory8112 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_3_IBUF_5),
    .I2(ins_addr_6_IBUF_2),
    .I3(ins_addr_4_IBUF_4),
    .I4(ins_addr_0_IBUF_8),
    .I5(ins_addr_1_IBUF_7),
    .O(Mram_ins_memory8111_51)
  );
  LUT6 #(
    .INIT ( 64'h5505404444055154 ))
  Mram_ins_memory8111 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_3_IBUF_5),
    .I2(ins_addr_4_IBUF_4),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_1_IBUF_7),
    .I5(ins_addr_0_IBUF_8),
    .O(Mram_ins_memory811)
  );
  LUT5 #(
    .INIT ( 32'h11100100 ))
  Mram_ins_memory5113 (
    .I0(ins_addr_8_IBUF_0),
    .I1(ins_addr_7_IBUF_1),
    .I2(ins_addr_5_IBUF_3),
    .I3(Mram_ins_memory5111_53),
    .I4(Mram_ins_memory511),
    .O(ins_out_1_OBUF_13)
  );
  LUT6 #(
    .INIT ( 64'h985EF94E95611439 ))
  Mram_ins_memory5112 (
    .I0(ins_addr_2_IBUF_6),
    .I1(ins_addr_4_IBUF_4),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_1_IBUF_7),
    .I4(ins_addr_3_IBUF_5),
    .I5(ins_addr_6_IBUF_2),
    .O(Mram_ins_memory5111_53)
  );
  LUT6 #(
    .INIT ( 64'h1140410041034034 ))
  Mram_ins_memory5111 (
    .I0(ins_addr_6_IBUF_2),
    .I1(ins_addr_3_IBUF_5),
    .I2(ins_addr_0_IBUF_8),
    .I3(ins_addr_2_IBUF_6),
    .I4(ins_addr_1_IBUF_7),
    .I5(ins_addr_4_IBUF_4),
    .O(Mram_ins_memory511)
  );
  LUT6 #(
    .INIT ( 64'h5551151144400400 ))
  Mram_ins_memory2116 (
    .I0(ins_addr_8_IBUF_0),
    .I1(ins_addr_2_IBUF_6),
    .I2(ins_addr_4_IBUF_4),
    .I3(Mram_ins_memory2111_56),
    .I4(Mram_ins_memory211),
    .I5(Mram_ins_memory2114),
    .O(ins_out_0_OBUF_14)
  );
  LUT6 #(
    .INIT ( 64'h0550041505440411 ))
  Mram_ins_memory2112 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_3_IBUF_5),
    .I2(ins_addr_5_IBUF_3),
    .I3(ins_addr_6_IBUF_2),
    .I4(ins_addr_0_IBUF_8),
    .I5(ins_addr_1_IBUF_7),
    .O(Mram_ins_memory2111_56)
  );
  LUT6 #(
    .INIT ( 64'h1110010001000511 ))
  Mram_ins_memory2111 (
    .I0(ins_addr_7_IBUF_1),
    .I1(ins_addr_6_IBUF_2),
    .I2(ins_addr_3_IBUF_5),
    .I3(ins_addr_1_IBUF_7),
    .I4(ins_addr_0_IBUF_8),
    .I5(ins_addr_5_IBUF_3),
    .O(Mram_ins_memory211)
  );
  GND   XST_GND1 (
    .G(ins_out_7_OBUF_58)
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

