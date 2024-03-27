module ALU(
        input clk,
        input [2:0] sel,
        input [3:0] A,
        input [3:0] B,
        output reg [3:0] O,
        output reg overflow,
        output reg zero,
        output reg carry
);

    always @(posedge clk) begin
        overflow <= 0;
        carry <= 0;
        case (sel)
            3'b000 : // add
                begin
                    {carry, O} <= A + B;
                    overflow <= (A[3] == B[3]) && (A[3] != O[3]);
                end
            3'b001 : // sub
                begin
                    {carry, O} <= A - B;
                    overflow <= (A[3] == ~B[3]) && (A[3] != O[3]);
                end
            3'b010 : // not
                begin
                    O <= ~ A;
                end
            3'b011 : // and
                begin
                    O <= A & B;
                end
            3'b100 : // or
                begin
                    O <= A | B;
                end
            3'b101 ://xor
                begin
                    O <= A ^ B;
                end
            3'b110 :// compare, if A<B, then O=1, else O = 0
                begin
                    O <= ($signed(A) < $signed(B)) ? 1 : 0;
                end
            3'b111: // equal, if A==B, then O = 1, else O = 0;
                begin
                    O <= ($signed(A) == $signed(B)) ? 1:0;
                end
        endcase
        zero <= ~ (| O);
    end

endmodule
