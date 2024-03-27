module mux2x1_2bit(a,b,sel,out);
    input   [1:0] a;
    input   [1:0] b;
    input   sel;
    output  [1:0] out;
    // sel = 0, then choose a
    // sel = 1, then choose b
    assign  out[0] = (~sel & a[0]) | (sel & b[0]);
    assign  out[1] = (~sel & a[1]) | (sel & b[1]);
endmodule
