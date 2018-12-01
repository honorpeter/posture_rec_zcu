onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib float_add_IP_use_DSP_multilatency_opt

do {wave.do}

view wave
view structure
view signals

do {float_add_IP_use_DSP_multilatency.udo}

run -all

quit -force
