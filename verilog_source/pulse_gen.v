

//This pulse generator reads out requested pulses from FIFO and outputs them to the RFSoC IP module over AXIS


//FIFO bytes are decoded as follows

//3: command
//2: coarse high
//1: coarse low
//0: fine

//For setting period, 2, 1, and 0 are clock period

module pulse_gen
(
	input wire clk, rst//Clock from RFSoC module

	//Input from FIFO
	input wire fifo_empty,
	input wire [31:0] fifo_data,
	output reg fifo_read,
	
	
	//output to RFSoC module
    output wire [255:0] m_axis_tdata,
    output wire m_axis_tvalid,
    input wire m_axis_tready 
);

//Default pulse shape
wire [255:0] default_pulse = 255'h7FFF000000000000000000000000000000000000000000000000000000000000;

//Signal for clock tick
wire clock_tick = main_clock % clock_period == 0;

//Macros for decoding fifo data
wire [7:0] FIFO_COMMAND = fifo_data[31:24];
wire [15:0] FIFO_COARSE = fifo_data[23:8];
wire [7:0] FIFO_FINE = fifo_data[7:0];

//Command definitons
localparam [7:0] command_reset_clock = 0, 
				 command_send_pulse = 1;

reg [15:0] coarse_delay;

reg rst_clock;
reg [255:0] main_clock; 
reg [23:0] clock_period;

reg [7:0] state;
localparam [7:0] state_idle  = 0, 
				 state_wait_tick = 1, 
				 state_wait_pulse = 2;

//Main state machine
always @ (posedge clk or negedge rst) begin

	if(!rst) begin

	end
	else begin

		case(state)
		
			state_idle: begin
			
				//Default state for outputs
				fifo_read <= 0;
				m_axis_tdata <= 0;
				
			
				//If we have a command waiting for us in the FIFO
				if(!fifo_empty) begin
					
					//Tell the FIFO we're reading out this entry
					fifo_read <= 1;
					
					//Determine the command to be executed
					case(FIFO_COMMAND)
					
						command_reset_clock: begin
						
							//Just strobe the rst_clock line and output a single pulse
							rst_clock <= 1;
							
							m_axis_tdata <= default_pulse;
							
						end
						
						
						command_send_pulse: begin
						
						
						
						end
						
						command_set_period: begin
						
							//Just set the clock period
							clock_period <= fifo_data[23:0];
						
						end
					
						default: begin
						
						
						end
					
					end
				
				end
			
			end
		
		
		
		endcase//State machine
	end
end

//clock state machine
always @ (posedge clk or negedge rst) begin
	if(!rst) begin
		main_clock <= 0;
	end
	else begin
		//If we need to reset the clock
		if(rst_clock) begin
			main_clock <= 0;
		end
		//Otherwise just increment the clock
		else begin
			main_clock <= main_clock + 1;
		end
	end
end



endmodule





