`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2026 09:41:10 PM
// Design Name: 
// Module Name: pc
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

module pc(
    input logic clk,
    input logic rst,
    
    output logic pc
    );
    
    logic [$clog2(DEPTH)-1:0] current_count;
    
    always_ff @(posedge clk) begin 
        if (rst) begin
            current_count <= '0;
        end else begin
            current_count <= current_count + 1;
        end
    end
    
    assign pc = current_count;
    
endmodule
