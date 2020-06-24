


module gpio_to_fifo
(
    input wire clk,

	input wire [39:0] emio_gpio_i,

	
	output wire rst_pl,
	
	//Output to FIFO
	input wire full,
	output wire [31:0] dout,
	output reg wr_en
	
);

assign fifo_data = emio_gpio_i[31:0];


localparam [7:0] rst_bit = 32, write_bit = 33;

assign rst_pl = emio_gpio_i[rst_bit];

reg state;
always @ (posedge clk) begin

	if(state == 0 && emio_gpio_i[write_bit]) begin
		state <= 1;
		wr_en <= 1;
	end
	
	else if (state == 1) begin
	
		wr_en <= 0;
		if(!emio_gpio_i[write_bit]) begin
			state <= 0;
		end
	
	end


end




endmodule