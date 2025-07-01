onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib weight1_bram_2_opt

do {wave.do}

view wave
view structure
view signals

do {weight1_bram_2.udo}

run -all

quit -force
