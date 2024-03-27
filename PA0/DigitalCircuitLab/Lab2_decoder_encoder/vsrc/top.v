module top(
        input [6:0] in,
        input en,
        output reg [2:0] code,
        output reg indicate,
        output [7:0] HEX0
    );

    wire [2:0] code_temp;

    encode83 encode83_inst(.in(in), .en(en), .code(code_temp), .indicate(indicate));
    decoder31 decoder31_inst(.code(code_temp), .HEX0(HEX0));

    assign code = code_temp;

endmodule