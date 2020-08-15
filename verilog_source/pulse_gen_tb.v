


module pulse_gen_tb();


reg clk, rst;

reg instr_fifo_empty;
reg [31:0] instr_fifo_data;
wire instr_fifo_read;

reg pulse_fifo_empty;
reg [31:0] pulse_fifo_data;
wire pulse_fifo_read;

wire [255:0] m_axis_tdata;
wire m_axis_tvalid;
reg m_axis_tready;

wire [7:0] state_out;

pulse_gen dut
(
	clk, rst,//Clock from RFSoC module

	//Input from FIFO
	instr_fifo_empty,
	instr_fifo_data,
	instr_fifo_read,
	
    pulse_fifo_empty,
	pulse_fifo_data,
	pulse_fifo_read,
	
	
	//output to RFSoC module
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,

	state_out	
);


initial begin

	clk = 0;
	rst = 1;
	
	instr_fifo_empty = 1;
	instr_fifo_data = {8'h05, 8'h00, 16'h000A};//Send the sync and stream command with 10 sync pulses, 5 dead pulses
	
	pulse_fifo_empty = 0;
	pulse_fifo_data = 0;
	
	m_axis_tready = 1;
	
	//Reset the sysme
	repeat(10) clk_cycle();
	rst = 0;
	repeat(10) clk_cycle();
	rst = 1;
	
	//Send the command
	repeat(20) clk_cycle();
	instr_fifo_empty = 0;
	repeat(5) clk_cycle();
	instr_fifo_empty = 1;
	
	while(1) begin
	
		clk_cycle();
		
		if(pulse_fifo_read == 1'b1) begin
			repeat(2) clk_cycle();
			pulse_fifo_data = pulse_fifo_data + 1;
			if(pulse_fifo_data[3:0] == 4'h0) begin
				pulse_fifo_data[23:8] = pulse_fifo_data[23:8] + 1;
			end			
		end
	
	end
	


end

task clk_cycle();
begin

	#1
	clk = 1;
	#1 
	clk = 0;

end
endtask





endmodule