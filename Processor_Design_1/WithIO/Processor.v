`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:08:46 04/16/2017 
// Design Name: 
// Module Name:    Processor 
//
//
//////////////////////////////////////////////////////////////////////////////////
module Processor(enable, clk, data_in, DRAM_addr, DRAM_data_write, write, IROM_ins_fetch, IROM_addr, finish);


	input clk;
	input enable;
	
	// Declaration of inputs to and outputs from the processor regards with the Data Memory
	input [7:0] data_in;
	output [23:0] DRAM_addr;
	output [7:0] DRAM_data_write;
	output write;
	
	// Declaration of inputs to and outputs from the processor regards with the Instruction Memory
	input [7:0] IROM_ins_fetch;
	output [8:0] IROM_addr;
		
	output finish;
	
	wire Z_flag;
	wire [30:0] MIR;
	wire [7:0] mbru, mdr;
	wire [8:0] pc;
	wire [23:0] C_bus, B_bus, A_bus, r1, r2, r3, r4, r;
	//wire [7:0] dram_data_in, ins_in;
	
	assign write = MIR[5];
	assign IROM_addr = pc;
	assign DRAM_data_write = mdr;
	assign finish = MIR[22];

	// Instantiate the modules
	MAR MAR_reg 	(	.clk(clk), .load(MIR[16]), .C_bus(C_bus), .data_addr(DRAM_addr)	);
	MDR MDR_reg 	(	.clk(clk), .load(MIR[15]), .read(MIR[6]), .C_bus(C_bus[7:0]), .data_in(data_in), .data_out(mdr)	);		 
	PC PC_reg 		(	.clk(clk), .enable(enable), .load(MIR[14]), .inc(MIR[4]), .C_bus(C_bus[8:0]), .ins_addr(pc)	);		 
	MBRU MBRU_reg 	(	.clk(clk), .fetch(MIR[7]), .ins_in(IROM_ins_fetch), .ins_out(mbru)	);

	GPR R1_reg 		(	.clk(clk), .load(MIR[13]), .C_bus(C_bus), .d_out(r1)	);
	GPR R2_reg 		(	.clk(clk), .load(MIR[12]), .C_bus(C_bus), .d_out(r2)	);
	GPR R3_reg 		(	.clk(clk), .load(MIR[11]), .C_bus(C_bus), .d_out(r3)	);
	GPR R4_reg 		(	.clk(clk), .load(MIR[10]), .C_bus(C_bus), .d_out(r4)	);
	GPR R_reg 		(	.clk(clk), .load(MIR[9]), .C_bus(C_bus), .d_out(r)	);
	GPR AC_reg 		(	.clk(clk), .load(MIR[8]), .C_bus(C_bus), .d_out(A_bus)	);
	
	decoder decoder_4to16 	(	.b_control(MIR[3:0]), .MDR(mdr), .PC(pc), .MBRU(mbru), .R1(r1), .R2(r2), .R3(r3), .R4(r4), .R(r), .B_bus(B_bus)	);
	
	microProcessor controlStore 	(	.clk(clk), .enable(enable), .Z_flag(Z_flag), .addr_sel(MIR[21]), .JUMP(MIR[22]), .addr(MIR[30:23]), .MBRU(mbru), .MIR(MIR)	);

	ALU ALU_24bit 				(	.A_bus(A_bus), .B_bus(B_bus), .oper(MIR[20:17]), .C_bus(C_bus), .Z_flag(Z_flag)	);

endmodule
