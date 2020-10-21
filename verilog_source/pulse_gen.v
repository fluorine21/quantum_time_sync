

//This pulse generator reads out requested pulses from FIFO and outputs them to the RFSoC IP module over AXIS


//TODO
//Add variable pulse length for FPGA
//Check output on hw ILA



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
	input wire instr_fifo_empty,
	input wire [31:0] instr_fifo_data,
	output reg instr_fifo_read,
	
	input wire pulse_fifo_empty,
	input wire [31:0] pulse_fifo_data,
	output reg pulse_fifo_read,
	
	
	//output to RFSoC module
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 250000000"*) output wire [255:0] m_axis_tdata,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 250000000"*) output wire m_axis_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 250000000"*) input wire m_axis_tready,
	
	//Output to second channel used for sending single entangled photon for synchronization
	(* X_INTERFACE_PARAMETER = "FREQ_HZ 250000000"*) output reg [255:0] m0_axis_tdata,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 250000000"*) output wire m0_axis_tvalid,
    (* X_INTERFACE_PARAMETER = "FREQ_HZ 250000000"*) input wire m0_axis_tready,

	output wire [7:0] state_out,

	output wire busy
);

//Data always valid for entangled photon channel
assign m0_axis_tvalid = 1;

reg is_phase_meas_mode;//if 1, then pulse is emitted at each clock tick
reg [15:0] amplitude;
reg [15:0] coarse_delay;
reg [7:0] fine_delay;

reg rst_clock;
reg [45:0] main_clock; 
reg [23:0] clock_period;

reg [15:0] pulses_to_send;//Used for toggling phase measurement mode
reg [7:0] dead_pulses, dead_pulses_reg;//Number of pulses between phase measurement and data

reg [15:0] pulse_len_reg;//Holds user-defined pulse length in number of samples 

reg [255:0] m_axis_tdata_int;

reg [15:0] pulse_samples_left;//In number of samples

assign m_axis_tvalid = 1;


//Default pulse shape
//wire [255:0] default_pulse = 256'h7FFF000000000000000000000000000000000000000000000000000000000000;
//wire [255:0] default_pulse =   256'h7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF;
//wire [255:0] default_pulse = {amplitude ,240'h000000000000000000000000000000000000000000000000000000000000};
wire [255:0] default_pulse = {amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude,amplitude};

//Signal for clock tick
//wire clock_tick = main_clock[23:0] & clock_period == 0;//Only powers of 2
//wire clock_tick = main_clock % clock_period == 0;
wire clock_tick = main_clock == 0;
wire clock_pre_tick = main_clock >= (clock_period - 1);//Happens one cycle before the clock tick

//Macros for decoding fifo data
wire [7:0] FIFO_COMMAND = instr_fifo_data[31:24];
wire [15:0] FIFO_COARSE = instr_fifo_data[23:8];
wire [7:0] FIFO_FINE = instr_fifo_data[7:0];

reg [7:0] pulse_end_return_vector;//State to go to after transmitting falling edge of pulse

//Command definitons
localparam [7:0] command_reset_clock = 0, 
				 command_send_pulse = 1,
				 command_set_period = 2,
				 command_set_phase_meas_mode = 3,
				 command_reset_phase_meas_mode = 4,
				 command_toggle_phase_meas_mode = 5,
				 command_sync_and_stream = 6,
				 command_clear_queue = 7,//Clears all queued data pulses
				 command_set_amplitude = 8,
				 command_set_pulse_len = 9;



reg [7:0] state;
assign state_out = state;
localparam [7:0] state_idle  = 0,
				 state_rst_read = 1,
				 state_read = 2,
				 state_wait_tick = 3, 
				 state_wait_pulse = 4,
				 state_toggle_end = 5,
				 state_ss_1 = 6,
				 state_ss_2 = 7,
				 state_ss_3 = 8,
				 state_ss_4 = 9,
				 state_ss_5 = 10,
				 state_ss_6 = 11,
				 state_ss_wait = 12,
				 state_wait_clear = 13,
				 state_ss_sync_send = 14,
				 state_toggle_send = 15;
				 


//If we're in phase measurement mode, put out one pulse each clock tick
assign m_axis_tdata = is_phase_meas_mode ? (clock_tick ? get_default_pulse(pulse_len_reg, amplitude) : 0) : m_axis_tdata_int;


//Busy if not idle
assign busy = (state != state_idle) || is_phase_meas_mode;

