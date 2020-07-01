# Helper script for VNC testing
# written by Michal Simek
# updated by Preetesh Parekh


proc run { } {
  connect
  exec sleep 1
  puts "Load PMUFW"
  targets -set -filter {name =~ "PSU" || name =~ "PS8"}
  #Enable MDM
  mwr 0xffca0038 0x1FF
  # PMUFW
  targets -set -filter {name =~ "MicroBlaze PMU"}
  dow $::env(XILINX_SDX)/platforms/zcu102_es2/sw/boot/pmufw.elf
  con
  exec sleep 2
  #puts [targets]
  puts "Load FSBL"
  targets -set -filter {name =~ "PSU" || name =~ "PS8"}
  mwr 0xffff0000 0x14000000
  mwr 0xFD1A0104 0x380E
  targets -set -filter {name =~ "Cortex-A53 #0"}
  stop
  dow $::env(XILINX_SDX)/platforms/zcu102_es2/sw/boot/fsbl.elf
  con
  exec sleep 1
  stop
  exec sleep 1

  targets -set -filter {name =~ "APU*"}
  #psu_init
  exec sleep 1
  psu_ps_pl_isolation_removal
  exec sleep 1
  psu_ps_pl_reset_config
  # disable isolation for PL
  #mask_write 0XFFD80118 0x00800000 0x00800000
  #mask_write 0XFFD80120 0x00800000 0x00800000
  #psu_post_config

  puts "Programming fpga $::env(Z_BIT_FILE)"
  fpga -file $::env(Z_BIT_FILE)
  fpga -state



  targets -set -filter {name =~ "Cortex-A53 #0"}

  mwr 0xFF18031C 0x64406440
  mwr 0xFF180314 0x01150000
  mwr 0xFF180318 0x00450043
  exec sleep 1  

  puts "Load U-Boot"
  dow $::env(XILINX_SDX)/platforms/zcu102_es2/sw/boot/u-boot.elf
  puts "Load ARM Trusted Firmware"
  dow $::env(XILINX_SDX)/platforms/zcu102_es2/sw/boot/bl31.elf
  con
  exec sleep 2 
  after 2000
  stop
    puts "Loading image"
  dow -data $::env(XILINX_SDX)/platforms/zcu102_es2/sw/image/image.ub 0x30000000
  exec sleep 2
  after 2000
  con
  puts "Done!"
}
source psu_init.tcl
run

return 0
