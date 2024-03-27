
module mux4x1_2bit(in1, in2, in3, in4, sel, out);
    input [1:0] in1;
    input [1:0] in2;
    input [1:0] in3;
    input [1:0] in4;
    input [1:0] sel;
    output reg [1:0] out;

    wire [1:0] res12;
    wire [1:0] res34;
    
    mux2x1_2bit u_mux2x1_2bit_12(
        .a   	( in1    ),
        .b   	( in2    ),
        .sel 	( sel[0]  ),
        .out 	( res12  )
    );

    mux2x1_2bit u_mux2x1_2bit_34(
        .a   	( in3    ),
        .b   	( in4   ),
        .sel 	( sel[0]  ),
        .out 	( res34  )
    );
    
    mux2x1_2bit u_mux2x1_2bit_out(
        .a   	( res12  ),
        .b   	( res34    ),
        .sel 	( sel[1]  ),
        .out 	( out  )
    );


endmodule
