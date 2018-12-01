onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib interrupt_ila1_opt

do {wave.do}

view wave
view structure
view signals

do {interrupt_ila1.udo}

run -all

quit -force
