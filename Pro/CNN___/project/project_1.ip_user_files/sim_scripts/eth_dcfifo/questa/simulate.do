onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib eth_dcfifo_opt

do {wave.do}

view wave
view structure
view signals

do {eth_dcfifo.udo}

run -all

quit -force
