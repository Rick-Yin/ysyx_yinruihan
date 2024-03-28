module top(
        input clk, clrn, nextdata_n,
        input ps2_clk,
        input ps2_data,
        output reg [7:0] KeyCode0,
        output reg [7:0] KeyCode1,
        output reg [7:0] AsciiCode0,
        output reg [7:0] AsciiCode1,
        output reg [7:0] Account0,
        output reg [7:0] Account1
    );

    wire ready, overflow;
    wire [7:0] data;
    wire [7:0] assiccode;

    reg [7:0] count;


    ps2_keyboard ps2_keyboard_inst(
                     .clk(clk),
                     .clrn(clrn),
                     .ps2_clk(ps2_clk),
                     .ps2_data(ps2_data),
                     .data(data),
                     .ready(ready),
                     .nextdata_n(nextdata_n),
                     .overflow(overflow),
                     .countK(count));

    KCode2AskCode KCode2AskCode_inst(
                      .clk(clk),
                      .ready(ready),
                      .keycode(data),
                      .assiccode(assiccode)
                  );

    bcd7seg DTs0(
                .b(data[3:0]),
                .h(KeyCode0[7:0])
            );

    bcd7seg DTs1(
                .b(data[7:4]),
                .h(KeyCode1[7:0])
            );

    bcd7seg DTs2(
                .b(assiccode[3:0]),
                .h(AsciiCode0[7:0])
            );

    bcd7seg DTs3(
                .b(assiccode[7:4]),
                .h(AsciiCode1[7:0])
            );

    bcd7seg DTs4(
                .b(count[3:0]),
                .h(Account0[7:0])
            );

    bcd7seg DTs5(
                .b(count[7:4]),
                .h(Account1[7:0])
            );


endmodule
