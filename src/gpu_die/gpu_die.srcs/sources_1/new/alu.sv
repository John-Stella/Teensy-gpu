`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: John Stella
// 
// Create Date: 05/22/2026 09:06:56 PM
// Design Name: 
// Module Name: alu
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


module alu #(
    parameter int width = 8
) (
    input   logic   [3:0]       op_code,
    input   logic   [width-1:0] a,
    input   logic   [width-1:0] b,
    output  logic   [width-1:0] result
);

    always_comb begin
        unique case (op_code)
            4'h1   : result = a + b; // ADD
            4'h2   : result = a - b; // SUB
            4'h3   : result = a & b; // AND
            4'h4   : result = a | b; // OR
            4'h5   : result = a ^ b; // XOR
            default: result = '0;
        endcase
    end

endmodule