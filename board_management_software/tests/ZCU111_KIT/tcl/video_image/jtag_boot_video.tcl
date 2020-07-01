puts [after 2000]
puts "catch { disconnect }"
puts [catch { disconnect }]
puts [after 2000]
puts "connect -url tcp:127.0.0.1:3121"
puts [connect -url tcp:127.0.0.1:3121]
puts "targets -set -filter {name =~ \"PSU\" || name =~ \"PS8\"}"
puts [targets -set -filter {name =~ "PSU" || name =~ "PS8"}]
puts "mwr 0xffca0038 0x1FF"
puts [mwr 0xffca0038 0x1FF]
puts "targets -set -filter {name =~ \"MicroBlaze PMU\"}"
puts [targets -set -filter {name =~ "MicroBlaze PMU"}]
puts "dow -force [pwd]/tcl/video_image/pmufw.elf"
puts [dow -force [pwd]/tcl/video_image/pmufw.elf]
puts "con"
puts [con]
puts "after 2000"
puts [after 2000]
puts "Load FSBL"
puts "targets -set -filter {name =~ \"PSU\" || name =~ \"PS8\"}"
puts [targets -set -filter {name =~ "PSU" || name =~ "PS8"}]
puts "mwr 0xffff0000 0x14000000"
puts [mwr 0xffff0000 0x14000000]
puts "mwr 0xFD1A0104 0x380E"
puts [mwr 0xFD1A0104 0x380E]
puts "targets -set -filter {name =~ \"Cortex-A53 #0\"}"
puts [targets -set -filter {name =~ "Cortex-A53 #0"}]
puts "stop"
puts [stop]
puts "dow -force [pwd]/tcl/video_image/zynqmp_fsbl.elf"
puts [dow -force [pwd]/tcl/video_image/zynqmp_fsbl.elf]
puts "con"
puts [con]
puts "after 2000"
puts [after 2000]
puts "stop"
puts [stop]
puts "after 2000"
puts [after 2000]
puts "targets -set -filter {name =~\"*APU*\"}"
puts [targets -set -filter {name =~"*APU*"}]
#psu_init
puts "source [pwd]/tcl/video_image/ipi_psu_init.tcl"
puts [source [pwd]/tcl/video_image/ipi_psu_init.tcl]
puts "after 2000"
puts [after 2000]
puts "psu_ps_pl_isolation_removal"
puts [psu_ps_pl_isolation_removal]
puts "after 2000"
puts [after 2000]
puts "psu_ps_pl_reset_config"
puts [psu_ps_pl_reset_config]
# disable isolation for PL
#mask_write 0XFFD80118 0x00800000 0x00800000
#mask_write 0XFFD80120 0x00800000 0x00800000
#psu_post_config
puts "fpga -no-revision-check -file [pwd]/tcl/video_image/zcu104_ipi.bit"
puts [fpga -no-revision-check -file [pwd]/tcl/video_image/zcu104_ipi.bit]
puts "fpga -state"
puts [fpga -state]
puts "targets -set -filter {name =~ \"Cortex-A53 #0\"}"
puts [targets -set -filter {name =~ "Cortex-A53 #0"}]
puts "mwr 0xFF18031C 0x64406440"
puts [mwr 0xFF18031C 0x64406440]
puts "mwr 0xFF180314 0x01150000"
puts [mwr 0xFF180314 0x01150000]
puts "mwr 0xFF180318 0x00450043"
puts [mwr 0xFF180318 0x00450043]
puts "after 100"
puts [after 100]
puts "after 2000"
puts [after 2000]
puts "dow -force [pwd]/tcl/video_image/u-boot.elf"
puts [dow -force [pwd]/tcl/video_image/u-boot.elf]
puts "after 2000"
puts [after 2000]
puts "dow -force [pwd]/tcl/video_image/bl31.elf"
puts [dow -force [pwd]/tcl/video_image/bl31.elf]
puts "after 2000"
puts [after 2000]
puts "con"
puts [con]
puts "after 2000"
puts [after 2000]
puts "stop"
puts [stop]
puts "after 2000"
puts [after 2000]
puts "dow -data [pwd]/tcl/video_image/image.ub 0x10000000"
puts [dow -data [pwd]/tcl/video_image/image.ub 0x10000000]
puts "after 100"
puts [after 100]
puts "con"
puts [con]
puts "after 100"
puts [after 100]
puts "disconnect"
puts [disconnect]
puts "jtag_boot_video.tcl finished"
