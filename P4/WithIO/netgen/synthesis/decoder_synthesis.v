////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: decoder_synthesis.v
// /___/   /\     Timestamp: Sun Apr 16 11:39:03 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim decoder.ngc decoder_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: decoder.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Processor\Start\netgen\synthesis\decoder_synthesis.v
// # of Modules	: 1
// Design Name	: decoder
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

module decoder (
b_control, MDR, PC, MBRU, R1, R2, R3, R4, R, B_bus
);
  input [3 : 0] b_control;
  input [7 : 0] MDR;
  input [8 : 0] PC;
  input [7 : 0] MBRU;
  input [23 : 0] R1;
  input [23 : 0] R2;
  input [23 : 0] R3;
  input [23 : 0] R4;
  input [23 : 0] R;
  output [23 : 0] B_bus;
  wire b_control_3_IBUF_0;
  wire b_control_2_IBUF_1;
  wire b_control_1_IBUF_2;
  wire b_control_0_IBUF_3;
  wire MDR_7_IBUF_4;
  wire MDR_6_IBUF_5;
  wire MDR_5_IBUF_6;
  wire MDR_4_IBUF_7;
  wire MDR_3_IBUF_8;
  wire MDR_2_IBUF_9;
  wire MDR_1_IBUF_10;
  wire MDR_0_IBUF_11;
  wire PC_8_IBUF_12;
  wire PC_7_IBUF_13;
  wire PC_6_IBUF_14;
  wire PC_5_IBUF_15;
  wire PC_4_IBUF_16;
  wire PC_3_IBUF_17;
  wire PC_2_IBUF_18;
  wire PC_1_IBUF_19;
  wire PC_0_IBUF_20;
  wire MBRU_7_IBUF_21;
  wire MBRU_6_IBUF_22;
  wire MBRU_5_IBUF_23;
  wire MBRU_4_IBUF_24;
  wire MBRU_3_IBUF_25;
  wire MBRU_2_IBUF_26;
  wire MBRU_1_IBUF_27;
  wire MBRU_0_IBUF_28;
  wire R1_23_IBUF_29;
  wire R1_22_IBUF_30;
  wire R1_21_IBUF_31;
  wire R1_20_IBUF_32;
  wire R1_19_IBUF_33;
  wire R1_18_IBUF_34;
  wire R1_17_IBUF_35;
  wire R1_16_IBUF_36;
  wire R1_15_IBUF_37;
  wire R1_14_IBUF_38;
  wire R1_13_IBUF_39;
  wire R1_12_IBUF_40;
  wire R1_11_IBUF_41;
  wire R1_10_IBUF_42;
  wire R1_9_IBUF_43;
  wire R1_8_IBUF_44;
  wire R1_7_IBUF_45;
  wire R1_6_IBUF_46;
  wire R1_5_IBUF_47;
  wire R1_4_IBUF_48;
  wire R1_3_IBUF_49;
  wire R1_2_IBUF_50;
  wire R1_1_IBUF_51;
  wire R1_0_IBUF_52;
  wire R2_23_IBUF_53;
  wire R2_22_IBUF_54;
  wire R2_21_IBUF_55;
  wire R2_20_IBUF_56;
  wire R2_19_IBUF_57;
  wire R2_18_IBUF_58;
  wire R2_17_IBUF_59;
  wire R2_16_IBUF_60;
  wire R2_15_IBUF_61;
  wire R2_14_IBUF_62;
  wire R2_13_IBUF_63;
  wire R2_12_IBUF_64;
  wire R2_11_IBUF_65;
  wire R2_10_IBUF_66;
  wire R2_9_IBUF_67;
  wire R2_8_IBUF_68;
  wire R2_7_IBUF_69;
  wire R2_6_IBUF_70;
  wire R2_5_IBUF_71;
  wire R2_4_IBUF_72;
  wire R2_3_IBUF_73;
  wire R2_2_IBUF_74;
  wire R2_1_IBUF_75;
  wire R2_0_IBUF_76;
  wire R3_23_IBUF_77;
  wire R3_22_IBUF_78;
  wire R3_21_IBUF_79;
  wire R3_20_IBUF_80;
  wire R3_19_IBUF_81;
  wire R3_18_IBUF_82;
  wire R3_17_IBUF_83;
  wire R3_16_IBUF_84;
  wire R3_15_IBUF_85;
  wire R3_14_IBUF_86;
  wire R3_13_IBUF_87;
  wire R3_12_IBUF_88;
  wire R3_11_IBUF_89;
  wire R3_10_IBUF_90;
  wire R3_9_IBUF_91;
  wire R3_8_IBUF_92;
  wire R3_7_IBUF_93;
  wire R3_6_IBUF_94;
  wire R3_5_IBUF_95;
  wire R3_4_IBUF_96;
  wire R3_3_IBUF_97;
  wire R3_2_IBUF_98;
  wire R3_1_IBUF_99;
  wire R3_0_IBUF_100;
  wire R4_23_IBUF_101;
  wire R4_22_IBUF_102;
  wire R4_21_IBUF_103;
  wire R4_20_IBUF_104;
  wire R4_19_IBUF_105;
  wire R4_18_IBUF_106;
  wire R4_17_IBUF_107;
  wire R4_16_IBUF_108;
  wire R4_15_IBUF_109;
  wire R4_14_IBUF_110;
  wire R4_13_IBUF_111;
  wire R4_12_IBUF_112;
  wire R4_11_IBUF_113;
  wire R4_10_IBUF_114;
  wire R4_9_IBUF_115;
  wire R4_8_IBUF_116;
  wire R4_7_IBUF_117;
  wire R4_6_IBUF_118;
  wire R4_5_IBUF_119;
  wire R4_4_IBUF_120;
  wire R4_3_IBUF_121;
  wire R4_2_IBUF_122;
  wire R4_1_IBUF_123;
  wire R4_0_IBUF_124;
  wire R_23_IBUF_125;
  wire R_22_IBUF_126;
  wire R_21_IBUF_127;
  wire R_20_IBUF_128;
  wire R_19_IBUF_129;
  wire R_18_IBUF_130;
  wire R_17_IBUF_131;
  wire R_16_IBUF_132;
  wire R_15_IBUF_133;
  wire R_14_IBUF_134;
  wire R_13_IBUF_135;
  wire R_12_IBUF_136;
  wire R_11_IBUF_137;
  wire R_10_IBUF_138;
  wire R_9_IBUF_139;
  wire R_8_IBUF_140;
  wire R_7_IBUF_141;
  wire R_6_IBUF_142;
  wire R_5_IBUF_143;
  wire R_4_IBUF_144;
  wire R_3_IBUF_145;
  wire R_2_IBUF_146;
  wire R_1_IBUF_147;
  wire R_0_IBUF_148;
  wire B_bus_23_OBUF_157;
  wire B_bus_22_OBUF_158;
  wire B_bus_21_OBUF_159;
  wire B_bus_20_OBUF_160;
  wire B_bus_19_OBUF_161;
  wire B_bus_18_OBUF_162;
  wire B_bus_17_OBUF_163;
  wire B_bus_16_OBUF_164;
  wire B_bus_15_OBUF_165;
  wire B_bus_14_OBUF_166;
  wire B_bus_13_OBUF_167;
  wire B_bus_12_OBUF_168;
  wire B_bus_11_OBUF_169;
  wire B_bus_10_OBUF_170;
  wire B_bus_9_OBUF_171;
  wire B_bus_8_OBUF_172;
  wire B_bus_7_OBUF_173;
  wire B_bus_6_OBUF_174;
  wire B_bus_5_OBUF_175;
  wire B_bus_4_OBUF_176;
  wire B_bus_3_OBUF_177;
  wire B_bus_2_OBUF_178;
  wire B_bus_1_OBUF_179;
  wire B_bus_0_OBUF_180;
  wire Mmux__n0040_47_181;
  wire Mmux__n0040_37_182;
  wire Mmux__n0040_46_183;
  wire Mmux__n0040_36_184;
  wire Mmux__n0040_45_185;
  wire Mmux__n0040_35_186;
  wire Mmux__n0040_44_187;
  wire Mmux__n0040_34_188;
  wire Mmux__n0040_43_189;
  wire Mmux__n0040_33_190;
  wire Mmux__n0040_42_191;
  wire Mmux__n0040_32_192;
  wire Mmux__n0040_41_193;
  wire Mmux__n0040_31_194;
  wire Mmux__n0040_4_195;
  wire Mmux__n0040_3_196;
  wire Mmux_B_bus10;
  wire Mmux_B_bus11;
  wire Mmux_B_bus13;
  wire Mmux_B_bus14;
  wire Mmux_B_bus15;
  wire Mmux_B_bus16;
  wire Mmux_B_bus2;
  wire Mmux_B_bus24;
  wire Mmux_B_bus3;
  wire Mmux_B_bus4;
  wire Mmux_B_bus5;
  wire Mmux_B_bus6;
  wire Mmux_B_bus7;
  wire Mmux_B_bus8;
  wire Mmux_B_bus9;
  wire N2;
  wire N3;
  wire [24 : 17] _n0040;
  MUXF7   Mmux__n0040_2_f7_6 (
    .I0(Mmux__n0040_47_181),
    .I1(Mmux__n0040_37_182),
    .S(b_control_2_IBUF_1),
    .O(_n0040[24])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_47 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_0_IBUF_28),
    .I3(R1_0_IBUF_52),
    .I4(PC_0_IBUF_20),
    .I5(MDR_0_IBUF_11),
    .O(Mmux__n0040_47_181)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_37 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_0_IBUF_124),
    .I3(R_0_IBUF_148),
    .I4(R3_0_IBUF_100),
    .I5(R2_0_IBUF_76),
    .O(Mmux__n0040_37_182)
  );
  MUXF7   Mmux__n0040_2_f7_5 (
    .I0(Mmux__n0040_46_183),
    .I1(Mmux__n0040_36_184),
    .S(b_control_2_IBUF_1),
    .O(_n0040[23])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_46 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_1_IBUF_27),
    .I3(R1_1_IBUF_51),
    .I4(PC_1_IBUF_19),
    .I5(MDR_1_IBUF_10),
    .O(Mmux__n0040_46_183)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_36 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_1_IBUF_123),
    .I3(R_1_IBUF_147),
    .I4(R3_1_IBUF_99),
    .I5(R2_1_IBUF_75),
    .O(Mmux__n0040_36_184)
  );
  MUXF7   Mmux__n0040_2_f7_4 (
    .I0(Mmux__n0040_45_185),
    .I1(Mmux__n0040_35_186),
    .S(b_control_2_IBUF_1),
    .O(_n0040[22])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_45 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_2_IBUF_26),
    .I3(R1_2_IBUF_50),
    .I4(PC_2_IBUF_18),
    .I5(MDR_2_IBUF_9),
    .O(Mmux__n0040_45_185)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_35 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_2_IBUF_122),
    .I3(R_2_IBUF_146),
    .I4(R3_2_IBUF_98),
    .I5(R2_2_IBUF_74),
    .O(Mmux__n0040_35_186)
  );
  MUXF7   Mmux__n0040_2_f7_3 (
    .I0(Mmux__n0040_44_187),
    .I1(Mmux__n0040_34_188),
    .S(b_control_2_IBUF_1),
    .O(_n0040[21])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_44 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_3_IBUF_25),
    .I3(R1_3_IBUF_49),
    .I4(PC_3_IBUF_17),
    .I5(MDR_3_IBUF_8),
    .O(Mmux__n0040_44_187)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_34 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_3_IBUF_121),
    .I3(R_3_IBUF_145),
    .I4(R3_3_IBUF_97),
    .I5(R2_3_IBUF_73),
    .O(Mmux__n0040_34_188)
  );
  MUXF7   Mmux__n0040_2_f7_2 (
    .I0(Mmux__n0040_43_189),
    .I1(Mmux__n0040_33_190),
    .S(b_control_2_IBUF_1),
    .O(_n0040[20])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_43 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_4_IBUF_24),
    .I3(R1_4_IBUF_48),
    .I4(PC_4_IBUF_16),
    .I5(MDR_4_IBUF_7),
    .O(Mmux__n0040_43_189)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_33 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_4_IBUF_120),
    .I3(R_4_IBUF_144),
    .I4(R3_4_IBUF_96),
    .I5(R2_4_IBUF_72),
    .O(Mmux__n0040_33_190)
  );
  MUXF7   Mmux__n0040_2_f7_1 (
    .I0(Mmux__n0040_42_191),
    .I1(Mmux__n0040_32_192),
    .S(b_control_2_IBUF_1),
    .O(_n0040[19])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_42 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_5_IBUF_23),
    .I3(R1_5_IBUF_47),
    .I4(PC_5_IBUF_15),
    .I5(MDR_5_IBUF_6),
    .O(Mmux__n0040_42_191)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_32 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_5_IBUF_119),
    .I3(R_5_IBUF_143),
    .I4(R3_5_IBUF_95),
    .I5(R2_5_IBUF_71),
    .O(Mmux__n0040_32_192)
  );
  MUXF7   Mmux__n0040_2_f7_0 (
    .I0(Mmux__n0040_41_193),
    .I1(Mmux__n0040_31_194),
    .S(b_control_2_IBUF_1),
    .O(_n0040[18])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_41 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_6_IBUF_22),
    .I3(R1_6_IBUF_46),
    .I4(PC_6_IBUF_14),
    .I5(MDR_6_IBUF_5),
    .O(Mmux__n0040_41_193)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_31 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_6_IBUF_118),
    .I3(R_6_IBUF_142),
    .I4(R3_6_IBUF_94),
    .I5(R2_6_IBUF_70),
    .O(Mmux__n0040_31_194)
  );
  MUXF7   Mmux__n0040_2_f7 (
    .I0(Mmux__n0040_4_195),
    .I1(Mmux__n0040_3_196),
    .S(b_control_2_IBUF_1),
    .O(_n0040[17])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_4 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(MBRU_7_IBUF_21),
    .I3(R1_7_IBUF_45),
    .I4(PC_7_IBUF_13),
    .I5(MDR_7_IBUF_4),
    .O(Mmux__n0040_4_195)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux__n0040_3 (
    .I0(b_control_1_IBUF_2),
    .I1(b_control_0_IBUF_3),
    .I2(R4_7_IBUF_117),
    .I3(R_7_IBUF_141),
    .I4(R3_7_IBUF_93),
    .I5(R2_7_IBUF_69),
    .O(Mmux__n0040_3_196)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus221 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[17]),
    .O(B_bus_7_OBUF_173)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus211 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[18]),
    .O(B_bus_6_OBUF_174)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus201 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[19]),
    .O(B_bus_5_OBUF_175)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus191 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[20]),
    .O(B_bus_4_OBUF_176)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus181 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[21]),
    .O(B_bus_3_OBUF_177)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus171 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[22]),
    .O(B_bus_2_OBUF_178)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus121 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[23]),
    .O(B_bus_1_OBUF_179)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  Mmux_B_bus12 (
    .I0(b_control_3_IBUF_0),
    .I1(_n0040[24]),
    .O(B_bus_0_OBUF_180)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus101 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_18_IBUF_82),
    .I3(R_18_IBUF_130),
    .I4(R4_18_IBUF_106),
    .I5(R2_18_IBUF_58),
    .O(Mmux_B_bus10)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus102 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_18_IBUF_34),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus10),
    .O(B_bus_18_OBUF_162)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus111 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_19_IBUF_81),
    .I3(R_19_IBUF_129),
    .I4(R4_19_IBUF_105),
    .I5(R2_19_IBUF_57),
    .O(Mmux_B_bus11)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus112 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_19_IBUF_33),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus11),
    .O(B_bus_19_OBUF_161)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus131 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_20_IBUF_80),
    .I3(R_20_IBUF_128),
    .I4(R4_20_IBUF_104),
    .I5(R2_20_IBUF_56),
    .O(Mmux_B_bus13)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus132 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_20_IBUF_32),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus13),
    .O(B_bus_20_OBUF_160)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus141 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_21_IBUF_79),
    .I3(R_21_IBUF_127),
    .I4(R4_21_IBUF_103),
    .I5(R2_21_IBUF_55),
    .O(Mmux_B_bus14)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus142 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_21_IBUF_31),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus14),
    .O(B_bus_21_OBUF_159)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus151 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_22_IBUF_78),
    .I3(R_22_IBUF_126),
    .I4(R4_22_IBUF_102),
    .I5(R2_22_IBUF_54),
    .O(Mmux_B_bus15)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus152 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_22_IBUF_30),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus15),
    .O(B_bus_22_OBUF_158)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus161 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_23_IBUF_77),
    .I3(R_23_IBUF_125),
    .I4(R4_23_IBUF_101),
    .I5(R2_23_IBUF_53),
    .O(Mmux_B_bus16)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus162 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_23_IBUF_29),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus16),
    .O(B_bus_23_OBUF_157)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus21 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_10_IBUF_90),
    .I3(R_10_IBUF_138),
    .I4(R4_10_IBUF_114),
    .I5(R2_10_IBUF_66),
    .O(Mmux_B_bus2)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus22 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_10_IBUF_42),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus2),
    .O(B_bus_10_OBUF_170)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus241 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_9_IBUF_91),
    .I3(R_9_IBUF_139),
    .I4(R4_9_IBUF_115),
    .I5(R2_9_IBUF_67),
    .O(Mmux_B_bus24)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus242 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_9_IBUF_43),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus24),
    .O(B_bus_9_OBUF_171)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus31 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_11_IBUF_89),
    .I3(R_11_IBUF_137),
    .I4(R4_11_IBUF_113),
    .I5(R2_11_IBUF_65),
    .O(Mmux_B_bus3)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus32 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_11_IBUF_41),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus3),
    .O(B_bus_11_OBUF_169)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus41 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_12_IBUF_88),
    .I3(R_12_IBUF_136),
    .I4(R4_12_IBUF_112),
    .I5(R2_12_IBUF_64),
    .O(Mmux_B_bus4)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus42 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_12_IBUF_40),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus4),
    .O(B_bus_12_OBUF_168)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus51 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_13_IBUF_87),
    .I3(R_13_IBUF_135),
    .I4(R4_13_IBUF_111),
    .I5(R2_13_IBUF_63),
    .O(Mmux_B_bus5)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus52 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_13_IBUF_39),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus5),
    .O(B_bus_13_OBUF_167)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus61 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_14_IBUF_86),
    .I3(R_14_IBUF_134),
    .I4(R4_14_IBUF_110),
    .I5(R2_14_IBUF_62),
    .O(Mmux_B_bus6)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus62 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_14_IBUF_38),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus6),
    .O(B_bus_14_OBUF_166)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus71 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_15_IBUF_85),
    .I3(R_15_IBUF_133),
    .I4(R4_15_IBUF_109),
    .I5(R2_15_IBUF_61),
    .O(Mmux_B_bus7)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus72 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_15_IBUF_37),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus7),
    .O(B_bus_15_OBUF_165)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus81 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_16_IBUF_84),
    .I3(R_16_IBUF_132),
    .I4(R4_16_IBUF_108),
    .I5(R2_16_IBUF_60),
    .O(Mmux_B_bus8)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus82 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_16_IBUF_36),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus8),
    .O(B_bus_16_OBUF_164)
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  Mmux_B_bus91 (
    .I0(b_control_0_IBUF_3),
    .I1(b_control_1_IBUF_2),
    .I2(R3_17_IBUF_83),
    .I3(R_17_IBUF_131),
    .I4(R4_17_IBUF_107),
    .I5(R2_17_IBUF_59),
    .O(Mmux_B_bus9)
  );
  LUT6 #(
    .INIT ( 64'h5444444410000000 ))
  Mmux_B_bus92 (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_1_IBUF_2),
    .I3(R1_17_IBUF_35),
    .I4(b_control_0_IBUF_3),
    .I5(Mmux_B_bus9),
    .O(B_bus_17_OBUF_163)
  );
  IBUF   b_control_3_IBUF (
    .I(b_control[3]),
    .O(b_control_3_IBUF_0)
  );
  IBUF   b_control_2_IBUF (
    .I(b_control[2]),
    .O(b_control_2_IBUF_1)
  );
  IBUF   b_control_1_IBUF (
    .I(b_control[1]),
    .O(b_control_1_IBUF_2)
  );
  IBUF   b_control_0_IBUF (
    .I(b_control[0]),
    .O(b_control_0_IBUF_3)
  );
  IBUF   MDR_7_IBUF (
    .I(MDR[7]),
    .O(MDR_7_IBUF_4)
  );
  IBUF   MDR_6_IBUF (
    .I(MDR[6]),
    .O(MDR_6_IBUF_5)
  );
  IBUF   MDR_5_IBUF (
    .I(MDR[5]),
    .O(MDR_5_IBUF_6)
  );
  IBUF   MDR_4_IBUF (
    .I(MDR[4]),
    .O(MDR_4_IBUF_7)
  );
  IBUF   MDR_3_IBUF (
    .I(MDR[3]),
    .O(MDR_3_IBUF_8)
  );
  IBUF   MDR_2_IBUF (
    .I(MDR[2]),
    .O(MDR_2_IBUF_9)
  );
  IBUF   MDR_1_IBUF (
    .I(MDR[1]),
    .O(MDR_1_IBUF_10)
  );
  IBUF   MDR_0_IBUF (
    .I(MDR[0]),
    .O(MDR_0_IBUF_11)
  );
  IBUF   PC_8_IBUF (
    .I(PC[8]),
    .O(PC_8_IBUF_12)
  );
  IBUF   PC_7_IBUF (
    .I(PC[7]),
    .O(PC_7_IBUF_13)
  );
  IBUF   PC_6_IBUF (
    .I(PC[6]),
    .O(PC_6_IBUF_14)
  );
  IBUF   PC_5_IBUF (
    .I(PC[5]),
    .O(PC_5_IBUF_15)
  );
  IBUF   PC_4_IBUF (
    .I(PC[4]),
    .O(PC_4_IBUF_16)
  );
  IBUF   PC_3_IBUF (
    .I(PC[3]),
    .O(PC_3_IBUF_17)
  );
  IBUF   PC_2_IBUF (
    .I(PC[2]),
    .O(PC_2_IBUF_18)
  );
  IBUF   PC_1_IBUF (
    .I(PC[1]),
    .O(PC_1_IBUF_19)
  );
  IBUF   PC_0_IBUF (
    .I(PC[0]),
    .O(PC_0_IBUF_20)
  );
  IBUF   MBRU_7_IBUF (
    .I(MBRU[7]),
    .O(MBRU_7_IBUF_21)
  );
  IBUF   MBRU_6_IBUF (
    .I(MBRU[6]),
    .O(MBRU_6_IBUF_22)
  );
  IBUF   MBRU_5_IBUF (
    .I(MBRU[5]),
    .O(MBRU_5_IBUF_23)
  );
  IBUF   MBRU_4_IBUF (
    .I(MBRU[4]),
    .O(MBRU_4_IBUF_24)
  );
  IBUF   MBRU_3_IBUF (
    .I(MBRU[3]),
    .O(MBRU_3_IBUF_25)
  );
  IBUF   MBRU_2_IBUF (
    .I(MBRU[2]),
    .O(MBRU_2_IBUF_26)
  );
  IBUF   MBRU_1_IBUF (
    .I(MBRU[1]),
    .O(MBRU_1_IBUF_27)
  );
  IBUF   MBRU_0_IBUF (
    .I(MBRU[0]),
    .O(MBRU_0_IBUF_28)
  );
  IBUF   R1_23_IBUF (
    .I(R1[23]),
    .O(R1_23_IBUF_29)
  );
  IBUF   R1_22_IBUF (
    .I(R1[22]),
    .O(R1_22_IBUF_30)
  );
  IBUF   R1_21_IBUF (
    .I(R1[21]),
    .O(R1_21_IBUF_31)
  );
  IBUF   R1_20_IBUF (
    .I(R1[20]),
    .O(R1_20_IBUF_32)
  );
  IBUF   R1_19_IBUF (
    .I(R1[19]),
    .O(R1_19_IBUF_33)
  );
  IBUF   R1_18_IBUF (
    .I(R1[18]),
    .O(R1_18_IBUF_34)
  );
  IBUF   R1_17_IBUF (
    .I(R1[17]),
    .O(R1_17_IBUF_35)
  );
  IBUF   R1_16_IBUF (
    .I(R1[16]),
    .O(R1_16_IBUF_36)
  );
  IBUF   R1_15_IBUF (
    .I(R1[15]),
    .O(R1_15_IBUF_37)
  );
  IBUF   R1_14_IBUF (
    .I(R1[14]),
    .O(R1_14_IBUF_38)
  );
  IBUF   R1_13_IBUF (
    .I(R1[13]),
    .O(R1_13_IBUF_39)
  );
  IBUF   R1_12_IBUF (
    .I(R1[12]),
    .O(R1_12_IBUF_40)
  );
  IBUF   R1_11_IBUF (
    .I(R1[11]),
    .O(R1_11_IBUF_41)
  );
  IBUF   R1_10_IBUF (
    .I(R1[10]),
    .O(R1_10_IBUF_42)
  );
  IBUF   R1_9_IBUF (
    .I(R1[9]),
    .O(R1_9_IBUF_43)
  );
  IBUF   R1_8_IBUF (
    .I(R1[8]),
    .O(R1_8_IBUF_44)
  );
  IBUF   R1_7_IBUF (
    .I(R1[7]),
    .O(R1_7_IBUF_45)
  );
  IBUF   R1_6_IBUF (
    .I(R1[6]),
    .O(R1_6_IBUF_46)
  );
  IBUF   R1_5_IBUF (
    .I(R1[5]),
    .O(R1_5_IBUF_47)
  );
  IBUF   R1_4_IBUF (
    .I(R1[4]),
    .O(R1_4_IBUF_48)
  );
  IBUF   R1_3_IBUF (
    .I(R1[3]),
    .O(R1_3_IBUF_49)
  );
  IBUF   R1_2_IBUF (
    .I(R1[2]),
    .O(R1_2_IBUF_50)
  );
  IBUF   R1_1_IBUF (
    .I(R1[1]),
    .O(R1_1_IBUF_51)
  );
  IBUF   R1_0_IBUF (
    .I(R1[0]),
    .O(R1_0_IBUF_52)
  );
  IBUF   R2_23_IBUF (
    .I(R2[23]),
    .O(R2_23_IBUF_53)
  );
  IBUF   R2_22_IBUF (
    .I(R2[22]),
    .O(R2_22_IBUF_54)
  );
  IBUF   R2_21_IBUF (
    .I(R2[21]),
    .O(R2_21_IBUF_55)
  );
  IBUF   R2_20_IBUF (
    .I(R2[20]),
    .O(R2_20_IBUF_56)
  );
  IBUF   R2_19_IBUF (
    .I(R2[19]),
    .O(R2_19_IBUF_57)
  );
  IBUF   R2_18_IBUF (
    .I(R2[18]),
    .O(R2_18_IBUF_58)
  );
  IBUF   R2_17_IBUF (
    .I(R2[17]),
    .O(R2_17_IBUF_59)
  );
  IBUF   R2_16_IBUF (
    .I(R2[16]),
    .O(R2_16_IBUF_60)
  );
  IBUF   R2_15_IBUF (
    .I(R2[15]),
    .O(R2_15_IBUF_61)
  );
  IBUF   R2_14_IBUF (
    .I(R2[14]),
    .O(R2_14_IBUF_62)
  );
  IBUF   R2_13_IBUF (
    .I(R2[13]),
    .O(R2_13_IBUF_63)
  );
  IBUF   R2_12_IBUF (
    .I(R2[12]),
    .O(R2_12_IBUF_64)
  );
  IBUF   R2_11_IBUF (
    .I(R2[11]),
    .O(R2_11_IBUF_65)
  );
  IBUF   R2_10_IBUF (
    .I(R2[10]),
    .O(R2_10_IBUF_66)
  );
  IBUF   R2_9_IBUF (
    .I(R2[9]),
    .O(R2_9_IBUF_67)
  );
  IBUF   R2_8_IBUF (
    .I(R2[8]),
    .O(R2_8_IBUF_68)
  );
  IBUF   R2_7_IBUF (
    .I(R2[7]),
    .O(R2_7_IBUF_69)
  );
  IBUF   R2_6_IBUF (
    .I(R2[6]),
    .O(R2_6_IBUF_70)
  );
  IBUF   R2_5_IBUF (
    .I(R2[5]),
    .O(R2_5_IBUF_71)
  );
  IBUF   R2_4_IBUF (
    .I(R2[4]),
    .O(R2_4_IBUF_72)
  );
  IBUF   R2_3_IBUF (
    .I(R2[3]),
    .O(R2_3_IBUF_73)
  );
  IBUF   R2_2_IBUF (
    .I(R2[2]),
    .O(R2_2_IBUF_74)
  );
  IBUF   R2_1_IBUF (
    .I(R2[1]),
    .O(R2_1_IBUF_75)
  );
  IBUF   R2_0_IBUF (
    .I(R2[0]),
    .O(R2_0_IBUF_76)
  );
  IBUF   R3_23_IBUF (
    .I(R3[23]),
    .O(R3_23_IBUF_77)
  );
  IBUF   R3_22_IBUF (
    .I(R3[22]),
    .O(R3_22_IBUF_78)
  );
  IBUF   R3_21_IBUF (
    .I(R3[21]),
    .O(R3_21_IBUF_79)
  );
  IBUF   R3_20_IBUF (
    .I(R3[20]),
    .O(R3_20_IBUF_80)
  );
  IBUF   R3_19_IBUF (
    .I(R3[19]),
    .O(R3_19_IBUF_81)
  );
  IBUF   R3_18_IBUF (
    .I(R3[18]),
    .O(R3_18_IBUF_82)
  );
  IBUF   R3_17_IBUF (
    .I(R3[17]),
    .O(R3_17_IBUF_83)
  );
  IBUF   R3_16_IBUF (
    .I(R3[16]),
    .O(R3_16_IBUF_84)
  );
  IBUF   R3_15_IBUF (
    .I(R3[15]),
    .O(R3_15_IBUF_85)
  );
  IBUF   R3_14_IBUF (
    .I(R3[14]),
    .O(R3_14_IBUF_86)
  );
  IBUF   R3_13_IBUF (
    .I(R3[13]),
    .O(R3_13_IBUF_87)
  );
  IBUF   R3_12_IBUF (
    .I(R3[12]),
    .O(R3_12_IBUF_88)
  );
  IBUF   R3_11_IBUF (
    .I(R3[11]),
    .O(R3_11_IBUF_89)
  );
  IBUF   R3_10_IBUF (
    .I(R3[10]),
    .O(R3_10_IBUF_90)
  );
  IBUF   R3_9_IBUF (
    .I(R3[9]),
    .O(R3_9_IBUF_91)
  );
  IBUF   R3_8_IBUF (
    .I(R3[8]),
    .O(R3_8_IBUF_92)
  );
  IBUF   R3_7_IBUF (
    .I(R3[7]),
    .O(R3_7_IBUF_93)
  );
  IBUF   R3_6_IBUF (
    .I(R3[6]),
    .O(R3_6_IBUF_94)
  );
  IBUF   R3_5_IBUF (
    .I(R3[5]),
    .O(R3_5_IBUF_95)
  );
  IBUF   R3_4_IBUF (
    .I(R3[4]),
    .O(R3_4_IBUF_96)
  );
  IBUF   R3_3_IBUF (
    .I(R3[3]),
    .O(R3_3_IBUF_97)
  );
  IBUF   R3_2_IBUF (
    .I(R3[2]),
    .O(R3_2_IBUF_98)
  );
  IBUF   R3_1_IBUF (
    .I(R3[1]),
    .O(R3_1_IBUF_99)
  );
  IBUF   R3_0_IBUF (
    .I(R3[0]),
    .O(R3_0_IBUF_100)
  );
  IBUF   R4_23_IBUF (
    .I(R4[23]),
    .O(R4_23_IBUF_101)
  );
  IBUF   R4_22_IBUF (
    .I(R4[22]),
    .O(R4_22_IBUF_102)
  );
  IBUF   R4_21_IBUF (
    .I(R4[21]),
    .O(R4_21_IBUF_103)
  );
  IBUF   R4_20_IBUF (
    .I(R4[20]),
    .O(R4_20_IBUF_104)
  );
  IBUF   R4_19_IBUF (
    .I(R4[19]),
    .O(R4_19_IBUF_105)
  );
  IBUF   R4_18_IBUF (
    .I(R4[18]),
    .O(R4_18_IBUF_106)
  );
  IBUF   R4_17_IBUF (
    .I(R4[17]),
    .O(R4_17_IBUF_107)
  );
  IBUF   R4_16_IBUF (
    .I(R4[16]),
    .O(R4_16_IBUF_108)
  );
  IBUF   R4_15_IBUF (
    .I(R4[15]),
    .O(R4_15_IBUF_109)
  );
  IBUF   R4_14_IBUF (
    .I(R4[14]),
    .O(R4_14_IBUF_110)
  );
  IBUF   R4_13_IBUF (
    .I(R4[13]),
    .O(R4_13_IBUF_111)
  );
  IBUF   R4_12_IBUF (
    .I(R4[12]),
    .O(R4_12_IBUF_112)
  );
  IBUF   R4_11_IBUF (
    .I(R4[11]),
    .O(R4_11_IBUF_113)
  );
  IBUF   R4_10_IBUF (
    .I(R4[10]),
    .O(R4_10_IBUF_114)
  );
  IBUF   R4_9_IBUF (
    .I(R4[9]),
    .O(R4_9_IBUF_115)
  );
  IBUF   R4_8_IBUF (
    .I(R4[8]),
    .O(R4_8_IBUF_116)
  );
  IBUF   R4_7_IBUF (
    .I(R4[7]),
    .O(R4_7_IBUF_117)
  );
  IBUF   R4_6_IBUF (
    .I(R4[6]),
    .O(R4_6_IBUF_118)
  );
  IBUF   R4_5_IBUF (
    .I(R4[5]),
    .O(R4_5_IBUF_119)
  );
  IBUF   R4_4_IBUF (
    .I(R4[4]),
    .O(R4_4_IBUF_120)
  );
  IBUF   R4_3_IBUF (
    .I(R4[3]),
    .O(R4_3_IBUF_121)
  );
  IBUF   R4_2_IBUF (
    .I(R4[2]),
    .O(R4_2_IBUF_122)
  );
  IBUF   R4_1_IBUF (
    .I(R4[1]),
    .O(R4_1_IBUF_123)
  );
  IBUF   R4_0_IBUF (
    .I(R4[0]),
    .O(R4_0_IBUF_124)
  );
  IBUF   R_23_IBUF (
    .I(R[23]),
    .O(R_23_IBUF_125)
  );
  IBUF   R_22_IBUF (
    .I(R[22]),
    .O(R_22_IBUF_126)
  );
  IBUF   R_21_IBUF (
    .I(R[21]),
    .O(R_21_IBUF_127)
  );
  IBUF   R_20_IBUF (
    .I(R[20]),
    .O(R_20_IBUF_128)
  );
  IBUF   R_19_IBUF (
    .I(R[19]),
    .O(R_19_IBUF_129)
  );
  IBUF   R_18_IBUF (
    .I(R[18]),
    .O(R_18_IBUF_130)
  );
  IBUF   R_17_IBUF (
    .I(R[17]),
    .O(R_17_IBUF_131)
  );
  IBUF   R_16_IBUF (
    .I(R[16]),
    .O(R_16_IBUF_132)
  );
  IBUF   R_15_IBUF (
    .I(R[15]),
    .O(R_15_IBUF_133)
  );
  IBUF   R_14_IBUF (
    .I(R[14]),
    .O(R_14_IBUF_134)
  );
  IBUF   R_13_IBUF (
    .I(R[13]),
    .O(R_13_IBUF_135)
  );
  IBUF   R_12_IBUF (
    .I(R[12]),
    .O(R_12_IBUF_136)
  );
  IBUF   R_11_IBUF (
    .I(R[11]),
    .O(R_11_IBUF_137)
  );
  IBUF   R_10_IBUF (
    .I(R[10]),
    .O(R_10_IBUF_138)
  );
  IBUF   R_9_IBUF (
    .I(R[9]),
    .O(R_9_IBUF_139)
  );
  IBUF   R_8_IBUF (
    .I(R[8]),
    .O(R_8_IBUF_140)
  );
  IBUF   R_7_IBUF (
    .I(R[7]),
    .O(R_7_IBUF_141)
  );
  IBUF   R_6_IBUF (
    .I(R[6]),
    .O(R_6_IBUF_142)
  );
  IBUF   R_5_IBUF (
    .I(R[5]),
    .O(R_5_IBUF_143)
  );
  IBUF   R_4_IBUF (
    .I(R[4]),
    .O(R_4_IBUF_144)
  );
  IBUF   R_3_IBUF (
    .I(R[3]),
    .O(R_3_IBUF_145)
  );
  IBUF   R_2_IBUF (
    .I(R[2]),
    .O(R_2_IBUF_146)
  );
  IBUF   R_1_IBUF (
    .I(R[1]),
    .O(R_1_IBUF_147)
  );
  IBUF   R_0_IBUF (
    .I(R[0]),
    .O(R_0_IBUF_148)
  );
  OBUF   B_bus_23_OBUF (
    .I(B_bus_23_OBUF_157),
    .O(B_bus[23])
  );
  OBUF   B_bus_22_OBUF (
    .I(B_bus_22_OBUF_158),
    .O(B_bus[22])
  );
  OBUF   B_bus_21_OBUF (
    .I(B_bus_21_OBUF_159),
    .O(B_bus[21])
  );
  OBUF   B_bus_20_OBUF (
    .I(B_bus_20_OBUF_160),
    .O(B_bus[20])
  );
  OBUF   B_bus_19_OBUF (
    .I(B_bus_19_OBUF_161),
    .O(B_bus[19])
  );
  OBUF   B_bus_18_OBUF (
    .I(B_bus_18_OBUF_162),
    .O(B_bus[18])
  );
  OBUF   B_bus_17_OBUF (
    .I(B_bus_17_OBUF_163),
    .O(B_bus[17])
  );
  OBUF   B_bus_16_OBUF (
    .I(B_bus_16_OBUF_164),
    .O(B_bus[16])
  );
  OBUF   B_bus_15_OBUF (
    .I(B_bus_15_OBUF_165),
    .O(B_bus[15])
  );
  OBUF   B_bus_14_OBUF (
    .I(B_bus_14_OBUF_166),
    .O(B_bus[14])
  );
  OBUF   B_bus_13_OBUF (
    .I(B_bus_13_OBUF_167),
    .O(B_bus[13])
  );
  OBUF   B_bus_12_OBUF (
    .I(B_bus_12_OBUF_168),
    .O(B_bus[12])
  );
  OBUF   B_bus_11_OBUF (
    .I(B_bus_11_OBUF_169),
    .O(B_bus[11])
  );
  OBUF   B_bus_10_OBUF (
    .I(B_bus_10_OBUF_170),
    .O(B_bus[10])
  );
  OBUF   B_bus_9_OBUF (
    .I(B_bus_9_OBUF_171),
    .O(B_bus[9])
  );
  OBUF   B_bus_8_OBUF (
    .I(B_bus_8_OBUF_172),
    .O(B_bus[8])
  );
  OBUF   B_bus_7_OBUF (
    .I(B_bus_7_OBUF_173),
    .O(B_bus[7])
  );
  OBUF   B_bus_6_OBUF (
    .I(B_bus_6_OBUF_174),
    .O(B_bus[6])
  );
  OBUF   B_bus_5_OBUF (
    .I(B_bus_5_OBUF_175),
    .O(B_bus[5])
  );
  OBUF   B_bus_4_OBUF (
    .I(B_bus_4_OBUF_176),
    .O(B_bus[4])
  );
  OBUF   B_bus_3_OBUF (
    .I(B_bus_3_OBUF_177),
    .O(B_bus[3])
  );
  OBUF   B_bus_2_OBUF (
    .I(B_bus_2_OBUF_178),
    .O(B_bus[2])
  );
  OBUF   B_bus_1_OBUF (
    .I(B_bus_1_OBUF_179),
    .O(B_bus[1])
  );
  OBUF   B_bus_0_OBUF (
    .I(B_bus_0_OBUF_180),
    .O(B_bus[0])
  );
  MUXF7   Mmux_B_bus233 (
    .I0(N2),
    .I1(N3),
    .S(b_control_1_IBUF_2),
    .O(B_bus_8_OBUF_172)
  );
  LUT6 #(
    .INIT ( 64'h5450141044400400 ))
  Mmux_B_bus233_F (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_0_IBUF_3),
    .I3(R2_8_IBUF_68),
    .I4(R3_8_IBUF_92),
    .I5(PC_8_IBUF_12),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h5450141044400400 ))
  Mmux_B_bus233_G (
    .I0(b_control_3_IBUF_0),
    .I1(b_control_2_IBUF_1),
    .I2(b_control_0_IBUF_3),
    .I3(R4_8_IBUF_116),
    .I4(R_8_IBUF_140),
    .I5(R1_8_IBUF_44),
    .O(N3)
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

