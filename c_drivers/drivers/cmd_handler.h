


//localparam [7:0] command_reset_clock = 0,
///				 command_send_pulse = 1,
//				 command_set_period = 2,
//				 command_set_phase_meas_mode = 3,
//				 command_reset_phase_meas_mode = 4;

#define CMD_PREAMBLE 0xAA
#define CMD_RST_CLK 0x00
#define CMD_SEND_PULSE 0x01
#define CMD_SET_PERIOD 0x02
#define CMD_PHASE_MEAS_ON 0x03
#define CMD_PHASE_MEAS_OFF 0x04
