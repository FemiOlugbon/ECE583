vlib work
vlog FullAdder.v Adder4.v 

vsim Adder4_tb
vsim -t ns Adder4_tb

add wave A B Cin C Sum Cout
run 800ns