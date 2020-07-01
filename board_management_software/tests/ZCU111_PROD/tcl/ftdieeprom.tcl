source [file join [file dirname [info script]] ftd2xx.tcl]

set ftdi_configs {
    FT232H {VendorId 1027 ProductId 24596 MaxPower 100 PnP 1 SerNumEnableH 1 ACDriveCurrentH 4 ADDriveCurrentH 4 IsFifoH 1}
    FT2232H {VendorId 1027 ProductId 24592 MaxPower 100 PnP 1 SerNumEnable7 1 ALDriveCurrent 4 AHDriveCurrent 4 BLDriveCurrent 4 BHDriveCurrent 4 IFAIsFifo7 1 BIsVCP7 1}
    FT4232H {VendorId 1027 ProductId 24593 MaxPower 100 PnP 1 SerNumEnable8 1 ADriveCurrent 4 BDriveCurrent 4 CDriveCurrent 4 DDriveCurrent 4 BIsVCP8 1 CIsVCP8 1 DIsVCP8 1}
}

set boards {
    tul {FtdiConfig FT2232H FirmwareId 0x584a0001 Vendor Xilinx Product TUL Manufacturer Xilinx Description TUL}
    openjtag1 {FtdiConfig FT232H FirmwareId 0x584a0002 Vendor Xilinx Product {HW-FTDI-TEST FT232H} Manufacturer Xilinx Description JTAG}
    openjtag2 {FtdiConfig FT2232H FirmwareId 0x584a0003 Vendor Xilinx Product {HW-FTDI-TEST FT2232H} Manufacturer Xilinx Description JTAG+Serial}
    openjtag3 {FtdiConfig FT4232H FirmwareId 0x584a0004 Vendor Xilinx Product {HW-Z1-ZCU104 FT4232H} Manufacturer Xilinx Description "Xilinx MPSoC ZCU104 Eval Kit"}
}

proc dict_get_safe {dict args} {
    if { [dict exists $dict {*}$args] } {
	return [dict get $dict {*}$args]
    }
    return {}
}

proc device_list {} {
    set devs [ftd2xx get_device_info_list]
    set res ""
    set skip 0
    foreach dev $devs {
	if { $skip > 0 } {
	    incr skip -1
	    continue
	}
	set ID [dict_get_safe $dev ID]
	set VID [expr {($ID >> 16) & 0xffff}]
	set PID [expr {$ID & 0xffff}]
	if { $VID != 0x0403 } continue
	if { $PID == 0x6010 } { incr skip 1 }
	if { $PID == 0x6011 } { incr skip 3 }

	if { $res == "" } {
	    append res [format "%-10s %-30s %-20s" Location Description SerialNumber]
	}
	append res "\n"
	append res [format "%-10s %-30s %-20s" [dict_get_safe $dev LocId] [dict_get_safe $dev Description] [dict_get_safe $dev SerialNumber]]
    }
    return $res
}

proc program_eeprom {location board serial} {
    variable ftdi_configs
    variable boards
    if { ![dict exists $boards $board] } {
	error "unknown board type \"$board\": must be [join [dict keys $boards] {, }]"
    }
    set board_props [dict get $boards $board]
    set ftdi_config [dict get $ftdi_configs [dict get $board_props FtdiConfig]]
    dict set ftdi_config ManufacturerId ""
    dict set ftdi_config Manufacturer [dict get $board_props Manufacturer]
    dict set ftdi_config Description [dict get $board_props Description]
    dict set ftdi_config SerialNumber $serial

    set fwid [dict_get_safe $board_props FirmwareId]
    set vendor "[encoding convertto utf-8 [dict_get_safe $board_props Vendor]]\0"
    set product "[encoding convertto utf-8 [dict_get_safe $board_props Product]]\0"
    set user_area [binary format ia*a* $fwid $vendor $product]

    set handle {}
    set devs [ftd2xx get_device_info_list]
    foreach dev $devs {
	if { [dict_get_safe $dev LocId] != $location } continue
	set ID [dict_get_safe $dev ID]
	set VID [expr {($ID >> 16) & 0xffff}]
	set PID [expr {$ID & 0xffff}]
	set VID2 [dict_get_safe $ftdi_config VendorId]
	set PID2 [dict_get_safe $ftdi_config ProductId]
	if { $VID != $VID2 || $PID != $PID2 } {
	    error "unexpected VID/PID id, device $VID/$PID, board expects $VID2/$PID2"
	}
	set handle [ftd2xx open_by_location $location]
	break
    }
    if { $handle == {} } {
	error "no device at location \"$location\""
    }

    ftd2xx ee_program $handle $ftdi_config
    ftd2xx ee_ua_write $handle $user_area

    ftd2xx close $handle
}
set location ""
unset location
set serialnumber ""
unset serialnumber

set devicelist [device_list]
puts $devicelist

foreach i [regexp -all -inline -lineanchor {^\d+} $devicelist] {
    lappend location $i
}

foreach i [regexp -all -lineanchor {\s(\w+)A} $devicelist fullmatch matchedserial] {
    #puts $matchedserial
    lappend serialnumber $matchedserial
}

puts $location
puts $serialnumber

set index -1
foreach item $location {
    incr index
    puts "program_eeprom [lindex $location $index] openjtag3 [lindex $serialnumber $index]"
    program_eeprom [lindex $location $index] openjtag3 [lindex $serialnumber $index]
}
