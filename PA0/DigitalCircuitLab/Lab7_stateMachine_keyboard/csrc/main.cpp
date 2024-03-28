#include <nvboard.h>
#include "Vtop.h"

static TOP_NAME top;

void nvboard_bind_all_pins(TOP_NAME* top);

void single_cycle() {
    top.clk = 0;
    top.eval();
    top.clk = 1;
    top.eval();
}

void reset (int n) {
    top.clrn = 0;
    while(n --> 0) {
        single_cycle();
    }
    top.clrn = 1;
}

signed main() {
    nvboard_bind_all_pins(&top);
    nvboard_init();

    reset (20);
    while(true) {
        nvboard_update();
        single_cycle();
    }

    nvboard_quit();
    return 0;
}