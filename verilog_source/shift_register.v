`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2019 03:50:28 PM
// Design Name: 
// Module Name: shift_register
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


module shift_register
#(
	parameter width = 32
)
(
    input wire clk,
    input wire sclk,
    input wire reset,
    input wire data_in,
    //output wire s_data_out,
    output reg [width-1:0] data_out
);

wire [width-1:0] data_next;


reg state;
    localparam state_wait_sclk = 1'b0,
		       state_cleanup = 1'b1; 

initial begin
    //Set the registers to 0
    data_out <= 0;
    state <= state_wait_sclk;
end

always @ (posedge clk or negedge reset) begin
    if(reset == 1'b0)begin
        //Set the registers to 0
        data_out <= 0;
        state <= state_wait_sclk;
    end
    else begin
    
        case(state)
        
            state_wait_sclk: begin
                //If we need to shift in data
                if(sclk == 1'b1) begin
                    //Update our value
                    data_out <= data_next;
                    //Advance to the wait state
                    state <= state_cleanup;
                end
            end
            
            state_cleanup: begin
                //Go back to waiting for a clock edge
                if(sclk == 1'b0) begin
                    state <= state_wait_sclk;
                end
            end
            
            default: begin
                state <= state_wait_sclk;
            end
            
        endcase   
    end
end

assign data_next = {data_in, data_out[width-1:1]};

//assign s_data_out = data_out[0];

endmodule