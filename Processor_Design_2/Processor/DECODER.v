`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:57:48 04/13/2017 
// Design Name: 
// Module Name:    DECODER 
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
module DECODER(
	 input clk,
    input [23:0] INSTRUCTION,
    input Z,N,
    output reg INC_PC, LOAD_REG,
    output reg [2:0] MUX_A_SEL, MUX_B_SEL,
    output reg [1:0] MUX_C_SEL, 
	 output reg DMUX_A_SEL,
    output reg [3:0] DMUX_B_SEL,
	 output reg [3:0] ALU_CONTROL,
    output reg WRITE,
	 output reg [23:0] IMMEDIATE,
	 output reg FINISH
    );

	parameter NOP 		= 5'b00000;		// No Operation
	parameter LOAD 	= 5'b00001;		// RegA = RAM[MAR]
	parameter STORE   = 5'b00010;		// RAM[MAR] = RegA
	parameter MOVE 	= 5'b00011;		// RegA = RegB
	parameter LDMAR 	= 5'b00100;		// MAR = RegA
	parameter LDMARI 	= 5'b00101;		// MAR = signed immediate (19-bit)
	parameter LOADI 	= 5'b00110;		// RegA = signed immediate (16-bit)
	parameter LDACI 	= 5'b00111;		// AC = signed immediate (19-bit)
	
	parameter ADD 		= 5'b01000;		// RegA = RegB + RegC
	parameter SUB 		= 5'b01001;		// RegA = RegB - RegC
	parameter MUL 		= 5'b01010;		// RegA = RegB << RegC
	parameter DIV 		= 5'b01011;		// RegA = RegB >> RegC
	parameter INC 		= 5'b01100;		// RegA = RegB + 1
	parameter DEC 		= 5'b01101;		// RegA = RegB - 1
	parameter NEG 		= 5'b01110;		// RegA = -RegB
	parameter NOT 		= 5'b01111;		// RegA = !RegB
	parameter AND 		= 5'b10000;		// RegA = RegB & RegC
	parameter OR 		= 5'b10001;		// RegA = RegB | RegC
	parameter XOR 		= 5'b10010;		// RegA = RegB ^ RegC
	
	parameter JGT 		= 5'b10011;		// If ALU out > 0 then PC = Reg A else PC ? PC + 1
	parameter JEQ 		= 5'b10100;		// If ALU out = 0 then PC = Reg A else PC ? PC + 1
	parameter JGE 		= 5'b10101;		// If ALU out >= 0 then PC = Reg A else PC ? PC + 1
	parameter JLT 		= 5'b10110;		// If ALU out < 0 then PC = Reg A else PC ? PC + 1
	parameter JNE 		= 5'b10111;		// If ALU out != 0 then PC = Reg A else PC ? PC + 1
	parameter JLE 		= 5'b11000;		// If ALU out <= 0 then PC = Reg A else PC ? PC + 1
	parameter JMP 		= 5'b11001;		// PC ? Reg A (Unconditional Jump)
	
	parameter FIN		= 5'b11010;		// FINISH = 1
	
	reg [4:0] OPCODE 	= 0;
	reg [2:0] RegA		= 0;
	reg [2:0] RegB 	= 0;
	reg [2:0] RegC 	= 0;
	reg [15:0] IMM16 	= 0;
	reg [18:0] IMM19 	= 0;
	
	always @(negedge clk) begin

		// decode instruction
		OPCODE 	= INSTRUCTION[23:19];
		RegA		= INSTRUCTION[18:16];
		RegB 		= INSTRUCTION[15:13];
		RegC 		= INSTRUCTION[12:10];
		IMM16 	= INSTRUCTION[15:0];
		IMM19 	= INSTRUCTION[18:0];
		
		// set control signal to default values (0)
		INC_PC = 1; // increment PC by default
		LOAD_REG = 0;
		MUX_A_SEL = 0;
		MUX_B_SEL = 0;
		MUX_C_SEL = 0;
		DMUX_A_SEL = 0;
		DMUX_B_SEL = 0;
		ALU_CONTROL = 0;
		WRITE = 0;
		IMMEDIATE = 0;
		FINISH = 0;
		
		case(OPCODE)
			NOP: 
				begin
					INC_PC = 1; // increment pc
				end
			LOAD: 
				begin
					MUX_C_SEL = 1;	// select RAM
					DMUX_B_SEL = RegA;
					LOAD_REG = 1;
				end
			STORE: 
				begin
					MUX_B_SEL = RegA;
					DMUX_A_SEL = 1; // select RAM
					WRITE = 1;			
				end
			MOVE: 
				begin
					MUX_A_SEL = RegB;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			LDMAR: 
				begin
					MUX_A_SEL = RegA;
					DMUX_B_SEL = 8;	// select MAR
					LOAD_REG = 1;
				end
			LDMARI: 
				begin
					IMMEDIATE = IMM19;
					MUX_C_SEL = 2; // select immediate value from decoder
					DMUX_B_SEL = 8; // select MAR
					LOAD_REG = 1;
				end
			LOADI:
				begin
					IMMEDIATE = IMM16;
					MUX_C_SEL = 2; // select immediate value from decoder
					DMUX_B_SEL = RegA;
					LOAD_REG = 1;
				end
			LDACI:
				begin
					IMMEDIATE = IMM19;
					MUX_C_SEL = 2; // select immediate value from decoder
					DMUX_B_SEL = 0; // select AC
					LOAD_REG = 1;
				end
				
				
			ADD:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 1;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			SUB:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 2;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			MUL:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 3;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			DIV:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 4;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			INC:
				begin
					MUX_A_SEL = RegA;
					ALU_CONTROL = 5;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			DEC:
				begin
					MUX_A_SEL = RegA;
					ALU_CONTROL = 6;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			NEG:
				begin
					MUX_A_SEL = RegA;
					ALU_CONTROL = 7;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			NOT:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 8;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			AND:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 9;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			OR:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 10;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
			XOR:
				begin
					MUX_A_SEL = RegB;
					MUX_B_SEL = RegC;
					DMUX_A_SEL = 0;
					ALU_CONTROL = 11;
					DMUX_B_SEL = RegA;	
					LOAD_REG = 1;
				end
				
			JGT:
				begin
					if(Z==0 & N==0) begin
						IMMEDIATE = IMM19;
						MUX_C_SEL = 2; // select immediate value from decoder
						DMUX_B_SEL = 9; // select PC
						LOAD_REG = 1;
						INC_PC = 0; // do not increment PC
					end
				end
			JEQ:
				begin
					if(Z==1) begin
						IMMEDIATE = IMM19;
						MUX_C_SEL = 2; // select immediate value from decoder
						DMUX_B_SEL = 9; // select PC
						LOAD_REG = 1;
						INC_PC = 0; // do not increment PC
					end
				end
			JGE:
				begin
					if(N==0) begin
						IMMEDIATE = IMM19;
						MUX_C_SEL = 2; // select immediate value from decoder
						DMUX_B_SEL = 9; // select PC
						LOAD_REG = 1;
						INC_PC = 0; // do not increment PC
					end
				end
			JLT:
				begin
					if(Z==0 & N==1) begin
						IMMEDIATE = IMM19;
						MUX_C_SEL = 2; // select immediate value from decoder
						DMUX_B_SEL = 9; // select PC
						LOAD_REG = 1;
						INC_PC = 0; // do not increment PC
					end
				end
			JNE:
				begin
					if(Z==0) begin
						IMMEDIATE = IMM19;
						MUX_C_SEL = 2; // select immediate value from decoder
						DMUX_B_SEL = 9; // select PC
						LOAD_REG = 1;
						INC_PC = 0; // do not increment PC
					end
				end
			JLE:
				begin
					if(Z|N) begin
						IMMEDIATE = IMM19;
						MUX_C_SEL = 2; // select immediate value from decoder
						DMUX_B_SEL = 9; // select PC
						LOAD_REG = 1;
						INC_PC = 0; // do not increment PC
					end
				end
			JMP:
				begin
					IMMEDIATE = IMM19;
					MUX_C_SEL = 2; // select immediate value from decoder
					DMUX_B_SEL = 9; // select PC
					LOAD_REG = 1;
					INC_PC = 0; // do not increment PC
				end
				
			FIN:
				begin
					FINISH = 1;	
				end			 
			
		endcase
		
	end
	

endmodule