//Generates a pulse of length pulse_len with amplitude amp
function [255:0] get_default_pulse;
input [15:0] pulse_len; //in number of samples
input [15:0] amp;//Pulse amplitude
integer i;
begin

	if(pulse_len < 16) begin//if we need to cut up the pulse

		for(i = 0; i < 16; i = i + 1) begin
			if(i < pulse_len) begin
				get_default_pulse[((15-i)<<4)+:16] = amp;
			end
			else begin
				get_default_pulse[((15-i)<<4)+:16] = 16'h0;
			end
		end
	
	end
	else begin//If we just want the max length
		get_default_pulse = {amp,amp,amp,amp,amp,amp,amp,amp,amp,amp,amp,amp,amp,amp,amp,amp};
	end
end
endfunction
				 
task reset_regs();
begin

    coarse_delay <= 0;
    fine_delay <= 0;
    rst_clock <= 0;
    clock_period <= 10;//default clock period
    state <= state_idle;
    instr_fifo_read <= 0;
    m_axis_tdata_int <= 0;
	is_phase_meas_mode <= 0;
	pulses_to_send <= 0;
	dead_pulses <= 0;
	amplitude <= 16'h7FFF;
	pulse_len_reg <= 18;//default pulse length
	pulse_end_return_vector <= state_idle;
	pulse_samples_left <= 0;
	pulse_fifo_read <= 0;
	
	m0_axis_tdata <= 0;
	dead_pulses_reg <= 0;
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
				instr_fifo_read <= 0;
				m_axis_tdata_int <= 0;
				rst_clock <= 0;
				
				//If there is data in the fifo
				if(!instr_fifo_empty) begin
				
					//Tell the FIFO we're reading out this entry
					instr_fifo_read <= 1;
					
					//Go to the read state
					state <= state_rst_read;
				
				end
		
			end
			
			state_rst_read: begin
				instr_fifo_read <= 0;
				state <= state_read;
			end
		
			state_read: begin
		
				//Determine the command to be executed
				case(FIFO_COMMAND)
				
					command_reset_clock: begin
					
						//Just strobe the rst_clock line and output a single pulse
						rst_clock <= 1;
						
						m_axis_tdata_int <= get_default_pulse(pulse_len_reg, amplitude);
						
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
						clock_period <= instr_fifo_data[23:0];
						
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
						pulses_to_send <= instr_fifo_data[15:0];
						is_phase_meas_mode <= 0;
						state <= state_toggle_end;
					end
					
					command_sync_and_stream: begin
						pulses_to_send <= instr_fifo_data[15:0];
						dead_pulses <= instr_fifo_data[23:16];
						dead_pulses_reg <= instr_fifo_data[23:16];
						//is_phase_meas_mode <= 1;
						state <= state_ss_1;
					end
					
					command_clear_queue: begin
					
						if(pulse_fifo_empty) begin
							state <= state_idle;
						end
						else begin
							state <= state_wait_clear;
							pulse_fifo_read <= 1;//Read out and clear all pulses
						end
					end
					
					command_set_amplitude: begin
					
						amplitude = instr_fifo_data[15:0];
						state <= state_idle;
					
					end
					
					command_set_pulse_len: begin
						pulse_len_reg <= instr_fifo_data[15:0];
						state <= state_idle;
					end
				
					default begin
					
						  state <= state_idle;
					
					end
				
				endcase
				
			
			end
			
			
			state_wait_clear: begin
			
				if(pulse_fifo_empty) begin//If we're done clearing pulses
					state <= state_idle;//Go back to idle state
					pulse_fifo_read <= 0;//Stop clearing pulses
				end
			end
			
			state_toggle_end: begin
			
				m_axis_tdata_int <= 0;//Reset the pulse output by default
				if(pulses_to_send == 0) begin
					state <= state_idle;//No pulses to send
				end
				else if(clock_pre_tick) begin//If we need to start sending a pulse here
					pulses_to_send = pulses_to_send - 1;//We now have one less pulse to send
					//Set the number of pulse cycles remaining
					pulse_samples_left <= pulse_len_reg < 16 ? 0 : pulse_len_reg - 16;//If we have less than 16 samples just set this to 0
					//Set the output
					m_axis_tdata_int <= get_default_pulse(pulse_len_reg, amplitude);
					//Go to the sync pulse send state
					state <= state_toggle_send;
				end
			
			end
			
			state_toggle_send: begin
			
				if(pulse_samples_left < 16) begin
					//Send the trailing edge of the pulse
					m_axis_tdata_int <= get_default_pulse(pulse_samples_left, amplitude);
					state <= state_toggle_end;
				end
				else begin
					pulse_samples_left <= pulse_samples_left - 16;
					m_axis_tdata_int <= default_pulse;
				end
			
			end
			
			///////////////////////////////////////////////////////////////////////////////////
			///State machine for sync and stream, sends sync pulses and then encoded pulses////
			///////////////////////////////////////////////////////////////////////////////////
			
			state_ss_1: begin//Send out the initial sync pulses
			
				if(pulses_to_send == 0) begin
					m_axis_tdata_int <= 0;//Reset the pulse output
					if(!pulse_fifo_empty) begin//If there are data pulses to send
						state <= state_ss_wait;
					end
					else begin
						state <= state_idle;//No pulses to send
					end
				end
				else if(clock_pre_tick) begin//If we need to start sending a pulse here
					pulses_to_send = pulses_to_send - 1;//We now have one less pulse to send
					//Set the number of pulse cycles remaining
					pulse_samples_left <= pulse_len_reg < 16 ? 0 : pulse_len_reg - 16;//If we have less than 16 samples just set this to 0
					//Set the output
					m_axis_tdata_int <= get_default_pulse(pulse_len_reg, amplitude);
					//Go to the sync pulse send state
					state <= state_ss_sync_send;
				end
			
			end
			
			state_ss_sync_send: begin
			
				if(pulse_samples_left < 16) begin
					//Send the trailing edge of the pulse
					m_axis_tdata_int <= get_default_pulse(pulse_samples_left, amplitude);
					state <= state_ss_1;
				end
				else begin
					pulse_samples_left <= pulse_samples_left - 16;
					m_axis_tdata_int <= default_pulse;
				end
			end
			
			state_ss_wait: begin//Wait for the dead pulse period to end
			
				//default assignment
				m0_axis_tdata <= 0;
			
				if(dead_pulses == 0) begin
					state <= state_ss_2;
					pulse_fifo_read <= 1;
				end
				else if(clock_tick) begin
					dead_pulses <= dead_pulses - 1;
					//If we're halfway through sending dead pulses
					if(dead_pulses == (dead_pulses_reg >> 1)) begin
						//Send out a single entangled pair
						m0_axis_tdata <= get_default_pulse(pulse_len_reg, amplitude);
					end
				end
			
			end
			
			//Reset the read flag 
			state_ss_2: begin
			
				m_axis_tdata_int <= 0;//Reset the pulse output
				pulse_fifo_read <= 0;
				state <= state_ss_3;
			
			end
			
			state_ss_3: begin//Readout the value 
			
				coarse_delay <= pulse_fifo_data[23:8];
				fine_delay <= pulse_fifo_data[7:0] & 8'h0F;//Max fine delay is 16
				state <= state_ss_4;
				
			end
			
			
			state_ss_4: begin//Send the pulse at the correct time and 
				if(clock_pre_tick) begin
					//If we have zero coarse delay
					if(coarse_delay == 0) begin
						start_encoded_pulse();
					end
					else begin
						//Otherwise do normal counting
						state <= state_ss_5;
						coarse_delay <= coarse_delay - 1; 
					end
			     end
			end
			
			state_ss_5: begin
				if(coarse_delay == 0) begin
			        //Set the pulse
			        start_encoded_pulse();
			     end
	             else begin 
	                 coarse_delay <= coarse_delay - 1;
	             end
			end
			
			state_ss_6: begin
			
			
				//If we're done with this pulse
				if(pulse_samples_left < 16) begin
					//Send the trailing edge of the pulse
					//m_axis_tdata_int <= (get_default_pulse(pulse_samples_left, amplitude) << ((16 - fine_delay[3:0]) << 4));
					m_axis_tdata_int <= get_default_pulse(pulse_samples_left, amplitude);
					//If there is another pulse to send
					if(!pulse_fifo_empty) begin
						pulse_fifo_read <= 1;
						state <= state_ss_2;
					end
					else begin
						state <= state_idle;
					end
				end
				else begin//Otherwise just send out a flat pulse of amplitude values
					pulse_samples_left <= pulse_samples_left - 16;
					m_axis_tdata_int <= default_pulse;
				end
			
			end
			
			////////////////////////////////////////////////////////////
			///Old FSM for sending a single encoded pulse, do not use!//
			////////////////////////////////////////////////////////////
			
			//Wait until the clock ticks
			state_wait_tick: begin
			
			     if(clock_pre_tick) begin
				 
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

