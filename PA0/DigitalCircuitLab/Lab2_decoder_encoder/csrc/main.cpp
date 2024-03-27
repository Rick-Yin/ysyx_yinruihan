#include <nvboard.h>
#include <Vtop.h>


static TOP_NAME top;

void nvboard_bind_all_pins(TOP_NAME *top);


int main(int argc, char *argv[])
{

	nvboard_bind_all_pins(&top);
	nvboard_init();

	while (1)
	{
		nvboard_update();
		top.eval();
		int i = 1000;
		while (i-- > 0)
		{
			
		}
		
		top.eval();
	}
	

	return 0;
}
