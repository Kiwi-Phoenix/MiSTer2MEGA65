transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+denise_colortable_ram_mf  -L xil_defaultlib -L xpm -L blk_mem_gen_v8_4_10 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.denise_colortable_ram_mf xil_defaultlib.glbl

do {denise_colortable_ram_mf.udo}

run 1000ns

endsim

quit -force
