# -*- coding: utf-8 -*-
"""
Created on Thu Jun 25 17:58:22 2020

@author: tianlab01
"""


import serial

#Command definitions
CMD_PREAMBLE = 0xAA
CMD_RST_CLK = 0x00
CMD_SEND_PULSE = 0x01
CMD_SET_PERIOD = 0x02
CMD_PHASE_MEAS_ON = 0x03
CMD_PHASE_MEAS_OFF = 0x04
CMD_PING_BOARD = 0xFE
CMD_TOGGLE_PHASE_MEAS = 0x05
CMD_QUEUE_PULSE = 0x07
CMD_SYNC_AND_STREAM = 0x06
ACK_RESPONSE = 0x00
ACK_FAIL = 0xFF


DEFAULT_BAUD = 115200
UART_TIMEOUT = 0.1


class pulse_gen:
    
    port = None
    
    
    def __init__(self, portname):
        self.port = serial.Serial()
        self.port.baudrate = DEFAULT_BAUD
        self.port.port = portname
        self.port.timeout = UART_TIMEOUT
        
    def open_board(self):
        self.port.open()
        
    def close_board(self):
        self.port.close()
        
    #Returns 0 if connection to board is up
    def ping_board(self):
        self.port.open()
        #send the command
        self.port.write([CMD_PREAMBLE, CMD_PING_BOARD])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            return -1
        
    #returns ACK_RESPONSE if ack successfully recieved
    def wait_ack(self):
        try:
            rv = self.port.read(1)
            #self.port.reset_input_buffer()
            return rv[0]
        except:
            print("Error waiting for ACK from board")
            return -1
        
    def phase_meas_on(self):
        self.port.open()
        #Send the phase meas on command
        self.port.write([CMD_PREAMBLE, CMD_PHASE_MEAS_ON])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            print("Bad ACK while turning phase measurement on, is the FPGA programmed with the C firmware?")
            return -1
        
    def phase_meas_off(self):
        
        self.port.open()
        #Send the phase meas on command
        self.port.write([CMD_PREAMBLE, CMD_PHASE_MEAS_OFF])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            print("Bad ACK while turning phase measurement off, is the FPGA programmed with the C firmware?")
            return -1
        
    def toggle_phase_meas(self, num_pulses):
        
        pb1 = (round(num_pulses) >> 8) & 0xFF
        pb0 = round(num_pulses) & 0xFF
        
        self.port.open()
        #Send the phase meas on command
        self.port.write([CMD_PREAMBLE, CMD_TOGGLE_PHASE_MEAS, 0, pb1, pb0])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            print("Bad ACK while toggling phase measurement mode, is the FPGA programmed with the C firmware?")
            return -1
        
        
        #Period is in clock cycles 1 clock cycle = 4ns
        #Returns 0 on success
    def set_period(self, period):
        
        self.port.open()
    
        period_r = round(period)
        
        b0 = (period_r >> 16) & 0xFF
        b1 = (period_r >> 8 ) & 0xFF
        b2 = period_r & 0xFF
        
        self.port.write([CMD_PREAMBLE, CMD_SET_PERIOD, b0, b1, b2])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            print("Bad ACK while setting period, is the FPGA programmed with the C firmware?")
            return -1
        
        #returns 0 on success
        #coarse delay is in clock cycles (1 = 4ns)
        #fine delay is in DAC samples (1 = 250ps)
    def send_pulse(self, coarse_delay, fine_delay):
        
        self.port.open()
        
        b0 = (round(coarse_delay) >> 8) & 0xFF
        b1 = round(coarse_delay) & 0xFF
        b2 = round(fine_delay) & 0xFF
        
        self.port.write([CMD_PREAMBLE, CMD_SEND_PULSE, b0, b1, b2])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            print("Bad ACK while sending pulse, is the FPGA programmed with the C firmware?")
            return -1
        
        
    def load_pulse(self, coarse_delay, fine_delay):
        
        self.port.open()
        
        b0 = (round(coarse_delay) >> 8) & 0xFF
        b1 = round(coarse_delay) & 0xFF
        b2 = round(fine_delay) & 0xFF
        
        self.port.write([CMD_PREAMBLE, CMD_QUEUE_PULSE, b0, b1, b2])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            print("Bad ACK while sending pulse, is the FPGA programmed with the C firmware?")
            return -1
        
    def sync_and_stream(self, num_pulses):
        
        
        self.port.open()
        
        b0 = (num_pulses >> 16) & 0xFF
        b1 = (num_pulses >> 8) & 0xFF
        b2 = num_pulses & 0xFF
        
        self.port.write([CMD_PREAMBLE,CMD_SYNC_AND_STREAM, b0, b1, b2])
        #Wait for the ack
        result = self.wait_ack()
        self.port.close()
        if result == ACK_RESPONSE:
            return 0
        elif result == ACK_FAIL:
            print("No running clock detected on the FPGA, is the RF clock input plugged in and running?")
            return -1
        else:
            print("Bad ACK while sending pulse, is the FPGA programmed with the C firmware?")
            return -1
        
