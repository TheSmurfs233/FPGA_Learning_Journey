onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rx_pll_opt

do {wave.do}

view wave
view structure
view signals

do {rx_pll.udo}

run -all

quit -force
