onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.mac_res_fifo xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {mac_res_fifo.udo}

run -all

quit -force
