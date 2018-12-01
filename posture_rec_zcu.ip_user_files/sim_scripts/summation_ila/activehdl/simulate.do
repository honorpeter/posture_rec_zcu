onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+summation_ila -L xilinx_vip -L xil_defaultlib -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.summation_ila xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {summation_ila.udo}

run -all

endsim

quit -force
