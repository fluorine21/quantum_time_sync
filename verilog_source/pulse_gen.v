

//This pulse generator reads out requested pulses from FIFO and outputs them to the RFSoC IP module over AXIS


//FIFO bytes are decoded as follows

//3: command
//2: coarse high
//1: coarse low
//0: fine

//For setting period, 2, 1, and 0 are clock period

module pulse_gen
(
	input wire clk, rst,//Clock from RFSoC module

	//Input from FIFO
	input wire fifo_empty,
	input wire [31:0] fifo_data,
	output reg fifo_read,
	
	
	//output to RFSoC module
    output wire [255:0] m_axis_tdata,
    output wire m_axis_tvalid,
    input wire m_axis_tready,

output wire [7:0] state_out	
);


reg [255:0] m_axis_tdata_int;

assign m_axis_tvalid = 1;

assign m_axis_tdata = is_phase_meas_mode ? (clock_tick ? default_pulse : 0) : m_axis_tdata_int;

//Default pulse shape
wire [255:0] default_pulse = 256'h7FFF000000000000000000000000000000000000000000000000000000000000;

//Signal for clock tick
//wire clock_tick = main_clock[23:0] & clock_period == 0;//Only powers of 2
//wire clock_tick = main_clock % clock_period == 0;
wire clock_tick = main_clock == 0;

//Macros for decoding fifo data
wire [7:0] FIFO_COMMAND = fifo_data[31:24];
wire [15:0] FIFO_COARSE = fifo_data[23:8];
wire [7:0] FIFO_FINE = fifo_data[7:0];

//Command definitons
localparam [7:0] command_reset_clock = 0, 
				 command_send_pulse = 1,
				 command_set_period = 2,
				 command_set_phase_meas_mode = 3,
				 command_reset_phase_meas_mode = 4,
				 command_toggle_phase_meas_mode = 5;

reg [15:0] coarse_delay;
reg [7:0] fine_delay;

reg rst_clock;
reg [45:0] main_clock; 
reg [23:0] clock_period;

reg [15:0] pulses_to_send;//Used for toggling phase measurement mode

reg [7:0] state;
assign state_out = state;
localparam [7:0] state_idle  = 0,
				 state_rst_read = 1,
				 state_read = 2,
				 state_wait_tick = 3, 
				 state_wait_pulse = 4,
				 state_toggle_end = 5;
				 
reg is_phase_meas_mode;//if 1, then pulse is emitted at each clock tick
				 
task reset_regs();
begin

    coarse_delay <= 0;
    fine_delay <= 0;
    rst_clock <= 0;
    clock_period <= 10;
    state <= state_idle;
    fifo_read <= 0;
    m_axis_tdata_int <= 0;
	is_phase_meas_mode <= 0;
	pulses_to_send <= 0;

end
endtask

//Main state machine
always @ (posedge clk or negedge rst) begin

	if(!rst) begin
        reset_regs();
	end
	else begin

		case(state)
		
			state_idle: begin
			
				//Default state for outputs
				fifo_read <= 0;
				m_axis_tdata_int <= 0;
				rst_clock <= 0;
				
				//If there is data in the fifo
				if(!fifo_empty) begin
				
					//Tell the FIFO we're reading out this entry
					fifo_read <= 1;
					
					//Go to the read state
					state <= state_rst_read;
				
				end
		
			end
			
			state_rst_read: begin
				fifo_read <= 0;
				state <= state_read;
			end
		
			state_read: begin
		
				//Determine the command to be executed
				case(FIFO_COMMAND)
				
					command_reset_clock: begin
					
						//Just strobe the rst_clock line and output a single pulse
						rst_clock <= 1;
						
						m_axis_tdata_int <= default_pulse;
						
						state <= state_idle;
						
					end
					
					
					command_send_pulse: begin
					
						  //Save the parameters
						  coarse_delay <= FIFO_COARSE;
						  fine_delay <= FIFO_FINE;
						  state <= state_wait_tick;
					
					end
					
					command_set_period: begin
					
						//Just set the clock period
						clock_period <= fifo_data[23:0];
						
						state <= state_idle;
					
					end
					
					command_set_phase_meas_mode: begin
						is_phase_meas_mode <= 1;
						state <= state_idle;
					end
					
					command_reset_phase_meas_mode: begin
						is_phase_meas_mode <= 0;
						state <= state_idle;
					end
					
					command_toggle_phase_meas_mode: begin
						pulses_to_send <= fifo_data[15:0];
						is_phase_meas_mode <= 1;
						state <= state_toggle_end;
					end
				
					default begin
					
						  state <= state_idle;
					
					end
				
				endcase
				
			
			end
			
			
			state_toggle_end: begin
			
				if(pulses_to_send == 0) begin
					is_phase_meas_mode <= 0;
					state <= state_idle;
				end
				else if(clock_tick) begin
					pulses_to_send = pulses_to_send - 1;
				end
			
			end
			
			//Wait until the clock ticks
			state_wait_tick: begin
			
			     if(clock_tick) begin
				 
					//If we have zero coarse delay
					if(coarse_delay == 0) begin
						//Send the pulse now at the clock tick and go back to idle
						m_axis_tdata_int <= (default_pulse >> (fine_delay << 4));
						state <= state_idle;
					
					end
					
					else begin
						//Otherwise do normal counting
						state <= state_wait_pulse;
						coarse_delay <= coarse_delay - 1;
					 
					end
			     end
			
			end 
			
			state_wait_pulse: begin
			
			     if(coarse_delay == 0) begin
			         //Set the pulse
			         m_axis_tdata_int <= (default_pulse >> (fine_delay << 4));
			         state <= state_idle;
			     end
	             else begin 
	                 coarse_delay <= coarse_delay - 1;
	             end
	             		
			end
			
			default begin
			     reset_regs();
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
		    //If we're about to hit the clock period
		    if(main_clock >= (clock_period - 1)) begin
			     main_clock <= 0;//Reset the clock
			end
			else begin
			     main_clock <= main_clock + 1;
			end
		end
	end
end



endmodule





