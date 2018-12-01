onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib post_image_ram_opt

do {wave.do}

view wave
view structure
view signals

do {post_image_ram.udo}

run -all

quit -force
