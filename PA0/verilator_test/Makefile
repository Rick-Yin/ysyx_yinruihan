ifeq ($(VERILATOR_ROOT),)
	VERILATOR = verilator
else
	export VERILATOR_ROOT
	VERILATOR = $(VERILATOR_ROOT)/bin/verilator
endif

default:
	@echo "🚀 Compiling..."
	$(VERILATOR) -Wall --cc --exe --trace --build -j top.v sim_main.cpp
	@echo "-- RUN ---------------------"
	obj_dir/Vtop
	@echo "-- DONE --------------------"

clean mostlyclean distclean maintainer-clean::
	-rm -rf obj_dir *.log *.dmp *.vpd core