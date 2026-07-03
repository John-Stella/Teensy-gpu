`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2026 09:06:56 PM
// Design Name: 
// Module Name: instr_mem
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


module instr_mem # (
  parameter string INIT_FILE = ""
) (
    input logic [$clog2(DEPTH)-1:0] addr,
    output logic [DEPTH-1:0] instr
    );
    
    logic [INSTR_WIDTH-1:0] mem [DEPTH];

    initial begin
        if (INIT_FILE != "") begin
            $readmemh(INIT_FILE, mem);
        end
    end
    
    assign instr = mem[addr];
    
endmodule
