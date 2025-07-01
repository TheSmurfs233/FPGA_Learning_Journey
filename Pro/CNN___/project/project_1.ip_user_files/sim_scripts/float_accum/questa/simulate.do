onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib float_accum_opt

do {wave.do}

view wave
view structure
view signals

do {float_accum.udo}

run -all

quit -force
