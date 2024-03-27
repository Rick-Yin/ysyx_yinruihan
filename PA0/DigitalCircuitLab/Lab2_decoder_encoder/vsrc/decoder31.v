module decoder31(
    input  [2:0] code,
    output [7:0] HEX0
);

    bcd7seg seg0(code, HEX0); // enable led

endmodule