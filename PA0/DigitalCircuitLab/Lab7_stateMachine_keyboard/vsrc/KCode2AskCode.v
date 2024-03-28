module KCode2AskCode(
        input clk,
        input ready,
        input [7:0] keycode,
        output reg [7:0] assiccode
    );

    always @(posedge clk) begin
        if ( ready ) begin
            case (keycode)
                8'h1c:
                    assiccode = 8'h61; // a
                8'h32:
                    assiccode = 8'h62; // b
                8'h21:
                    assiccode = 8'h63; // c
                8'h23:
                    assiccode = 8'h64; // d
                8'h24:
                    assiccode = 8'h65; // e
                8'h2b:
                    assiccode = 8'h66; // f
                8'h34:
                    assiccode = 8'h67; // g
                8'h33:
                    assiccode = 8'h68; // h
                8'h43:
                    assiccode = 8'h69; // i
                8'h3b:
                    assiccode = 8'h6a; // j
                8'h42:
                    assiccode = 8'h6b; // k
                8'h4b:
                    assiccode = 8'h6c; // l
                8'h3a:
                    assiccode = 8'h6d; // m
                8'h31:
                    assiccode = 8'h6e; // n
                8'h44:
                    assiccode = 8'h6f; // o
                8'h4d:
                    assiccode = 8'h70; // p
                8'h15:
                    assiccode = 8'h71; // q
                8'h2d:
                    assiccode = 8'h72; // r
                8'h1b:
                    assiccode = 8'h73; // s
                8'h2c:
                    assiccode = 8'h74; // t
                8'h3c:
                    assiccode = 8'h75; // u
                8'h2a:
                    assiccode = 8'h76; // v
                8'h1d:
                    assiccode = 8'h77; // w
                8'h22:
                    assiccode = 8'h78; // x
                8'h35:
                    assiccode = 8'h79; // y
                8'h1a:
                    assiccode = 8'h7a; // z
                8'h45:
                    assiccode = 8'h30; // 0
                8'h16:
                    assiccode = 8'h31; // 1
                8'h1e:
                    assiccode = 8'h32; // 2
                8'h26:
                    assiccode = 8'h33; // 3
                8'h25:
                    assiccode = 8'h34; // 4
                8'h2e:
                    assiccode = 8'h35; // 5
                8'h36:
                    assiccode = 8'h36; // 6
                8'h3d:
                    assiccode = 8'h37; // 7
                8'h3e:
                    assiccode = 8'h38; // 8
                8'h46:
                    assiccode = 8'h39; // 9
                default:
                    assiccode = 8'h00;
            endcase
        end
    end

endmodule
