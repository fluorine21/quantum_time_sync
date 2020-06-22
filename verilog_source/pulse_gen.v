

//This pulse generator reads out requested pulses from FIFO and outputs them to the RFSoC IP module over AXIS


//FIFO bytes are decoded as follows

//3: command
//2: coarse high
//1: coarse low
//0: fine

module pulse_gen
(

	//Input from FIFO
	
	//output to RFSoC module
    output wire [255:0] m_axis_tdata,
    output wire m_axis_tvalid,
    input wire m_axis_tready 
);

reg [15:0] coarse_delay;

reg rst_clock;

//Main state machine
always @ (posedge clk or negedge rst) begin





end

//clock state machine



endmodule





