onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axiInter_ila_opt

do {wave.do}

view wave
view structure
view signals

do {axiInter_ila.udo}

run -all

quit -force
