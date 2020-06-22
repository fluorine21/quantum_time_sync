onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib top_level_block_design_opt

do {wave.do}

view wave
view structure
view signals

do {top_level_block_design.udo}

run -all

quit -force
