`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: John Stella
// 
// Create Date: 05/22/2026 09:06:56 PM
// Design Name: 
// Module Name: decoder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module decoder(
    input logic [INSTR_WIDTH-1:0] instr,
    
    output logic [3:0] op_code,
    output logic [3:0] rd,
    output logic [3:0] rs1,
    output logic [3:0] rs2,
    output logic [7:0] imm
    );
    
    assign op_code = instr[23:20];
    assign rd = instr[19:16];
    assign rs1 = instr[15:12];
    assign rs2 = instr[11:8];
    assign imm = instr[7:0];
    
endmodule