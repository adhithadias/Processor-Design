////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: UART_TX_synthesis.v
// /___/   /\     Timestamp: Thu Apr 20 13:05:41 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim UART_TX.ngc UART_TX_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: UART_TX.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Start\netgen\synthesis\UART_TX_synthesis.v
// # of Modules	: 1
// Design Name	: UART_TX
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

module UART_TX (
  clk, reset, tx_start, s_tick, tx_done_tick, tx, din
);
  input clk;
  input reset;
  input tx_start;
  input s_tick;
  output tx_done_tick;
  output tx;
  input [7 : 0] din;
  wire din_7_IBUF_0;
  wire din_6_IBUF_1;
  wire din_5_IBUF_2;
  wire din_4_IBUF_3;
  wire din_3_IBUF_4;
  wire din_2_IBUF_5;
  wire din_1_IBUF_6;
  wire din_0_IBUF_7;
  wire clk_BUFGP_8;
  wire reset_IBUF_9;
  wire tx_start_IBUF_10;
  wire s_tick_IBUF_11;
  wire tx_reg_20;
  wire tx_done_tick_OBUF_36;
  wire GND_1_o_GND_1_o_equal_30_o;
  wire tx_next;
  wire _n0130_inv;
  wire \state_reg_FSM_FFd2-In_40 ;
  wire \state_reg_FSM_FFd1-In ;
  wire state_reg_FSM_FFd2_42;
  wire state_reg_FSM_FFd1_43;
  wire Mmux_s_next211;
  wire N3;
  wire N7;
  wire N14;
  wire N15;
  wire N16;
  wire N17;
  wire N19;
  wire N20;
  wire N21;
  wire N22;
  wire _n0112_inv_rstpot_73;
  wire n_reg_0_dpot_74;
  wire n_reg_1_dpot_75;
  wire n_reg_2_dpot_76;
  wire N25;
  wire N26;
  wire N27;
  wire N28;
  wire [7 : 0] b_next;
  wire [2 : 0] n_reg;
  wire [7 : 0] b_reg;
  wire [3 : 0] s_next;
  wire [3 : 0] s_reg;
  FDP   tx_reg (
    .C(clk_BUFGP_8),
    .D(tx_next),
    .PRE(reset_IBUF_9),
    .Q(tx_reg_20)
  );
  FDCE   b_reg_0 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[0]),
    .Q(b_reg[0])
  );
  FDCE   b_reg_1 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[1]),
    .Q(b_reg[1])
  );
  FDCE   b_reg_2 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[2]),
    .Q(b_reg[2])
  );
  FDCE   b_reg_3 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[3]),
    .Q(b_reg[3])
  );
  FDCE   b_reg_4 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[4]),
    .Q(b_reg[4])
  );
  FDCE   b_reg_5 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[5]),
    .Q(b_reg[5])
  );
  FDCE   b_reg_6 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[6]),
    .Q(b_reg[6])
  );
  FDCE   b_reg_7 (
    .C(clk_BUFGP_8),
    .CE(_n0130_inv),
    .CLR(reset_IBUF_9),
    .D(b_next[7]),
    .Q(b_reg[7])
  );
  FDC   s_reg_0 (
    .C(clk_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(s_next[0]),
    .Q(s_reg[0])
  );
  FDC   s_reg_1 (
    .C(clk_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(s_next[1]),
    .Q(s_reg[1])
  );
  FDC   s_reg_2 (
    .C(clk_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(s_next[2]),
    .Q(s_reg[2])
  );
  FDC   s_reg_3 (
    .C(clk_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(s_next[3]),
    .Q(s_reg[3])
  );
  FDCE   n_reg_0 (
    .C(clk_BUFGP_8),
    .CE(GND_1_o_GND_1_o_equal_30_o),
    .CLR(reset_IBUF_9),
    .D(n_reg_0_dpot_74),
    .Q(n_reg[0])
  );
  FDCE   n_reg_1 (
    .C(clk_BUFGP_8),
    .CE(GND_1_o_GND_1_o_equal_30_o),
    .CLR(reset_IBUF_9),
    .D(n_reg_1_dpot_75),
    .Q(n_reg[1])
  );
  FDCE   n_reg_2 (
    .C(clk_BUFGP_8),
    .CE(GND_1_o_GND_1_o_equal_30_o),
    .CLR(reset_IBUF_9),
    .D(n_reg_2_dpot_76),
    .Q(n_reg[2])
  );
  FDC   state_reg_FSM_FFd2 (
    .C(clk_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\state_reg_FSM_FFd2-In_40 ),
    .Q(state_reg_FSM_FFd2_42)
  );
  FDC   state_reg_FSM_FFd1 (
    .C(clk_BUFGP_8),
    .CLR(reset_IBUF_9),
    .D(\state_reg_FSM_FFd1-In ),
    .Q(state_reg_FSM_FFd1_43)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \GND_1_o_GND_1_o_equal_30_o<3>1  (
    .I0(s_reg[3]),
    .I1(s_reg[2]),
    .I2(s_reg[1]),
    .I3(s_reg[0]),
    .O(GND_1_o_GND_1_o_equal_30_o)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_b_next81 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_7_IBUF_0),
    .O(b_next[7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_b_next71 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_6_IBUF_1),
    .I2(b_reg[7]),
    .O(b_next[6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_b_next61 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_5_IBUF_2),
    .I2(b_reg[6]),
    .O(b_next[5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_b_next51 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_4_IBUF_3),
    .I2(b_reg[5]),
    .O(b_next[4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_b_next41 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_3_IBUF_4),
    .I2(b_reg[4]),
    .O(b_next[3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_b_next31 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_2_IBUF_5),
    .I2(b_reg[3]),
    .O(b_next[2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_b_next21 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_1_IBUF_6),
    .I2(b_reg[2]),
    .O(b_next[1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  Mmux_b_next11 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(din_0_IBUF_7),
    .I2(b_reg[1]),
    .O(b_next[0])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  Mmux_tx_done_tick11 (
    .I0(s_tick_IBUF_11),
    .I1(GND_1_o_GND_1_o_equal_30_o),
    .I2(state_reg_FSM_FFd1_43),
    .I3(state_reg_FSM_FFd2_42),
    .O(tx_done_tick_OBUF_36)
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  tx_next1 (
    .I0(state_reg_FSM_FFd2_42),
    .I1(b_reg[0]),
    .I2(state_reg_FSM_FFd1_43),
    .O(tx_next)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  Mmux_s_next2111 (
    .I0(state_reg_FSM_FFd2_42),
    .I1(state_reg_FSM_FFd1_43),
    .O(Mmux_s_next211)
  );
  LUT5 #(
    .INIT ( 32'h98101010 ))
  _n0130_inv1 (
    .I0(state_reg_FSM_FFd1_43),
    .I1(state_reg_FSM_FFd2_42),
    .I2(tx_start_IBUF_10),
    .I3(s_tick_IBUF_11),
    .I4(GND_1_o_GND_1_o_equal_30_o),
    .O(_n0130_inv)
  );
  LUT4 #(
    .INIT ( 16'hEA2A ))
  \state_reg_FSM_FFd1-In1  (
    .I0(state_reg_FSM_FFd1_43),
    .I1(GND_1_o_GND_1_o_equal_30_o),
    .I2(s_tick_IBUF_11),
    .I3(state_reg_FSM_FFd2_42),
    .O(\state_reg_FSM_FFd1-In )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \state_reg_FSM_FFd2-In_SW0  (
    .I0(n_reg[1]),
    .I1(n_reg[0]),
    .I2(s_tick_IBUF_11),
    .O(N3)
  );
  LUT6 #(
    .INIT ( 64'h30FAF0FAF0FAF0FA ))
  \state_reg_FSM_FFd2-In  (
    .I0(tx_start_IBUF_10),
    .I1(n_reg[2]),
    .I2(state_reg_FSM_FFd2_42),
    .I3(state_reg_FSM_FFd1_43),
    .I4(N3),
    .I5(GND_1_o_GND_1_o_equal_30_o),
    .O(\state_reg_FSM_FFd2-In_40 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Mmux_s_next4_SW0 (
    .I0(s_reg[2]),
    .I1(s_reg[1]),
    .I2(s_reg[0]),
    .O(N7)
  );
  IBUF   din_7_IBUF (
    .I(din[7]),
    .O(din_7_IBUF_0)
  );
  IBUF   din_6_IBUF (
    .I(din[6]),
    .O(din_6_IBUF_1)
  );
  IBUF   din_5_IBUF (
    .I(din[5]),
    .O(din_5_IBUF_2)
  );
  IBUF   din_4_IBUF (
    .I(din[4]),
    .O(din_4_IBUF_3)
  );
  IBUF   din_3_IBUF (
    .I(din[3]),
    .O(din_3_IBUF_4)
  );
  IBUF   din_2_IBUF (
    .I(din[2]),
    .O(din_2_IBUF_5)
  );
  IBUF   din_1_IBUF (
    .I(din[1]),
    .O(din_1_IBUF_6)
  );
  IBUF   din_0_IBUF (
    .I(din[0]),
    .O(din_0_IBUF_7)
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_9)
  );
  IBUF   tx_start_IBUF (
    .I(tx_start),
    .O(tx_start_IBUF_10)
  );
  IBUF   s_tick_IBUF (
    .I(s_tick),
    .O(s_tick_IBUF_11)
  );
  OBUF   tx_done_tick_OBUF (
    .I(tx_done_tick_OBUF_36),
    .O(tx_done_tick)
  );
  OBUF   tx_OBUF (
    .I(tx_reg_20),
    .O(tx)
  );
  LUT6 #(
    .INIT ( 64'h66E066EA6660666A ))
  Mmux_s_next11 (
    .I0(s_reg[0]),
    .I1(s_tick_IBUF_11),
    .I2(state_reg_FSM_FFd1_43),
    .I3(state_reg_FSM_FFd2_42),
    .I4(tx_start_IBUF_10),
    .I5(GND_1_o_GND_1_o_equal_30_o),
    .O(s_next[0])
  );
  LUT5 #(
    .INIT ( 32'hABA8FFFF ))
  Mmux_s_next211_SW0 (
    .I0(s_tick_IBUF_11),
    .I1(state_reg_FSM_FFd1_43),
    .I2(state_reg_FSM_FFd2_42),
    .I3(tx_start_IBUF_10),
    .I4(s_reg[2]),
    .O(N14)
  );
  LUT5 #(
    .INIT ( 32'hCF0FCFAF ))
  Mmux_s_next211_SW2 (
    .I0(tx_start_IBUF_10),
    .I1(s_tick_IBUF_11),
    .I2(s_reg[2]),
    .I3(state_reg_FSM_FFd2_42),
    .I4(state_reg_FSM_FFd1_43),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'h101CD0DC131FD3DF ))
  Mmux_s_next31 (
    .I0(N16),
    .I1(Mmux_s_next211),
    .I2(GND_1_o_GND_1_o_equal_30_o),
    .I3(N15),
    .I4(N17),
    .I5(N14),
    .O(s_next[2])
  );
  MUXF7   Mmux_s_next211_SW1 (
    .I0(N19),
    .I1(N20),
    .S(s_reg[2]),
    .O(N15)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  Mmux_s_next211_SW1_F (
    .I0(s_reg[1]),
    .I1(s_reg[0]),
    .I2(s_tick_IBUF_11),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'hC000C000C000A222 ))
  Mmux_s_next211_SW1_G (
    .I0(tx_start_IBUF_10),
    .I1(s_tick_IBUF_11),
    .I2(s_reg[1]),
    .I3(s_reg[0]),
    .I4(state_reg_FSM_FFd2_42),
    .I5(state_reg_FSM_FFd1_43),
    .O(N20)
  );
  MUXF7   Mmux_s_next211_SW3 (
    .I0(N21),
    .I1(N22),
    .S(s_reg[2]),
    .O(N17)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  Mmux_s_next211_SW3_F (
    .I0(s_reg[1]),
    .I1(s_reg[0]),
    .I2(s_tick_IBUF_11),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'hA0000000A000C444 ))
  Mmux_s_next211_SW3_G (
    .I0(s_tick_IBUF_11),
    .I1(tx_start_IBUF_10),
    .I2(s_reg[1]),
    .I3(s_reg[0]),
    .I4(state_reg_FSM_FFd2_42),
    .I5(state_reg_FSM_FFd1_43),
    .O(N22)
  );
  LUT4 #(
    .INIT ( 16'h48AA ))
  n_reg_1_dpot (
    .I0(n_reg[1]),
    .I1(state_reg_FSM_FFd1_43),
    .I2(n_reg[0]),
    .I3(_n0112_inv_rstpot_73),
    .O(n_reg_1_dpot_75)
  );
  LUT5 #(
    .INIT ( 32'h4888AAAA ))
  n_reg_2_dpot (
    .I0(n_reg[2]),
    .I1(state_reg_FSM_FFd1_43),
    .I2(n_reg[1]),
    .I3(n_reg[0]),
    .I4(_n0112_inv_rstpot_73),
    .O(n_reg_2_dpot_76)
  );
  LUT6 #(
    .INIT ( 64'h0888888888888888 ))
  _n0112_inv_rstpot (
    .I0(state_reg_FSM_FFd2_42),
    .I1(s_tick_IBUF_11),
    .I2(n_reg[2]),
    .I3(n_reg[1]),
    .I4(n_reg[0]),
    .I5(state_reg_FSM_FFd1_43),
    .O(_n0112_inv_rstpot_73)
  );
  LUT6 #(
    .INIT ( 64'hEA2A6A2A6A2A6A2A ))
  n_reg_0_dpot (
    .I0(n_reg[0]),
    .I1(state_reg_FSM_FFd2_42),
    .I2(s_tick_IBUF_11),
    .I3(state_reg_FSM_FFd1_43),
    .I4(n_reg[2]),
    .I5(n_reg[1]),
    .O(n_reg_0_dpot_74)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_8)
  );
  MUXF7   Mmux_s_next22 (
    .I0(N25),
    .I1(N26),
    .S(state_reg_FSM_FFd1_43),
    .O(s_next[1])
  );
  LUT5 #(
    .INIT ( 32'h28886CCC ))
  Mmux_s_next22_F (
    .I0(state_reg_FSM_FFd2_42),
    .I1(s_reg[1]),
    .I2(s_tick_IBUF_11),
    .I3(s_reg[0]),
    .I4(tx_start_IBUF_10),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'h6666E666AAAAAAAA ))
  Mmux_s_next22_G (
    .I0(s_reg[1]),
    .I1(s_tick_IBUF_11),
    .I2(s_reg[2]),
    .I3(s_reg[3]),
    .I4(state_reg_FSM_FFd2_42),
    .I5(s_reg[0]),
    .O(N26)
  );
  MUXF7   Mmux_s_next4 (
    .I0(N27),
    .I1(N28),
    .S(N7),
    .O(s_next[3])
  );
  LUT6 #(
    .INIT ( 64'h2AAA08882AAA2AAA ))
  Mmux_s_next4_F (
    .I0(s_reg[3]),
    .I1(state_reg_FSM_FFd2_42),
    .I2(s_tick_IBUF_11),
    .I3(GND_1_o_GND_1_o_equal_30_o),
    .I4(state_reg_FSM_FFd1_43),
    .I5(tx_start_IBUF_10),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h20542256A8A8AAAA ))
  Mmux_s_next4_G (
    .I0(s_reg[3]),
    .I1(state_reg_FSM_FFd2_42),
    .I2(state_reg_FSM_FFd1_43),
    .I3(GND_1_o_GND_1_o_equal_30_o),
    .I4(tx_start_IBUF_10),
    .I5(s_tick_IBUF_11),
    .O(N28)
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

