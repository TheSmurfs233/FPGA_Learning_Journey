onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib weight2_bram_0_opt

do {wave.do}

view wave
view structure
view signals

do {weight2_bram_0.udo}

run -all

quit -force