//Starts the encoded pulse for states 4 and 5
task start_encoded_pulse();
begin
//Send the pulse now at the clock tick and go back to idle
m_axis_tdata_int <= (get_default_pulse(pulse_len_reg, amplitude) >> (fine_delay << 4));

//Set the number of pulse cycles remaining

if(pulse_len_reg > 15) begin//If our pulse is longer than 1 DAC word (16 samples)
	//Then we'll have pulse_len_reg - 16 + fine_delay cycles left
	pulse_samples_left = pulse_len_reg - 16 + fine_delay;
end
else begin
	//If the pulse won't fit in one DAC word
	if(fine_delay + pulse_len_reg > 16) begin
		pulse_samples_left <= fine_delay + pulse_len_reg - 16;
	end
	else begin
		pulse_samples_left <= 0;
	end

end


state <= state_ss_6;
end
endtask


endmodule














//Different version with in-band signaling
/* 

//This pulse generator reads out requested pulses from FIFO and outputs them to the RFSoC IP module over AXIS


//FIFO bytes are decoded as follows

//3: command
//2: coarse high
//1: coarse low
//0: fine

//For setting period, 2, 1, and 0 are clock period

module pulse_gen
#
(
parameter NUM_IN_BAND_PULSES = 100,
parameter NUM_SYNC_PULSES = 100
)
(
	input wire clk, rst,//Clock from RFSoC module

	//Input from FIFO
	input wire instr_fifo_empty,
	input wire [31:0] instr_fifo_data,
	output reg instr_fifo_read,
	
	input wire pulse_fifo_empty,
	input wire [31:0] pulse_fifo_data,
	output reg pulse_fifo_read,
	
	
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
wire [255:0] waveform_1ns = 256'h7FFF0000000000007FFF0000000000007FFF0000000000007FFF000000000000;

//Signal for clock tick
//wire clock_tick = main_clock[23:0] & clock_period == 0;//Only powers of 2
//wire clock_tick = main_clock % clock_period == 0;
wire clock_tick = main_clock == 0;
wire clock_pre_tick = main_clock >= (clock_period - 1);//Happens one cycle before the clock tick

//Macros for decoding fifo data
wire [7:0] FIFO_COMMAND = instr_fifo_data[31:24];
wire [15:0] FIFO_COARSE = instr_fifo_data[23:8];
wire [7:0] FIFO_FINE = instr_fifo_data[7:0];

//Command definitons
localparam [7:0] command_reset_clock = 0, 
				 command_send_pulse = 1,
				 command_set_period = 2,
				 command_set_phase_meas_mode = 3,
				 command_reset_phase_meas_mode = 4,
				 command_toggle_phase_meas_mode = 5,
				 command_sync_and_stream = 6,
				 command_clear_queue = 7,//Clears all queued data pulses
				 command_continuous_stream = 8;

reg [15:0] coarse_delay;
reg [7:0] fine_delay;

reg rst_clock;
reg [45:0] main_clock; 
reg [23:0] clock_period;

reg [15:0] pulses_to_send;//Used for toggling phase measurement mode
reg [7:0] dead_pulses;//Number of pulses between phase measurement and data

reg [7:0] state;
assign state_out = state;
localparam [7:0] state_idle  = 0,
				 state_rst_read = 1,
				 state_read = 2,
				 state_wait_tick = 3, 
				 state_wait_pulse = 4,
				 state_toggle_end = 5,
				 state_ss_1 = 6,
				 state_stream_1 = 7,
				 state_stream_2 = 8,
				 state_stream_3 = 9,
				 state_stream_4 = 10,
				 state_ss_wait = 11,
				 state_wait_clear = 12,
				 state_cs_1 = 13,
				 state_cs_2 = 14,
				 state_cs_3 = 15,
				 state_cs_4 = 16,
				 state_cs_5 = 17;
				 
reg [7:0] encoded_pulse_stream_return_vector;//The state after the end of encode pulse streaming
				 
				 
reg is_phase_meas_mode;//if 1, then pulse is emitted at each clock tick


//Registers for cstream mode
reg [23:0] cs_sync_count;//Number of sync pulses which need to be sent
reg [23:0] max_encoded_pusles; //Number of encoded pulses which can be sent before going back to synchronization mode
reg [23:0] encoded_pulse_count;
				 
task reset_regs();
begin

    coarse_delay <= 0;
    fine_delay <= 0;
    rst_clock <= 0;
    clock_period <= 10;
    state <= state_idle;
    instr_fifo_read <= 0;
    m_axis_tdata_int <= 0;
	is_phase_meas_mode <= 0;
	pulses_to_send <= 0;
	dead_pulses <= 0;
	
	cs_sync_count <= 0;
	encoded_pulse_count <= 0;
	max_encoded_pusles <= 0;
	
	encoded_pulse_stream_return_vector <= 0;
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
				instr_fifo_read <= 0;
				m_axis_tdata_int <= 0;
				rst_clock <= 0;
				
				//If there is data in the fifo
				if(!instr_fifo_empty) begin
				
					//Tell the FIFO we're reading out this entry
					instr_fifo_read <= 1;
					
					//Go to the read state
					state <= state_rst_read;
				
				end
		
			end
			
			state_rst_read: begin
				instr_fifo_read <= 0;
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
						clock_period <= instr_fifo_data[23:0];
						
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
						pulses_to_send <= instr_fifo_data[15:0];
						is_phase_meas_mode <= 1;
						state <= state_toggle_end;
					end
					
					command_sync_and_stream: begin
						pulses_to_send <= instr_fifo_data[15:0];
						dead_pulses <= instr_fifo_data[23:16];
						is_phase_meas_mode <= 1;
						state <= state_ss_1;
					end
					
					command_clear_queue: begin
					
						if(pulse_fifo_empty) begin
							state <= state_idle;
						end
						else begin
							state <= state_wait_clear;
							pulse_fifo_read <= 1;//Read out and clear all pulses
						end
					end
					
					command_continuous_stream: begin
					
						state <= state_cs_1;
						cs_sync_count <= 20;
						max_encoded_pusles <= instr_fifo_data[23:0];
						encoded_pulse_count <= 0;
						is_phase_meas_mode <= 1;
					
					end
				
					default begin
					
						  state <= state_idle;
					
					end
				
				endcase
				
			
			end
			
			
			state_wait_clear: begin
			
				if(pulse_fifo_empty) begin//If we're done clearing pulses
					state <= state_idle;//Go back to idle state
					pulse_fifo_read <= 0;//Stop clearing pulses
				end
			end
			
			state_toggle_end: begin
			
				if(pulses_to_send == 0) begin//If there are no more pulses to send
					is_phase_meas_mode <= 0;//Go back to idle and stop sending pulses
					state <= state_idle;
				end
				else if(clock_tick) begin//If a pulse was just sent
					pulses_to_send = pulses_to_send - 1;
				end
			
			end
			
			///////////////////////////////////////////////////////////////////////////////////
			///////////Sync and Stream state machine///////////////////////////////////////////
			///////////////////////////////////////////////////////////////////////////////////
			
			state_ss_1: begin//Send out the initial sync pulses
			
				//Setup the return vector correctly
				encoded_pulse_stream_return_vector <= state_idle;
			
				if(pulses_to_send == 0) begin
					is_phase_meas_mode <= 0;//Turn off phase measurement mode
					if(!pulse_fifo_empty) begin//If there are data pulses to send
						state <= state_ss_wait;
					end
					else begin
						state <= state_idle;//No pulses to send
					end
				end
				else if(clock_tick) begin
					pulses_to_send = pulses_to_send - 1;
				end
			
			end
			
			
			state_ss_wait: begin
			
				if(dead_pulses == 0) begin
					state <= state_stream_1;
					pulse_fifo_read <= 1;
				end
				else if(clock_tick) begin
					dead_pulses <= dead_pulses - 1;
				end
			
			end
			
			////////////////////////////////////////////////////////////////
			///Stream encoded pulses fsm////////////////////////////////////
			////////////////////////////////////////////////////////////////
			
			//Reset the read flag 
			state_stream_1: begin
			
				m_axis_tdata_int <= 0;//Reset the pulse output
				pulse_fifo_read <= 0;
				state <= state_stream_2;
			
			end
			
			state_stream_2: begin//Readout the value 
			
				coarse_delay <= pulse_fifo_data[23:8];
				fine_delay <= pulse_fifo_data[7:0];
				state <= state_stream_3;
				
			end
			
			
			state_stream_3: begin//Send the pulse at the correct time and 
			
				if(clock_pre_tick) begin
				 
					//If we have zero coarse delay, special case!
					if(coarse_delay == 0) begin
						//Send the pulse now at the clock tick and go back to idle
						m_axis_tdata_int <= (default_pulse >> (fine_delay << 4));
						
						//If there is another pulse to send
						if(!pulse_fifo_empty) begin
							pulse_fifo_read <= 1;
							state <= state_stream_1;
						end
						else begin//No more pulses to send
							state <= encoded_pulse_stream_return_vector;
						end
					end
					
					else begin
						//Otherwise do normal counting
						state <= state_stream_4;
						coarse_delay <= coarse_delay - 1;
					 
					end
			     end
			
			end
			
			state_stream_4: begin
			
				//If we're done counting
				if(coarse_delay == 0) begin
			         //Set the pulse
			         m_axis_tdata_int <= (default_pulse >> (fine_delay << 4));
			         //If there is another pulse to send
					if(!pulse_fifo_empty) begin
						pulse_fifo_read <= 1;
						state <= state_stream_1;
					end
					else begin//No more pulses to send
						state <= encoded_pulse_stream_return_vector;
					end
			     end
	             else begin 
	                 coarse_delay <= coarse_delay - 1;
	             end
			
			
			end
			
			/////////////////////////////////////////////////
			
			//Wait until the clock ticks
			state_wait_tick: begin
			
			     if(clock_pre_tick) begin
				 
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
			
			
			//////////////////////////////////////////////
			////Continuous Stream Protocol State Machine//
			//////////////////////////////////////////////
			
			//State 1: Idle state, sending pulses at each clock tick, waiting for incomming data on either fifo as this mode can be ended through a command
			//State 2: Preparing to send data, begin in band signalling at 1ns pulse for 1000 pulses and then go to data sending while fifo is full, then hand off to stream fsm
			//State 3: Do in band signalling again at 1ns pulse for 1000 to denote switch back to sync state
			//State 4: count down in band signalling and go back to state 1
			//state 5: reset instr fifo read and go to 6,
			//state 6: If the command was reset go to idle, otherwise go to 1
			//state 7: wait for data on either fifo to come in and then do whatnot
			
			
			state_cs_1: begin
			
				//Setup the return vector
				encoded_pulse_stream_return_vector <= state_cs_3;
			
				//Always doing phase measurement here
				is_phase_meas_mode <= 1;
				
				//if there is an incomming command
				if(!instr_fifo_empty) begin
					//Read it out
					instr_fifo_read <= 1;
					state <= state_cs_5;
				end
				//If we still have sync pulses left to counting
				else if(cs_sync_count > 0) begin
				
					//if it is time to count a sync pulse
					if(clock_tick) begin
					
						cs_sync_count <= cs_sync_count - 1;
					
					end
					
				end
				//Otherwise if there is data to send
				else if(!pulse_fifo_empty) begin
				
					//Turn off phase measurement
					is_phase_meas_mode <= 0;
					
					//Set the 1ns waveform
					m_axis_tdata_int <= waveform_1ns;
					
					//go to state 2 and count to NUM_IN_BAND_PULSES
					state <= state_cs_2;
					
					cs_sync_count <= NUM_IN_BAND_PULSES;
				end
				//Go to the dead state and wait
				else begin
					state <= state_cs_7;
				end
			
			end
			
			state_cs_2: begin
				//If we still have in band pulses to send
				if(cs_sync_count > 0) begin
					cs_sync_count <= cs_sync_count - 4;
				end
				//Otherwise start loading data out of the fifo
				else begin
					pulse_fifo_read <= 1;
					state <= state_stream_1;
				end
			end
			
			state_cs_3: begin
				//Reset the counter and count down
				cs_sync_count <= NUM_IN_BAND_PULSES;
				state <= state_cs_4;
			end
			
			state_cs_4: begin
				if(cs_sync_count > 0) begin
					cs_sync_count <= cs_sync_count - 4;
				end
				else begin
					state <= state_cs_1;
					cs_sync_count <= NUM_SYNC_PULSES;//Reset the sync pulse counter
				end
			end
			
			state_cs_5: begin
				state <= state_cs_6;
				instr_fifo_read <= 0;
			end
			
			state_cs_6: begin
			//If it was the exit command
				if(FIFO_COMMAND == command_continuous_stream_end) begin
					is_phase_meas_mode <= 0;
					state <= state_idle;
				end
				else begin//If it wasn't
					state <= state_cs_1;//Go back to streaming
					cs_sync_count <= NUM_SYNC_PULSES;
				end
			end
			
			
			state_cs_7: begin
				is_phase_meas_mode <= 0;
				if(!instr_fifo_empty) begin
					instr_fifo_read <= 1;
					state <= state_cs_5;
				end
				else if(!pulse_fifo_empty) begin
					state <= state_cs_1;//Go back to streaming
					cs_sync_count <= NUM_SYNC_PULSES;
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





 */