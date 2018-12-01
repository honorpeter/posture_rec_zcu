onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+post_image_ram -L xilinx_vip -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.post_image_ram xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {post_image_ram.udo}

run -all

endsim

quit -force
