onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+weight1_bram_3 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.weight1_bram_3 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {weight1_bram_3.udo}

run -all

endsim

quit -force
