#include <nvboard.h>
#include <VALU.h>


static TOP_NAME ALU;

void nvboard_bind_all_pins(TOP_NAME *top);

static void single_cycle() 
{
    ALU.clk = 0; ALU.eval();
    ALU.clk = 1; ALU.eval();
}

int main(int argc, char *argv[])
{

	nvboard_bind_all_pins(&ALU);
	nvboard_init();

	while (1)
	{
		nvboard_update();
        single_cycle();
	}
	

	return 0;
}
