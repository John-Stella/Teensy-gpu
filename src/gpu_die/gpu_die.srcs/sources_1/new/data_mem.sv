`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: John Stella
// 
// Create Date: 05/22/2026 09:06:56 PM
// Design Name: 
// Module Name: data_mem
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

import gpu_pkg::*;

module data_mem (
    input logic clk,
    
    input logic [$clog2(DEPTH)-1:0] addr,  // Current width 8
    input logic we,
    input logic [DATA_WIDTH-1:0] wd,
    
    output logic [DATA_WIDTH-1:0] rd    
    );
    
    logic [DATA_WIDTH-1:0] mem [DEPTH];
    
    always_ff @(posedge clk) begin
        if (we) begin 
            mem[addr] <= wd;
        end
        rd <= mem[addr];
    end
    
endmodule