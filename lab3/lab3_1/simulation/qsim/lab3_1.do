onerror {exit -code 1}
vlib work
vlog -work work lab3_1.vo
vlog -work work Waveform1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab3_1_vlg_vec_tst -voptargs="+acc"
vcd file -direction lab3_1.msim.vcd
vcd add -internal lab3_1_vlg_vec_tst/*
vcd add -internal lab3_1_vlg_vec_tst/i1/*
run -all
quit -f
