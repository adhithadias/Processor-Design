`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:14 04/13/2017 
// Design Name: 
// Module Name:    CPU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CPU(
	 input clk,
    input [23:0] INSTRUCTION,
	 input [7:0] RAM_IN,
    input reset,
    output [7:0] RAM_OUT,
	 output [15:0] RAM_ADDR,
    output [23:0] PC_ADDR,
    output WRITE,
	 output FINISH
    );
	
	reg [7:0] zero = 0; 
	
	wire LOAD_REG;
	
	wire LD_AC, LD_R1, LD_R2, LD_R3, LD_R4, LD_R5, LD_R6, LD_R7, LD_MAR, LD_PC, INC_PC; // control
	
	wire [23:0] AC_OUT, R1_OUT, R2_OUT, R3_OUT, R4_OUT, R5_OUT, R6_OUT, R7_OUT;
	wire [23:0] MUX_A_OUT, MUX_B_OUT, MUX_C_OUT, B_BUS;
	
	wire [2:0] MUX_A_SEL, MUX_B_SEL; // control
	wire DMUX_A_SEL; // control
	wire [1:0] MUX_C_SEL;  // control
	wire [3:0] DMUX_B_SEL; // control
	wire [3:0] ALU_CONTROL; // control
	
	wire [23:0] ALU_OUT, IMM_IN;
	wire Z_FLAG, N_FLAG;
	
	// ** REGISTERS ** //
	
	REG24bit AC (.clk(clk), .load(LD_AC), .IN(MUX_C_OUT), .OUT(AC_OUT));
	REG24bit R1 (.clk(clk), .load(LD_R1), .IN(MUX_C_OUT), .OUT(R1_OUT));
	REG24bit R2 (.clk(clk), .load(LD_R2), .IN(MUX_C_OUT), .OUT(R2_OUT));
	REG24bit R3 (.clk(clk), .load(LD_R3), .IN(MUX_C_OUT), .OUT(R3_OUT));
	REG24bit R4 (.clk(clk), .load(LD_R4), .IN(MUX_C_OUT), .OUT(R4_OUT));
	REG24bit R5 (.clk(clk), .load(LD_R5), .IN(MUX_C_OUT), .OUT(R5_OUT));
	REG24bit R6 (.clk(clk), .load(LD_R6), .IN(MUX_C_OUT), .OUT(R6_OUT));
	REG24bit R7 (.clk(clk), .load(LD_R7), .IN(MUX_C_OUT), .OUT(R7_OUT));
	
	REG24bit MAR (.clk(clk), .load(LD_MAR), .IN(MUX_C_OUT), .OUT(RAM_ADDR));	
	PC ProgramCounter (.clk(clk), .reset(reset), .inc(INC_PC), .load(LD_PC), .IN(MUX_C_OUT), .OUT(PC_ADDR));
	
	
	// ** MUX AND DMUX ** //
	
	
	MUX8to1 MUX_A (.A(AC_OUT), .B(R1_OUT), .C(R2_OUT), .D(R3_OUT), .E(R4_OUT), .F(R5_OUT), .G(R6_OUT), .H(R7_OUT), .sel(MUX_A_SEL), .OUT(MUX_A_OUT));
	MUX8to1 MUX_B (.A(AC_OUT), .B(R1_OUT), .C(R2_OUT), .D(R3_OUT), .E(R4_OUT), .F(R5_OUT), .G(R6_OUT), .H(R7_OUT), .sel(MUX_B_SEL), .OUT(MUX_B_OUT));
	
	DMUX1to2 DMUX_A (.IN(MUX_B_OUT), .sel(DMUX_A_SEL), .A(B_BUS), .B(RAM_OUT));
	
	MUX3to1 MUX_C (.A(ALU_OUT), .B({16'b0000_0000_0000_0000, RAM_IN}), .C(IMM_IN), .sel(MUX_C_SEL), .OUT(MUX_C_OUT));	
	
	DMUX1to10 DMUX_B (.IN(LOAD_REG), .sel(DMUX_B_SEL), .A(LD_AC),	.B(LD_R1), .C(LD_R2), .D(LD_R3), .E(LD_R4), .F(LD_R5), .G(LD_R6), .H(LD_R7), .I(LD_MAR), .J(LD_PC));
	
	
	// ** ALU ** //
	
	ALU24bit ALU (.A(MUX_A_OUT), .B(B_BUS), .sel(ALU_CONTROL), .OUT(ALU_OUT), .Z(Z_FLAG), .N(N_FLAG));
	
	
	// ** DECODER ** //
	
	
	DECODER DEC (
		.clk(clk),
		.INSTRUCTION(INSTRUCTION), 
		.Z(Z_FLAG), 
		.N(N_FLAG), 
		.INC_PC(INC_PC), 
		.LOAD_REG(LOAD_REG),
		.MUX_A_SEL(MUX_A_SEL), 
		.MUX_B_SEL(MUX_B_SEL), 
		.MUX_C_SEL(MUX_C_SEL), 
		.DMUX_A_SEL(DMUX_A_SEL), 
		.DMUX_B_SEL(DMUX_B_SEL), 
		.ALU_CONTROL(ALU_CONTROL), 
		.WRITE(WRITE),
		.IMMEDIATE(IMM_IN),
		.FINISH(FINISH)
	);

endmodule
