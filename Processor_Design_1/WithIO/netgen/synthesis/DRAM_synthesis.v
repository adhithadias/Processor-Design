////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: DRAM_synthesis.v
// /___/   /\     Timestamp: Wed Apr 19 12:18:31 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim DRAM.ngc DRAM_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: DRAM.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Start\netgen\synthesis\DRAM_synthesis.v
// # of Modules	: 1
// Design Name	: DRAM
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

module DRAM (
  clk, write, data_in, data_addr, data_out
);
  input clk;
  input write;
  input [7 : 0] data_in;
  input [23 : 0] data_addr;
  output [7 : 0] data_out;
  wire data_in_7_IBUF_0;
  wire data_in_6_IBUF_1;
  wire data_in_5_IBUF_2;
  wire data_in_4_IBUF_3;
  wire data_in_3_IBUF_4;
  wire data_in_2_IBUF_5;
  wire data_in_1_IBUF_6;
  wire data_in_0_IBUF_7;
  wire data_addr_5_IBUF_8;
  wire data_addr_4_IBUF_9;
  wire data_addr_3_IBUF_10;
  wire data_addr_2_IBUF_11;
  wire data_addr_1_IBUF_12;
  wire data_addr_0_IBUF_13;
  wire clk_BUFGP_14;
  wire write_IBUF_15;
  wire data_out_7_OBUF_16;
  wire data_out_6_OBUF_17;
  wire data_out_5_OBUF_18;
  wire data_out_4_OBUF_19;
  wire data_out_3_OBUF_20;
  wire data_out_2_OBUF_21;
  wire data_out_1_OBUF_22;
  wire data_out_0_OBUF_23;
  RAM64X1S #(
    .INIT ( 64'h2727272727272127 ))
  Mram_data_memory1 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_0_IBUF_7),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_0_OBUF_23)
  );
  RAM64X1S #(
    .INIT ( 64'hBDBDBDBDBDBDA1BD ))
  Mram_data_memory2 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_1_IBUF_6),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_1_OBUF_22)
  );
  RAM64X1S #(
    .INIT ( 64'h8888888888888588 ))
  Mram_data_memory3 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_2_IBUF_5),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_2_OBUF_21)
  );
  RAM64X1S #(
    .INIT ( 64'h6B6B6B6B6B6B676B ))
  Mram_data_memory4 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_3_IBUF_4),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_3_OBUF_20)
  );
  RAM64X1S #(
    .INIT ( 64'h4B4B4B4B4B4B4F4B ))
  Mram_data_memory5 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_4_IBUF_3),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_4_OBUF_19)
  );
  RAM64X1S #(
    .INIT ( 64'h7171717171717271 ))
  Mram_data_memory6 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_5_IBUF_2),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_5_OBUF_18)
  );
  RAM64X1S #(
    .INIT ( 64'h4F4F4F4F4F4F554F ))
  Mram_data_memory7 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_6_IBUF_1),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_6_OBUF_17)
  );
  RAM64X1S #(
    .INIT ( 64'h8080808080808C80 ))
  Mram_data_memory8 (
    .A0(data_addr_0_IBUF_13),
    .A1(data_addr_1_IBUF_12),
    .A2(data_addr_2_IBUF_11),
    .A3(data_addr_3_IBUF_10),
    .A4(data_addr_4_IBUF_9),
    .A5(data_addr_5_IBUF_8),
    .D(data_in_7_IBUF_0),
    .WCLK(clk_BUFGP_14),
    .WE(write_IBUF_15),
    .O(data_out_7_OBUF_16)
  );
  IBUF   data_in_7_IBUF (
    .I(data_in[7]),
    .O(data_in_7_IBUF_0)
  );
  IBUF   data_in_6_IBUF (
    .I(data_in[6]),
    .O(data_in_6_IBUF_1)
  );
  IBUF   data_in_5_IBUF (
    .I(data_in[5]),
    .O(data_in_5_IBUF_2)
  );
  IBUF   data_in_4_IBUF (
    .I(data_in[4]),
    .O(data_in_4_IBUF_3)
  );
  IBUF   data_in_3_IBUF (
    .I(data_in[3]),
    .O(data_in_3_IBUF_4)
  );
  IBUF   data_in_2_IBUF (
    .I(data_in[2]),
    .O(data_in_2_IBUF_5)
  );
  IBUF   data_in_1_IBUF (
    .I(data_in[1]),
    .O(data_in_1_IBUF_6)
  );
  IBUF   data_in_0_IBUF (
    .I(data_in[0]),
    .O(data_in_0_IBUF_7)
  );
  IBUF   data_addr_5_IBUF (
    .I(data_addr[5]),
    .O(data_addr_5_IBUF_8)
  );
  IBUF   data_addr_4_IBUF (
    .I(data_addr[4]),
    .O(data_addr_4_IBUF_9)
  );
  IBUF   data_addr_3_IBUF (
    .I(data_addr[3]),
    .O(data_addr_3_IBUF_10)
  );
  IBUF   data_addr_2_IBUF (
    .I(data_addr[2]),
    .O(data_addr_2_IBUF_11)
  );
  IBUF   data_addr_1_IBUF (
    .I(data_addr[1]),
    .O(data_addr_1_IBUF_12)
  );
  IBUF   data_addr_0_IBUF (
    .I(data_addr[0]),
    .O(data_addr_0_IBUF_13)
  );
  IBUF   write_IBUF (
    .I(write),
    .O(write_IBUF_15)
  );
  OBUF   data_out_7_OBUF (
    .I(data_out_7_OBUF_16),
    .O(data_out[7])
  );
  OBUF   data_out_6_OBUF (
    .I(data_out_6_OBUF_17),
    .O(data_out[6])
  );
  OBUF   data_out_5_OBUF (
    .I(data_out_5_OBUF_18),
    .O(data_out[5])
  );
  OBUF   data_out_4_OBUF (
    .I(data_out_4_OBUF_19),
    .O(data_out[4])
  );
  OBUF   data_out_3_OBUF (
    .I(data_out_3_OBUF_20),
    .O(data_out[3])
  );
  OBUF   data_out_2_OBUF (
    .I(data_out_2_OBUF_21),
    .O(data_out[2])
  );
  OBUF   data_out_1_OBUF (
    .I(data_out_1_OBUF_22),
    .O(data_out[1])
  );
  OBUF   data_out_0_OBUF (
    .I(data_out_0_OBUF_23),
    .O(data_out[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_14)
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

