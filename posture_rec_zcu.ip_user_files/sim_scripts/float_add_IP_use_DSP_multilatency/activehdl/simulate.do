onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+float_add_IP_use_DSP_multilatency -L xilinx_vip -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.float_add_IP_use_DSP_multilatency xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {float_add_IP_use_DSP_multilatency.udo}

run -all

endsim

quit -force
