`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: John Stella
// 
// Create Date: 05/22/2026 09:06:56 PM
// Design Name: 
// Module Name: compute_core
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


module compute_core(
    input logic clk,
    input logic rst,
    input logic start,
    
    output logic done
    );
    
    wire c_pc;
    wire c_instr;
    wire ALU_result;
    wire wd;
    wire scr_a;
    wire scr_b;
    
    instr_mem im_1 (.addr(c_pc), .instr(c_instr));
    
    data_mem dm_1 (.clk(clk), .addr(ALU_result), .we(), .wd(), .rd());
    
    pc pc_1 (.clk(clk), .rst(rst), .pc(c_pc));
    
    decoder dc_1 ();
    
    reg_file rf_1 ();
    
    alu alu_1();
    
endmodule