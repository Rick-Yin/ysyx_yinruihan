all:
	@echo "Write this Makefile by your self."

sim:
	@echo "Record the learning process!"
	$(call git_commit, "sim RTL") # DO NOT REMOVE THIS LINE!!!
	@echo "-------- Compile -------------"
	verilator -Wall --cc --exe --trace --build -j top.v sim_main.cpp
	obj_dir/Vtop
	gtkwave waveform.vcd

include ../Makefile
