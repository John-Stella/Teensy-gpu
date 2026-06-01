`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: John Stella
// 
// Create Date: 05/22/2026 10:13:20 PM
// Design Name: 
// Module Name: reg_file
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

module reg_file (
    input clk,
    input rst,
    
    input logic [REG_ADDR_WIDTH-1:0] rs_a1, // source register address 1
    input logic [REG_ADDR_WIDTH-1:0] rs_a2, // source register address 2
    output logic [DATA_WIDTH-1:0] rd1,      // return data 1
    output logic [DATA_WIDTH-1:0] rd2,      // return data 2
    
    input logic we,                         // write enable
    
    input logic [REG_ADDR_WIDTH-1:0] wa,    // write address (aka source register addr)
    input logic [DATA_WIDTH-1:0] wd         // write data
    );
    
    logic [DATA_WIDTH-1:0] regs [REG_COUNT];
    
    assign rd1 = regs[rs_a1];
    assign rd2 = regs[rs_a2];
    
    integer i;
    always_ff @(posedge clk) begin
        if (rst) begin 
            for(i=0; i < REG_COUNT; i++) begin
                regs[i] <= '0;
            end
        end else if (we && wa != '0) begin
            regs[wa] <= wd;
        end
    end
    
endmodule
