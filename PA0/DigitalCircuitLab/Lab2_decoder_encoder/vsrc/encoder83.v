module encode83(
        input [6:0] in,
        input en,
        output reg [2:0] code,
        output reg indicate
    );

    always @(in or en) begin
        if (en) begin
            casez (in)
                7'b1??????:
                    code = 3'b111;
                7'b01?????:
                    code = 3'b110;
                7'b001????:
                    code = 3'b101;
                7'b0001???:
                    code = 3'b100;
                7'b00001??:
                    code = 3'b011;
                7'b000001?:
                    code = 3'b010;
                7'b0000001:
                    code = 3'b001;
                7'b0000000:
                    code = 3'b000;
                default:
                    code = 3'b000;
            endcase

            if (in == 7'b0000000)
                indicate = 0;
            else
                indicate = 1;
        end
        else begin
            code = 3'b000;
            indicate = 0;
        end
    end

endmodule

