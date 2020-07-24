


module gpio_to_fifo
(
    input wire clk,
    input wire rst,

	input wire [31:0] emio_gpio_i,

	
	output wire rst_pl,
	
	//Output to FIFO
	input wire instr_fifo_full,
	output wire [31:0] instr_fifo_dout,
	output reg instr_fifo_wr_en,
	
	input wire pulse_fifo_full,
	output wire [31:0] pulse_fifo_dout,
	output reg pulse_fifo_wr_en
	
);

localparam [7:0] rst_bit = 3, i_write_bit = 2, i_sclk_bit = 0, i_sdata_bit = 1, p_write_bit = 4, p_sclk_bit = 5, p_sdata_bit = 6;

//Shift register for FIFO input
shift_register sr0(clk, emio_gpio_i[i_sclk_bit], rst, emio_gpio_i[i_sdata_bit], instr_fifo_dout);
shift_register sr1(clk, emio_gpio_i[p_sclk_bit], rst, emio_gpio_i[p_sdata_bit], pulse_fifo_dout);

assign rst_pl = emio_gpio_i[rst_bit];

reg state_i;
always @ (posedge clk or negedge rst) begin

    if(!rst) begin
        state_i <= 0;
    end
    else begin

        if(state_i == 0 && emio_gpio_i[i_write_bit]) begin
            state_i <= 1;
            instr_fifo_wr_en <= 1;
        end
        
        else if (state_i == 1) begin
        
            instr_fifo_wr_en <= 0;
            if(!emio_gpio_i[i_write_bit]) begin
                state_i <= 0;
            end
        
        end
    end

end

reg state_p;
always @ (posedge clk or negedge rst) begin

    if(!rst) begin
        state_p <= 0;
    end
    else begin

        if(state_p == 0 && emio_gpio_i[p_write_bit]) begin
            state_p <= 1;
            pulse_fifo_wr_en <= 1;
        end
        
        else if (state_p == 1) begin
        
            pulse_fifo_wr_en <= 0;
            if(!emio_gpio_i[p_write_bit]) begin
                state_p <= 0;
            end
        
        end
    end

end





endmodule