onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib image_ram_rd_addr_add_opt

do {wave.do}

view wave
view structure
view signals

do {image_ram_rd_addr_add.udo}

run -all

quit -force
