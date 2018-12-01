onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib head_fifo_opt

do {wave.do}

view wave
view structure
view signals

do {head_fifo.udo}

run -all

quit -force
