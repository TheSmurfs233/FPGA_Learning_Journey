onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+img_rom -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.img_rom xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {img_rom.udo}

run -all

endsim

quit -force
