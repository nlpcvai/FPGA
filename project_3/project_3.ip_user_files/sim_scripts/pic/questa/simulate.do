onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib pic_opt

do {wave.do}

view wave
view structure
view signals

do {pic.udo}

run -all

quit -force
