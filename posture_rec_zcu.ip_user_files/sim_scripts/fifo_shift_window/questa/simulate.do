onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_shift_window_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_shift_window.udo}

run -all

quit -force
