onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.float_add_IP_use_DSP_multilatency xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {float_add_IP_use_DSP_multilatency.udo}

run -all

quit -force
