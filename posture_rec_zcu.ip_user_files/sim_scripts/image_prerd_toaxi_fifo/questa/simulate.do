onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib image_prerd_toaxi_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {image_prerd_toaxi_fifo.udo}

run -all

quit -force
