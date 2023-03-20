/* WHAT'S THIS HEADERFILE FOR? */
/*
 * Reffered to code written by PanZiyue, TA of 2020_CO 
 * Macro for opcode/func3 for RV32I
 * declaration, inputs/outputs, assignment for debug signals(RegFile)
*/

/* ALU Operation(Using in Lab1) */
`define ALU_OP_WIDTH  4

`define ALU_OP_ADD      `ALU_OP_WIDTH'd0
`define ALU_OP_SUB      `ALU_OP_WIDTH'd1
`define ALU_OP_SLL      `ALU_OP_WIDTH'd2
`define ALU_OP_SLT      `ALU_OP_WIDTH'd3
`define ALU_OP_SLTU     `ALU_OP_WIDTH'd4
`define ALU_OP_XOR      `ALU_OP_WIDTH'd5
`define ALU_OP_SRL      `ALU_OP_WIDTH'd6
`define ALU_OP_SRA      `ALU_OP_WIDTH'd7
`define ALU_OP_OR       `ALU_OP_WIDTH'd8
`define ALU_OP_AND      `ALU_OP_WIDTH'd9

/*-----------------------------------*/

/* Inst decoding(Using in Lab4/5) */
/* Opcode(5-bits) */
// R-Type
`define OPCODE_ALU      5'b01100
// I-Type
`define OPCODE_ALU_IMM  5'b00100
`define OPCODE_LOAD     5'b00000
`define OPCODE_JALR     5'b11001
`define OPCODE_ENV      5'b11100
// S-Type
`define OPCODE_STORE    5'b01000
// B-Type
`define OPCODE_BRANCH   5'b11000
// J-Type
`define OPCODE_JAL      5'b11011
// U-Type
`define OPCODE_LUI      5'b01101
`define OPCODE_AUIPC    5'b00101

/* Func3(3-bits) */
// R-Type & I-Type(ALU)
// For R-Type, SUB if inst[30] else ADD
`define FUNC_ADD        3'd0
// Shift Left (Logical)
`define FUNC_SL         3'd1
`define FUNC_SLT        3'd2
`define FUNC_SLTU       3'd3
`define FUNC_XOR        3'd4
// Shift Right Arith if inst[30] else Logical
`define FUNC_SR         3'd5
`define FUNC_OR         3'd6
`define FUNC_AND        3'd7

// I-Type(Load) & S-Type
`define FUNC_BYTE       3'd0
`define FUNC_HALF       3'd1
`define FUNC_WORD       3'd2
`define FUNC_BYTE_UNSIGNED 3'd4
`define FUNC_HALF_UNSIGNED 3'd5

// B-Type
`define FUNC_EQ         3'd0
`define FUNC_NE         3'd1
`define FUNC_LT         3'd4
`define FUNC_GE         3'd5
`define FUNC_LTU        3'd6
`define FUNC_GEU        3'd7
/*-----------------------------------*/

/*----------------------------*/
/******* generated code *******/
/*----------------------------*/

/* RegFiles Ports & debug signals */
/* NOTE:
 * AFTER you change "..." in macro YOUR_REGS to the name of your reg-array in module Regs, such as regs,
 * you need to *uncomment* the line "`define YOUR_REGS regs" below for using this set of macros
*/
// `define YOUR_REGS ...
`ifdef YOUR_REGS

`define RegFile_Regs_Outputs \
    output [31:0] Reg00, \
    output [31:0] Reg01, \
    output [31:0] Reg02, \
    output [31:0] Reg03, \
    output [31:0] Reg04, \
    output [31:0] Reg05, \
    output [31:0] Reg06, \
    output [31:0] Reg07, \
    output [31:0] Reg08, \
    output [31:0] Reg09, \
    output [31:0] Reg10, \
    output [31:0] Reg11, \
    output [31:0] Reg12, \
    output [31:0] Reg13, \
    output [31:0] Reg14, \
    output [31:0] Reg15, \
    output [31:0] Reg16, \
    output [31:0] Reg17, \
    output [31:0] Reg18, \
    output [31:0] Reg19, \
    output [31:0] Reg20, \
    output [31:0] Reg21, \
    output [31:0] Reg22, \
    output [31:0] Reg23, \
    output [31:0] Reg24, \
    output [31:0] Reg25, \
    output [31:0] Reg26, \
    output [31:0] Reg27, \
    output [31:0] Reg28, \
    output [31:0] Reg29, \
    output [31:0] Reg30, \
    output [31:0] Reg31,
 
