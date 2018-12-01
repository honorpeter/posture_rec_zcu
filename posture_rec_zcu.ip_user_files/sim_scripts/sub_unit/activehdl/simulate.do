onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+sub_unit -L xilinx_vip -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.sub_unit xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {sub_unit.udo}

run -all

endsim

quit -force
