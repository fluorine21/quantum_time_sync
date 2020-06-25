


module gpio_to_fifo
(
    input wire clk,
    input wire rst,

	input wire [31:0] emio_gpio_i,

	
	output wire rst_pl,
	
	//Output to FIFO
	input wire fifo_full,
	output wire [31:0] fifo_dout,
	output reg fifo_wr_en
	
);

localparam [7:0] rst_bit = 3, write_bit = 2, sclk_bit = 0, sdata_bit = 1;

//Shift register for FIFO input
shift_register sr0(clk, emio_gpio_i[sclk_bit], rst, emio_gpio_i[sdata_bit], fifo_dout);

assign rst_pl = emio_gpio_i[rst_bit];

reg state;
always @ (posedge clk or negedge rst) begin

    if(!rst) begin
        state <= 0;
    end
    else begin

        if(state == 0 && emio_gpio_i[write_bit]) begin
            state <= 1;
            fifo_wr_en <= 1;
        end
        
        else if (state == 1) begin
        
            fifo_wr_en <= 0;
            if(!emio_gpio_i[write_bit]) begin
                state <= 0;
            end
        
        end
    end

end




endmodule