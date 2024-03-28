module bcd7seg(
        input  [2:0] b,
        output reg [7:0] h
    );

    //  --0--
    //  |   |
    //  5   1
    //  |-6-|
    //  4   2
    //  |   |
    //  --3--

    always @(b) begin
        case (b)
            3'd0 :
                h = 8'b0000_0010;
            3'd1 :
                h = 8'b1001_1110;
            3'd2 :
                h = 8'b0010_0100;
            3'd3 :
                h = 8'b0000_1100;
            3'd4 :
                h = 8'b1001_1000;
            3'd5 :
                h = 8'b0100_1000;
            3'd6 :
                h = 8'b0100_0000;
            3'd7 :
                h = 8'b0001_1110;
            // 4'd8 :
            //     h = 7'b1111111;
            // 4'd9 :
            //     h = 7'b1101111;
            default h = 8'b00000000;
        endcase
    end


endmodule