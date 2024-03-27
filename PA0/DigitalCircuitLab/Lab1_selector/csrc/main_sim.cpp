#include <stdio.h>
#include <stdlib.h>
#include <Vmux4x1_2bit.h>
#include <verilated_vcd_c.h>


int main(int argc, char *argv[])
{
    VerilatedContext* const contextp = new VerilatedContext;

    contextp->commandArgs(argc, argv);

    Vmux4x1_2bit* const mux = new Vmux4x1_2bit{contextp};

    Verilated::traceEverOn(true);
    VerilatedVcdC *m_trace = new VerilatedVcdC;
    mux->trace(m_trace, 5);
    m_trace->open("mux4x1_2bit_waveform.vcd");

    // Simulate until $finish
    for (int i = 0; i < 10; i++) 
    {
		mux->in1 = rand() & 3; // 3 == 0b11
		mux->in2 = rand() & 3;
		mux->in3 = rand() & 3;
		mux->in4 = rand() & 3;
		mux->sel = rand() & 3;
		mux->eval();

		m_trace->dump(i); //将信号写入波形

		printf("in1 = %d, in2 = %d\n", mux->in1, mux->in2);
		printf("in3 = %d, in4 = %d\n", mux->in3, mux->in4);
		printf("sel = %d, out = %d\n", mux->sel, mux->out);
    }
    m_trace->close();
    // Final model cleanup
    mux->final();

    // Destroy model
    delete mux;

    return 0;

}

