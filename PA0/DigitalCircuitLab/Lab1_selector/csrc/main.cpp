
#include <nvboard.h>
#include <Vmux4x1_2bit.h>


static TOP_NAME mux4x1_2bit;

void nvboard_bind_all_pins(TOP_NAME *top);


int main(int argc, char *argv[])
{

	nvboard_bind_all_pins(&mux4x1_2bit);
	nvboard_init();

	while (1)
	{
		nvboard_update();
		mux4x1_2bit.eval();
	}
	

	return 0;
}
