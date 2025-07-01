onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib uint32_to_float_opt

do {wave.do}

view wave
view structure
view signals

do {uint32_to_float.udo}

run -all

quit -force
