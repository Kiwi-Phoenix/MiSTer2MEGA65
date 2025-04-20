onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib denise_colortable_ram_mf_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {denise_colortable_ram_mf.udo}

run 1000ns

quit -force