`define RegFile_Regs_Assignments \
    assign Reg00 = `YOUR_REGS[0]; \
    assign Reg01 = `YOUR_REGS[1]; \
    assign Reg02 = `YOUR_REGS[2]; \
    assign Reg03 = `YOUR_REGS[3]; \
    assign Reg04 = `YOUR_REGS[4]; \
    assign Reg05 = `YOUR_REGS[5]; \
    assign Reg06 = `YOUR_REGS[6]; \
    assign Reg07 = `YOUR_REGS[7]; \
    assign Reg08 = `YOUR_REGS[8]; \
    assign Reg09 = `YOUR_REGS[9]; \
    assign Reg10 = `YOUR_REGS[10]; \
    assign Reg11 = `YOUR_REGS[11]; \
    assign Reg12 = `YOUR_REGS[12]; \
    assign Reg13 = `YOUR_REGS[13]; \
    assign Reg14 = `YOUR_REGS[14]; \
    assign Reg15 = `YOUR_REGS[15]; \
    assign Reg16 = `YOUR_REGS[16]; \
    assign Reg17 = `YOUR_REGS[17]; \
    assign Reg18 = `YOUR_REGS[18]; \
    assign Reg19 = `YOUR_REGS[19]; \
    assign Reg20 = `YOUR_REGS[20]; \
    assign Reg21 = `YOUR_REGS[21]; \
    assign Reg22 = `YOUR_REGS[22]; \
    assign Reg23 = `YOUR_REGS[23]; \
    assign Reg24 = `YOUR_REGS[24]; \
    assign Reg25 = `YOUR_REGS[25]; \
    assign Reg26 = `YOUR_REGS[26]; \
    assign Reg27 = `YOUR_REGS[27]; \
    assign Reg28 = `YOUR_REGS[28]; \
    assign Reg29 = `YOUR_REGS[29]; \
    assign Reg30 = `YOUR_REGS[30]; \
    assign Reg31 = `YOUR_REGS[31];

`define RegFile_Regs_Arguments \
    .Reg00(Reg00), \
    .Reg01(Reg01), \
    .Reg02(Reg02), \
    .Reg03(Reg03), \
    .Reg04(Reg04), \
    .Reg05(Reg05), \
    .Reg06(Reg06), \
    .Reg07(Reg07), \
    .Reg08(Reg08), \
    .Reg09(Reg09), \
    .Reg10(Reg10), \
    .Reg11(Reg11), \
    .Reg12(Reg12), \
    .Reg13(Reg13), \
    .Reg14(Reg14), \
    .Reg15(Reg15), \
    .Reg16(Reg16), \
    .Reg17(Reg17), \
    .Reg18(Reg18), \
    .Reg19(Reg19), \
    .Reg20(Reg20), \
    .Reg21(Reg21), \
    .Reg22(Reg22), \
    .Reg23(Reg23), \
    .Reg24(Reg24), \
    .Reg25(Reg25), \
    .Reg26(Reg26), \
    .Reg27(Reg27), \
    .Reg28(Reg28), \
    .Reg29(Reg29), \
    .Reg30(Reg30), \
    .Reg31(Reg31),

`define RegFile_Regs_Declaration \
    wire [31:0] Reg00; \
    wire [31:0] Reg01; \
    wire [31:0] Reg02; \
    wire [31:0] Reg03; \
    wire [31:0] Reg04; \
    wire [31:0] Reg05; \
    wire [31:0] Reg06; \
    wire [31:0] Reg07; \
    wire [31:0] Reg08; \
    wire [31:0] Reg09; \
    wire [31:0] Reg10; \
    wire [31:0] Reg11; \
    wire [31:0] Reg12; \
    wire [31:0] Reg13; \
    wire [31:0] Reg14; \
    wire [31:0] Reg15; \
    wire [31:0] Reg16; \
    wire [31:0] Reg17; \
    wire [31:0] Reg18; \
    wire [31:0] Reg19; \
    wire [31:0] Reg20; \
    wire [31:0] Reg21; \
    wire [31:0] Reg22; \
    wire [31:0] Reg23; \
    wire [31:0] Reg24; \
    wire [31:0] Reg25; \
    wire [31:0] Reg26; \
    wire [31:0] Reg27; \
    wire [31:0] Reg28; \
    wire [31:0] Reg29; \
    wire [31:0] Reg30; \
    wire [31:0] Reg31;

`define VGA_RegFile_Inputs \
    input [31:0] Reg00, \
    input [31:0] Reg01, \
    input [31:0] Reg02, \
    input [31:0] Reg03, \
    input [31:0] Reg04, \
    input [31:0] Reg05, \
    input [31:0] Reg06, \
    input [31:0] Reg07, \
    input [31:0] Reg08, \
    input [31:0] Reg09, \
    input [31:0] Reg10, \
    input [31:0] Reg11, \
    input [31:0] Reg12, \
    input [31:0] Reg13, \
    input [31:0] Reg14, \
    input [31:0] Reg15, \
    input [31:0] Reg16, \
    input [31:0] Reg17, \
    input [31:0] Reg18, \
    input [31:0] Reg19, \
    input [31:0] Reg20, \
    input [31:0] Reg21, \
    input [31:0] Reg22, \
    input [31:0] Reg23, \
    input [31:0] Reg24, \
    input [31:0] Reg25, \
    input [31:0] Reg26, \
    input [31:0] Reg27, \
    input [31:0] Reg28, \
    input [31:0] Reg29, \
    input [31:0] Reg30, \
    input [31:0] Reg31,

`define VGA_RegFile_Arguments \
    .x0 (Reg00), \
    .ra (Reg01), \
    .sp (Reg02), \
    .gp (Reg03), \
    .tp (Reg04), \
    .t0 (Reg05), \
    .t1 (Reg06), \
    .t2 (Reg07), \
    .s0 (Reg08), \
    .s1 (Reg09), \
    .a0 (Reg10), \
    .a1 (Reg11), \
    .a2 (Reg12), \
    .a3 (Reg13), \
    .a4 (Reg14), \
    .a5 (Reg15), \
    .a6 (Reg16), \
    .a7 (Reg17), \
    .s2 (Reg18), \
    .s3 (Reg19), \
    .s4 (Reg20), \
    .s5 (Reg21), \
    .s6 (Reg22), \
    .s7 (Reg23), \
    .s8 (Reg24), \
    .s9 (Reg25), \
    .s10(Reg26), \
    .s11(Reg27), \
    .t3 (Reg28), \
    .t4 (Reg29), \
    .t5 (Reg30), \
    .t6 (Reg31),

`endif // YOUR_REGS