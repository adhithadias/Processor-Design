////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: GPR_synthesis.v
// /___/   /\     Timestamp: Sun Apr 16 17:52:39 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim GPR.ngc GPR_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: GPR.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Processor\Start\netgen\synthesis\GPR_synthesis.v
// # of Modules	: 1
// Design Name	: GPR
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

module GPR (
  clk, load, C_bus, d_out
);
  input clk;
  input load;
  input [23 : 0] C_bus;
  output [23 : 0] d_out;
  wire C_bus_23_IBUF_0;
  wire C_bus_22_IBUF_1;
  wire C_bus_21_IBUF_2;
  wire C_bus_20_IBUF_3;
  wire C_bus_19_IBUF_4;
  wire C_bus_18_IBUF_5;
  wire C_bus_17_IBUF_6;
  wire C_bus_16_IBUF_7;
  wire C_bus_15_IBUF_8;
  wire C_bus_14_IBUF_9;
  wire C_bus_13_IBUF_10;
  wire C_bus_12_IBUF_11;
  wire C_bus_11_IBUF_12;
  wire C_bus_10_IBUF_13;
  wire C_bus_9_IBUF_14;
  wire C_bus_8_IBUF_15;
  wire C_bus_7_IBUF_16;
  wire C_bus_6_IBUF_17;
  wire C_bus_5_IBUF_18;
  wire C_bus_4_IBUF_19;
  wire C_bus_3_IBUF_20;
  wire C_bus_2_IBUF_21;
  wire C_bus_1_IBUF_22;
  wire C_bus_0_IBUF_23;
  wire clk_BUFGP_24;
  wire load_IBUF_25;
  wire d_out_23_26;
  wire d_out_22_27;
  wire d_out_21_28;
  wire d_out_20_29;
  wire d_out_19_30;
  wire d_out_18_31;
  wire d_out_17_32;
  wire d_out_16_33;
  wire d_out_15_34;
  wire d_out_14_35;
  wire d_out_13_36;
  wire d_out_12_37;
  wire d_out_11_38;
  wire d_out_10_39;
  wire d_out_9_40;
  wire d_out_8_41;
  wire d_out_7_42;
  wire d_out_6_43;
  wire d_out_5_44;
  wire d_out_4_45;
  wire d_out_3_46;
  wire d_out_2_47;
  wire d_out_1_48;
  wire d_out_0_49;
  FDE #(
    .INIT ( 1'b0 ))
  d_out_0 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_0_IBUF_23),
    .Q(d_out_0_49)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_1 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_1_IBUF_22),
    .Q(d_out_1_48)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_2 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_2_IBUF_21),
    .Q(d_out_2_47)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_3 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_3_IBUF_20),
    .Q(d_out_3_46)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_4 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_4_IBUF_19),
    .Q(d_out_4_45)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_5 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_5_IBUF_18),
    .Q(d_out_5_44)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_6 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_6_IBUF_17),
    .Q(d_out_6_43)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_7 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_7_IBUF_16),
    .Q(d_out_7_42)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_8 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_8_IBUF_15),
    .Q(d_out_8_41)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_9 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_9_IBUF_14),
    .Q(d_out_9_40)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_10 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_10_IBUF_13),
    .Q(d_out_10_39)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_11 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_11_IBUF_12),
    .Q(d_out_11_38)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_12 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_12_IBUF_11),
    .Q(d_out_12_37)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_13 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_13_IBUF_10),
    .Q(d_out_13_36)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_14 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_14_IBUF_9),
    .Q(d_out_14_35)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_15 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_15_IBUF_8),
    .Q(d_out_15_34)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_16 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_16_IBUF_7),
    .Q(d_out_16_33)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_17 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_17_IBUF_6),
    .Q(d_out_17_32)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_18 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_18_IBUF_5),
    .Q(d_out_18_31)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_19 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_19_IBUF_4),
    .Q(d_out_19_30)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_20 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_20_IBUF_3),
    .Q(d_out_20_29)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_21 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_21_IBUF_2),
    .Q(d_out_21_28)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_22 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_22_IBUF_1),
    .Q(d_out_22_27)
  );
  FDE #(
    .INIT ( 1'b0 ))
  d_out_23 (
    .C(clk_BUFGP_24),
    .CE(load_IBUF_25),
    .D(C_bus_23_IBUF_0),
    .Q(d_out_23_26)
  );
  IBUF   C_bus_23_IBUF (
    .I(C_bus[23]),
    .O(C_bus_23_IBUF_0)
  );
  IBUF   C_bus_22_IBUF (
    .I(C_bus[22]),
    .O(C_bus_22_IBUF_1)
  );
  IBUF   C_bus_21_IBUF (
    .I(C_bus[21]),
    .O(C_bus_21_IBUF_2)
  );
  IBUF   C_bus_20_IBUF (
    .I(C_bus[20]),
    .O(C_bus_20_IBUF_3)
  );
  IBUF   C_bus_19_IBUF (
    .I(C_bus[19]),
    .O(C_bus_19_IBUF_4)
  );
  IBUF   C_bus_18_IBUF (
    .I(C_bus[18]),
    .O(C_bus_18_IBUF_5)
  );
  IBUF   C_bus_17_IBUF (
    .I(C_bus[17]),
    .O(C_bus_17_IBUF_6)
  );
  IBUF   C_bus_16_IBUF (
    .I(C_bus[16]),
    .O(C_bus_16_IBUF_7)
  );
  IBUF   C_bus_15_IBUF (
    .I(C_bus[15]),
    .O(C_bus_15_IBUF_8)
  );
  IBUF   C_bus_14_IBUF (
    .I(C_bus[14]),
    .O(C_bus_14_IBUF_9)
  );
  IBUF   C_bus_13_IBUF (
    .I(C_bus[13]),
    .O(C_bus_13_IBUF_10)
  );
  IBUF   C_bus_12_IBUF (
    .I(C_bus[12]),
    .O(C_bus_12_IBUF_11)
  );
  IBUF   C_bus_11_IBUF (
    .I(C_bus[11]),
    .O(C_bus_11_IBUF_12)
  );
  IBUF   C_bus_10_IBUF (
    .I(C_bus[10]),
    .O(C_bus_10_IBUF_13)
  );
  IBUF   C_bus_9_IBUF (
    .I(C_bus[9]),
    .O(C_bus_9_IBUF_14)
  );
  IBUF   C_bus_8_IBUF (
    .I(C_bus[8]),
    .O(C_bus_8_IBUF_15)
  );
  IBUF   C_bus_7_IBUF (
    .I(C_bus[7]),
    .O(C_bus_7_IBUF_16)
  );
  IBUF   C_bus_6_IBUF (
    .I(C_bus[6]),
    .O(C_bus_6_IBUF_17)
  );
  IBUF   C_bus_5_IBUF (
    .I(C_bus[5]),
    .O(C_bus_5_IBUF_18)
  );
  IBUF   C_bus_4_IBUF (
    .I(C_bus[4]),
    .O(C_bus_4_IBUF_19)
  );
  IBUF   C_bus_3_IBUF (
    .I(C_bus[3]),
    .O(C_bus_3_IBUF_20)
  );
  IBUF   C_bus_2_IBUF (
    .I(C_bus[2]),
    .O(C_bus_2_IBUF_21)
  );
  IBUF   C_bus_1_IBUF (
    .I(C_bus[1]),
    .O(C_bus_1_IBUF_22)
  );
  IBUF   C_bus_0_IBUF (
    .I(C_bus[0]),
    .O(C_bus_0_IBUF_23)
  );
  IBUF   load_IBUF (
    .I(load),
    .O(load_IBUF_25)
  );
  OBUF   d_out_23_OBUF (
    .I(d_out_23_26),
    .O(d_out[23])
  );
  OBUF   d_out_22_OBUF (
    .I(d_out_22_27),
    .O(d_out[22])
  );
  OBUF   d_out_21_OBUF (
    .I(d_out_21_28),
    .O(d_out[21])
  );
  OBUF   d_out_20_OBUF (
    .I(d_out_20_29),
    .O(d_out[20])
  );
  OBUF   d_out_19_OBUF (
    .I(d_out_19_30),
    .O(d_out[19])
  );
  OBUF   d_out_18_OBUF (
    .I(d_out_18_31),
    .O(d_out[18])
  );
  OBUF   d_out_17_OBUF (
    .I(d_out_17_32),
    .O(d_out[17])
  );
  OBUF   d_out_16_OBUF (
    .I(d_out_16_33),
    .O(d_out[16])
  );
  OBUF   d_out_15_OBUF (
    .I(d_out_15_34),
    .O(d_out[15])
  );
  OBUF   d_out_14_OBUF (
    .I(d_out_14_35),
    .O(d_out[14])
  );
  OBUF   d_out_13_OBUF (
    .I(d_out_13_36),
    .O(d_out[13])
  );
  OBUF   d_out_12_OBUF (
    .I(d_out_12_37),
    .O(d_out[12])
  );
  OBUF   d_out_11_OBUF (
    .I(d_out_11_38),
    .O(d_out[11])
  );
  OBUF   d_out_10_OBUF (
    .I(d_out_10_39),
    .O(d_out[10])
  );
  OBUF   d_out_9_OBUF (
    .I(d_out_9_40),
    .O(d_out[9])
  );
  OBUF   d_out_8_OBUF (
    .I(d_out_8_41),
    .O(d_out[8])
  );
  OBUF   d_out_7_OBUF (
    .I(d_out_7_42),
    .O(d_out[7])
  );
  OBUF   d_out_6_OBUF (
    .I(d_out_6_43),
    .O(d_out[6])
  );
  OBUF   d_out_5_OBUF (
    .I(d_out_5_44),
    .O(d_out[5])
  );
  OBUF   d_out_4_OBUF (
    .I(d_out_4_45),
    .O(d_out[4])
  );
  OBUF   d_out_3_OBUF (
    .I(d_out_3_46),
    .O(d_out[3])
  );
  OBUF   d_out_2_OBUF (
    .I(d_out_2_47),
    .O(d_out[2])
  );
  OBUF   d_out_1_OBUF (
    .I(d_out_1_48),
    .O(d_out[1])
  );
  OBUF   d_out_0_OBUF (
    .I(d_out_0_49),
    .O(d_out[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_24)
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

