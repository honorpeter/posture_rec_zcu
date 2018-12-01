onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.post_image_ram xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {post_image_ram.udo}

run -all

quit -force
