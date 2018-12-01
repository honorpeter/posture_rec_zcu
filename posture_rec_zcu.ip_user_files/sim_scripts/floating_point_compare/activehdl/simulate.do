onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+floating_point_compare -L xilinx_vip -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.floating_point_compare xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {floating_point_compare.udo}

run -all

endsim

quit -force
