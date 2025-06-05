.PHONY: all
all:
	rm -rf obj_dir
	verilator --cc --exe --build -j 0 --vpi --public-flat-rw --Wno-fatal --trace  --debug  -CFLAGS "-g -O0" sim_main.cpp top.sv
