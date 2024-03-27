module top(
        input clk,
        input rst,
        input [7:0] initVal,
        output [7:0] NUM0,
        output [7:0] NUM1
    );

    wire [7:0] NUM;
    RandGen RnadGen_inst(.clk(clk), .rst(rst), .initVal(initVal), .out(NUM));
    bcd7seg HEX0(.b(NUM[3:0]), .h(NUM0));
    bcd7seg HEX1(.b(NUM[7:4]), .h(NUM1));
endmodule
