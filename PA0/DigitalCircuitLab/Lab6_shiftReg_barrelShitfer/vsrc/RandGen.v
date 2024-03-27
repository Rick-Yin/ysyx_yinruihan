module RandGen(
        input clk,
        input rst,
        input [7:0] initVal,
        output [7:0] out
    );

    reg [7:0] Regs;

    always @(posedge clk) begin
        if (rst) begin
            Regs <= initVal;
        end
        else begin
            Regs <= {Regs[3] ^ Regs[2] ^ Regs[1] ^ Regs[0], Regs[7:1]};
        end
    end
    assign out = Regs;
endmodule
