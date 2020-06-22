`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/21/2020 08:40:46 PM
// Design Name: 
// Module Name: fifo_wrapper
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


module fifo_wrapper(
    
    output wire rd_en, wr_en,
    input wire full, empty
    
    );
    
    assign rd_en = 1'b1;
    assign wr_en = 1'b1;
    
endmodule
