////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: PC_synthesis.v
// /___/   /\     Timestamp: Sun Apr 16 11:53:03 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim PC.ngc PC_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: PC.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Processor\Start\netgen\synthesis\PC_synthesis.v
// # of Modules	: 1
// Design Name	: PC
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

module PC (
  clk, load, inc, C_bus, ins_addr
);
  input clk;
  input load;
  input inc;
  input [23 : 0] C_bus;
  output [8 : 0] ins_addr;
  wire C_bus_8_IBUF_0;
  wire C_bus_7_IBUF_1;
  wire C_bus_6_IBUF_2;
  wire C_bus_5_IBUF_3;
  wire C_bus_4_IBUF_4;
  wire C_bus_3_IBUF_5;
  wire C_bus_2_IBUF_6;
  wire C_bus_1_IBUF_7;
  wire C_bus_0_IBUF_8;
  wire clk_BUFGP_9;
  wire load_IBUF_10;
  wire inc_IBUF_11;
  wire ins_addr_8_12;
  wire ins_addr_7_13;
  wire ins_addr_6_14;
  wire ins_addr_5_15;
  wire ins_addr_4_16;
  wire ins_addr_3_17;
  wire ins_addr_2_18;
  wire ins_addr_1_19;
  wire ins_addr_0_20;
  wire N1;
  wire _n0013_inv;
  wire load_inv;
  wire Mcount_ins_addr;
  wire Mcount_ins_addr1;
  wire Mcount_ins_addr2;
  wire Mcount_ins_addr3;
  wire Mcount_ins_addr4;
  wire Mcount_ins_addr5;
  wire Mcount_ins_addr6;
  wire Mcount_ins_addr7;
  wire Mcount_ins_addr8;
  wire [8 : 0] Mcount_ins_addr_lut;
  wire [7 : 0] Mcount_ins_addr_cy;
  GND   XST_GND (
    .G(N1)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<0>  (
    .I0(C_bus_0_IBUF_8),
    .I1(load_IBUF_10),
    .I2(ins_addr_0_20),
    .O(Mcount_ins_addr_lut[0])
  );
  MUXCY   \Mcount_ins_addr_cy<0>  (
    .CI(load_inv),
    .DI(N1),
    .S(Mcount_ins_addr_lut[0]),
    .O(Mcount_ins_addr_cy[0])
  );
  XORCY   \Mcount_ins_addr_xor<0>  (
    .CI(load_inv),
    .LI(Mcount_ins_addr_lut[0]),
    .O(Mcount_ins_addr)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<1>  (
    .I0(C_bus_1_IBUF_7),
    .I1(load_IBUF_10),
    .I2(ins_addr_1_19),
    .O(Mcount_ins_addr_lut[1])
  );
  MUXCY   \Mcount_ins_addr_cy<1>  (
    .CI(Mcount_ins_addr_cy[0]),
    .DI(N1),
    .S(Mcount_ins_addr_lut[1]),
    .O(Mcount_ins_addr_cy[1])
  );
  XORCY   \Mcount_ins_addr_xor<1>  (
    .CI(Mcount_ins_addr_cy[0]),
    .LI(Mcount_ins_addr_lut[1]),
    .O(Mcount_ins_addr1)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<2>  (
    .I0(C_bus_2_IBUF_6),
    .I1(load_IBUF_10),
    .I2(ins_addr_2_18),
    .O(Mcount_ins_addr_lut[2])
  );
  MUXCY   \Mcount_ins_addr_cy<2>  (
    .CI(Mcount_ins_addr_cy[1]),
    .DI(N1),
    .S(Mcount_ins_addr_lut[2]),
    .O(Mcount_ins_addr_cy[2])
  );
  XORCY   \Mcount_ins_addr_xor<2>  (
    .CI(Mcount_ins_addr_cy[1]),
    .LI(Mcount_ins_addr_lut[2]),
    .O(Mcount_ins_addr2)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<3>  (
    .I0(C_bus_3_IBUF_5),
    .I1(load_IBUF_10),
    .I2(ins_addr_3_17),
    .O(Mcount_ins_addr_lut[3])
  );
  MUXCY   \Mcount_ins_addr_cy<3>  (
    .CI(Mcount_ins_addr_cy[2]),
    .DI(N1),
    .S(Mcount_ins_addr_lut[3]),
    .O(Mcount_ins_addr_cy[3])
  );
  XORCY   \Mcount_ins_addr_xor<3>  (
    .CI(Mcount_ins_addr_cy[2]),
    .LI(Mcount_ins_addr_lut[3]),
    .O(Mcount_ins_addr3)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<4>  (
    .I0(C_bus_4_IBUF_4),
    .I1(load_IBUF_10),
    .I2(ins_addr_4_16),
    .O(Mcount_ins_addr_lut[4])
  );
  MUXCY   \Mcount_ins_addr_cy<4>  (
    .CI(Mcount_ins_addr_cy[3]),
    .DI(N1),
    .S(Mcount_ins_addr_lut[4]),
    .O(Mcount_ins_addr_cy[4])
  );
  XORCY   \Mcount_ins_addr_xor<4>  (
    .CI(Mcount_ins_addr_cy[3]),
    .LI(Mcount_ins_addr_lut[4]),
    .O(Mcount_ins_addr4)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<5>  (
    .I0(C_bus_5_IBUF_3),
    .I1(load_IBUF_10),
    .I2(ins_addr_5_15),
    .O(Mcount_ins_addr_lut[5])
  );
  MUXCY   \Mcount_ins_addr_cy<5>  (
    .CI(Mcount_ins_addr_cy[4]),
    .DI(N1),
    .S(Mcount_ins_addr_lut[5]),
    .O(Mcount_ins_addr_cy[5])
  );
  XORCY   \Mcount_ins_addr_xor<5>  (
    .CI(Mcount_ins_addr_cy[4]),
    .LI(Mcount_ins_addr_lut[5]),
    .O(Mcount_ins_addr5)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<6>  (
    .I0(C_bus_6_IBUF_2),
    .I1(load_IBUF_10),
    .I2(ins_addr_6_14),
    .O(Mcount_ins_addr_lut[6])
  );
  MUXCY   \Mcount_ins_addr_cy<6>  (
    .CI(Mcount_ins_addr_cy[5]),
    .DI(N1),
    .S(Mcount_ins_addr_lut[6]),
    .O(Mcount_ins_addr_cy[6])
  );
  XORCY   \Mcount_ins_addr_xor<6>  (
    .CI(Mcount_ins_addr_cy[5]),
    .LI(Mcount_ins_addr_lut[6]),
    .O(Mcount_ins_addr6)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<7>  (
    .I0(C_bus_7_IBUF_1),
    .I1(load_IBUF_10),
    .I2(ins_addr_7_13),
    .O(Mcount_ins_addr_lut[7])
  );
  MUXCY   \Mcount_ins_addr_cy<7>  (
    .CI(Mcount_ins_addr_cy[6]),
    .DI(N1),
    .S(Mcount_ins_addr_lut[7]),
    .O(Mcount_ins_addr_cy[7])
  );
  XORCY   \Mcount_ins_addr_xor<7>  (
    .CI(Mcount_ins_addr_cy[6]),
    .LI(Mcount_ins_addr_lut[7]),
    .O(Mcount_ins_addr7)
  );
  LUT3 #(
    .INIT ( 8'hB8 ))
  \Mcount_ins_addr_lut<8>  (
    .I0(C_bus_8_IBUF_0),
    .I1(load_IBUF_10),
    .I2(ins_addr_8_12),
    .O(Mcount_ins_addr_lut[8])
  );
  XORCY   \Mcount_ins_addr_xor<8>  (
    .CI(Mcount_ins_addr_cy[7]),
    .LI(Mcount_ins_addr_lut[8]),
    .O(Mcount_ins_addr8)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_0 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr),
    .Q(ins_addr_0_20)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_1 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr1),
    .Q(ins_addr_1_19)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_2 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr2),
    .Q(ins_addr_2_18)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_3 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr3),
    .Q(ins_addr_3_17)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_4 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr4),
    .Q(ins_addr_4_16)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_5 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr5),
    .Q(ins_addr_5_15)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_6 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr6),
    .Q(ins_addr_6_14)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_7 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr7),
    .Q(ins_addr_7_13)
  );
  FDE #(
    .INIT ( 1'b0 ))
  ins_addr_8 (
    .C(clk_BUFGP_9),
    .CE(_n0013_inv),
    .D(Mcount_ins_addr8),
    .Q(ins_addr_8_12)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  _n0013_inv1 (
    .I0(load_IBUF_10),
    .I1(inc_IBUF_11),
    .O(_n0013_inv)
  );
  IBUF   C_bus_8_IBUF (
    .I(C_bus[8]),
    .O(C_bus_8_IBUF_0)
  );
  IBUF   C_bus_7_IBUF (
    .I(C_bus[7]),
    .O(C_bus_7_IBUF_1)
  );
  IBUF   C_bus_6_IBUF (
    .I(C_bus[6]),
    .O(C_bus_6_IBUF_2)
  );
  IBUF   C_bus_5_IBUF (
    .I(C_bus[5]),
    .O(C_bus_5_IBUF_3)
  );
  IBUF   C_bus_4_IBUF (
    .I(C_bus[4]),
    .O(C_bus_4_IBUF_4)
  );
  IBUF   C_bus_3_IBUF (
    .I(C_bus[3]),
    .O(C_bus_3_IBUF_5)
  );
  IBUF   C_bus_2_IBUF (
    .I(C_bus[2]),
    .O(C_bus_2_IBUF_6)
  );
  IBUF   C_bus_1_IBUF (
    .I(C_bus[1]),
    .O(C_bus_1_IBUF_7)
  );
  IBUF   C_bus_0_IBUF (
    .I(C_bus[0]),
    .O(C_bus_0_IBUF_8)
  );
  IBUF   load_IBUF (
    .I(load),
    .O(load_IBUF_10)
  );
  IBUF   inc_IBUF (
    .I(inc),
    .O(inc_IBUF_11)
  );
  OBUF   ins_addr_8_OBUF (
    .I(ins_addr_8_12),
    .O(ins_addr[8])
  );
  OBUF   ins_addr_7_OBUF (
    .I(ins_addr_7_13),
    .O(ins_addr[7])
  );
  OBUF   ins_addr_6_OBUF (
    .I(ins_addr_6_14),
    .O(ins_addr[6])
  );
  OBUF   ins_addr_5_OBUF (
    .I(ins_addr_5_15),
    .O(ins_addr[5])
  );
  OBUF   ins_addr_4_OBUF (
    .I(ins_addr_4_16),
    .O(ins_addr[4])
  );
  OBUF   ins_addr_3_OBUF (
    .I(ins_addr_3_17),
    .O(ins_addr[3])
  );
  OBUF   ins_addr_2_OBUF (
    .I(ins_addr_2_18),
    .O(ins_addr[2])
  );
  OBUF   ins_addr_1_OBUF (
    .I(ins_addr_1_19),
    .O(ins_addr[1])
  );
  OBUF   ins_addr_0_OBUF (
    .I(ins_addr_0_20),
    .O(ins_addr[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_9)
  );
  INV   load_inv1_INV_0 (
    .I(load_IBUF_10),
    .O(load_inv)
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

