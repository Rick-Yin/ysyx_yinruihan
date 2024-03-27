#include <nvboard.h>
#include "Vswitch.h"

static TOP_NAME dut;

void nvboard_bind_all_pins(TOP_NAME *dut);

void single_cycle()
{
    int i = 20;
    while (i > 0)
        i--;
	dut.eval();
}

int main()
{
	nvboard_bind_all_pins(&dut);
	nvboard_init();


	while (1)
	{
		nvboard_update();
        single_cycle();
	}
	

	return 0;
}

