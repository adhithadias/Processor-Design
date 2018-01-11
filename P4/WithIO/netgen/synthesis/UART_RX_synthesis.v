////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: UART_RX_synthesis.v
// /___/   /\     Timestamp: Mon Apr 24 11:02:06 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim UART_RX.ngc UART_RX_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: UART_RX.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Project2\Start\netgen\synthesis\UART_RX_synthesis.v
// # of Modules	: 1
// Design Name	: UART_RX
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

module UART_RX (
  clk, reset, rx, s_tick, rx_done_tick, dout
);
  input clk;
  input reset;
  input rx;
  input s_tick;
  output rx_done_tick;
  output [7 : 0] dout;
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire rx_IBUF_2;
  wire s_tick_IBUF_3;
  wire rx_done_tick_OBUF_19;
  wire \state_reg_FSM_FFd2-In ;
  wire \state_reg_FSM_FFd1-In ;
  wire state_reg_FSM_FFd2_22;
  wire state_reg_FSM_FFd1_23;
  wire Mmux_s_next41;
  wire _n0121_inv11;
  wire N01;
  wire N2;
  wire _n0121_inv1_cepot_45;
  wire n_reg_0_dpot_46;
  wire n_reg_1_dpot_47;
  wire n_reg_2_dpot_48;
  wire b_reg_0_rstpot_49;
  wire b_reg_1_rstpot_50;
  wire b_reg_2_rstpot_51;
  wire b_reg_3_rstpot_52;
  wire b_reg_4_rstpot_53;
  wire b_reg_5_rstpot_54;
  wire b_reg_6_rstpot_55;
  wire b_reg_7_rstpot_56;
  wire N4;
  wire N5;
  wire [2 : 0] n_reg;
  wire [7 : 0] b_reg;
  wire [3 : 0] s_next;
  wire [3 : 0] s_reg;
  FDC   s_reg_0 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(s_next[0]),
    .Q(s_reg[0])
  );
  FDC   s_reg_1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(s_next[1]),
    .Q(s_reg[1])
  );
  FDC   s_reg_2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(s_next[2]),
    .Q(s_reg[2])
  );
  FDC   s_reg_3 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(s_next[3]),
    .Q(s_reg[3])
  );
  FDCE   n_reg_0 (
    .C(clk_BUFGP_0),
    .CE(_n0121_inv1_cepot_45),
    .CLR(reset_IBUF_1),
    .D(n_reg_0_dpot_46),
    .Q(n_reg[0])
  );
  FDCE   n_reg_1 (
    .C(clk_BUFGP_0),
    .CE(_n0121_inv1_cepot_45),
    .CLR(reset_IBUF_1),
    .D(n_reg_1_dpot_47),
    .Q(n_reg[1])
  );
  FDCE   n_reg_2 (
    .C(clk_BUFGP_0),
    .CE(_n0121_inv1_cepot_45),
    .CLR(reset_IBUF_1),
    .D(n_reg_2_dpot_48),
    .Q(n_reg[2])
  );
  FDC   state_reg_FSM_FFd2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\state_reg_FSM_FFd2-In ),
    .Q(state_reg_FSM_FFd2_22)
  );
  FDC   state_reg_FSM_FFd1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(\state_reg_FSM_FFd1-In ),
    .Q(state_reg_FSM_FFd1_23)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  _n0121_inv111 (
    .I0(n_reg[2]),
    .I1(n_reg[0]),
    .I2(n_reg[1]),
    .O(_n0121_inv11)
  );
  LUT6 #(
    .INIT ( 64'hFF05FF05FF053F05 ))
  \state_reg_FSM_FFd2-In1  (
    .I0(rx_IBUF_2),
    .I1(s_reg[3]),
    .I2(state_reg_FSM_FFd1_23),
    .I3(state_reg_FSM_FFd2_22),
    .I4(_n0121_inv11),
    .I5(Mmux_s_next41),
    .O(\state_reg_FSM_FFd2-In )
  );
  LUT5 #(
    .INIT ( 32'hAAA87720 ))
  Mmux_s_next42 (
    .I0(s_reg[3]),
    .I1(state_reg_FSM_FFd2_22),
    .I2(rx_IBUF_2),
    .I3(state_reg_FSM_FFd1_23),
    .I4(Mmux_s_next41),
    .O(s_next[3])
  );
  LUT4 #(
    .INIT ( 16'hF0D4 ))
  \state_reg_FSM_FFd1-In1  (
    .I0(s_reg[3]),
    .I1(state_reg_FSM_FFd2_22),
    .I2(state_reg_FSM_FFd1_23),
    .I3(Mmux_s_next41),
    .O(\state_reg_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  Mmux_s_next411 (
    .I0(s_tick_IBUF_3),
    .I1(s_reg[2]),
    .I2(s_reg[1]),
    .I3(s_reg[0]),
    .O(Mmux_s_next41)
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  Mmux_rx_done_tick11 (
    .I0(Mmux_s_next41),
    .I1(state_reg_FSM_FFd1_23),
    .I2(state_reg_FSM_FFd2_22),
    .I3(s_reg[3]),
    .O(rx_done_tick_OBUF_19)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Mmux_s_next3_SW0 (
    .I0(s_tick_IBUF_3),
    .I1(s_reg[0]),
    .I2(s_reg[1]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h33F33388CCCCCC88 ))
  Mmux_s_next3 (
    .I0(rx_IBUF_2),
    .I1(s_reg[2]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(N01),
    .O(s_next[2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Mmux_s_next1_SW0 (
    .I0(s_reg[2]),
    .I1(s_reg[1]),
    .I2(s_reg[3]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h3CFC3CA03C3C3CA0 ))
  Mmux_s_next1 (
    .I0(rx_IBUF_2),
    .I1(s_tick_IBUF_3),
    .I2(s_reg[0]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(N2),
    .O(s_next[0])
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   rx_IBUF (
    .I(rx),
    .O(rx_IBUF_2)
  );
  IBUF   s_tick_IBUF (
    .I(s_tick),
    .O(s_tick_IBUF_3)
  );
  OBUF   dout_7_OBUF (
    .I(b_reg[7]),
    .O(dout[7])
  );
  OBUF   dout_6_OBUF (
    .I(b_reg[6]),
    .O(dout[6])
  );
  OBUF   dout_5_OBUF (
    .I(b_reg[5]),
    .O(dout[5])
  );
  OBUF   dout_4_OBUF (
    .I(b_reg[4]),
    .O(dout[4])
  );
  OBUF   dout_3_OBUF (
    .I(b_reg[3]),
    .O(dout[3])
  );
  OBUF   dout_2_OBUF (
    .I(b_reg[2]),
    .O(dout[2])
  );
  OBUF   dout_1_OBUF (
    .I(b_reg[1]),
    .O(dout[1])
  );
  OBUF   dout_0_OBUF (
    .I(b_reg[0]),
    .O(dout[0])
  );
  OBUF   rx_done_tick_OBUF (
    .I(rx_done_tick_OBUF_19),
    .O(rx_done_tick)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  _n0121_inv1_cepot (
    .I0(s_tick_IBUF_3),
    .I1(s_reg[2]),
    .I2(s_reg[1]),
    .I3(s_reg[0]),
    .O(_n0121_inv1_cepot_45)
  );
  FDC   b_reg_0 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_0_rstpot_49),
    .Q(b_reg[0])
  );
  FDC   b_reg_1 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_1_rstpot_50),
    .Q(b_reg[1])
  );
  FDC   b_reg_2 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_2_rstpot_51),
    .Q(b_reg[2])
  );
  FDC   b_reg_3 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_3_rstpot_52),
    .Q(b_reg[3])
  );
  FDC   b_reg_4 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_4_rstpot_53),
    .Q(b_reg[4])
  );
  FDC   b_reg_5 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_5_rstpot_54),
    .Q(b_reg[5])
  );
  FDC   b_reg_6 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_6_rstpot_55),
    .Q(b_reg[6])
  );
  FDC   b_reg_7 (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(b_reg_7_rstpot_56),
    .Q(b_reg[7])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAACAAAAAAA ))
  b_reg_0_rstpot (
    .I0(b_reg[0]),
    .I1(b_reg[1]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_0_rstpot_49)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCACCCCCCC ))
  b_reg_1_rstpot (
    .I0(b_reg[2]),
    .I1(b_reg[1]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_1_rstpot_50)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCACCCCCCC ))
  b_reg_2_rstpot (
    .I0(b_reg[3]),
    .I1(b_reg[2]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_2_rstpot_51)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCACCCCCCC ))
  b_reg_3_rstpot (
    .I0(b_reg[4]),
    .I1(b_reg[3]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_3_rstpot_52)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCACCCCCCC ))
  b_reg_4_rstpot (
    .I0(b_reg[5]),
    .I1(b_reg[4]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_4_rstpot_53)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCACCCCCCC ))
  b_reg_5_rstpot (
    .I0(b_reg[6]),
    .I1(b_reg[5]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_5_rstpot_54)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCACCCCCCC ))
  b_reg_6_rstpot (
    .I0(b_reg[7]),
    .I1(b_reg[6]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_6_rstpot_55)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCACCCCCCC ))
  b_reg_7_rstpot (
    .I0(rx_IBUF_2),
    .I1(b_reg[7]),
    .I2(s_reg[3]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(state_reg_FSM_FFd1_23),
    .I5(Mmux_s_next41),
    .O(b_reg_7_rstpot_56)
  );
  LUT6 #(
    .INIT ( 64'hEAA2AAA2AAA2AAA2 ))
  n_reg_2_dpot (
    .I0(n_reg[2]),
    .I1(state_reg_FSM_FFd2_22),
    .I2(state_reg_FSM_FFd1_23),
    .I3(s_reg[3]),
    .I4(n_reg[0]),
    .I5(n_reg[1]),
    .O(n_reg_2_dpot_48)
  );
  LUT6 #(
    .INIT ( 64'hEA886A88AAAAAAAA ))
  n_reg_1_dpot (
    .I0(n_reg[1]),
    .I1(state_reg_FSM_FFd1_23),
    .I2(n_reg[0]),
    .I3(s_reg[3]),
    .I4(n_reg[2]),
    .I5(state_reg_FSM_FFd2_22),
    .O(n_reg_1_dpot_47)
  );
  LUT6 #(
    .INIT ( 64'hE8686868AAAAAAAA ))
  n_reg_0_dpot (
    .I0(n_reg[0]),
    .I1(state_reg_FSM_FFd1_23),
    .I2(s_reg[3]),
    .I3(n_reg[1]),
    .I4(n_reg[2]),
    .I5(state_reg_FSM_FFd2_22),
    .O(n_reg_0_dpot_46)
  );
  MUXF7   Mmux_s_next23 (
    .I0(N4),
    .I1(N5),
    .S(state_reg_FSM_FFd1_23),
    .O(s_next[1])
  );
  LUT5 #(
    .INIT ( 32'h6CCC2888 ))
  Mmux_s_next23_F (
    .I0(state_reg_FSM_FFd2_22),
    .I1(s_reg[1]),
    .I2(s_reg[0]),
    .I3(s_tick_IBUF_3),
    .I4(rx_IBUF_2),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h6AEA6A6A6A6A6A6A ))
  Mmux_s_next23_G (
    .I0(s_reg[1]),
    .I1(s_tick_IBUF_3),
    .I2(s_reg[0]),
    .I3(state_reg_FSM_FFd2_22),
    .I4(s_reg[3]),
    .I5(s_reg[2]),
    .O(N5)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
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

