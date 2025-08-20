module Mux_8to1(
    input  wire [2:0] select,
    input  wire [7:0] in0, in1, in2, in3, in4, in5, in6, in7,
    output reg  [7:0] out
);

    parameter [2:0] NOT   = 3'b000; 
    parameter [2:0] AND   = 3'b001; 
    parameter [2:0] OR    = 3'b010; 
    parameter [2:0] XOR   = 3'b011; 
    parameter [2:0] ADD   = 3'b100;
    parameter [2:0] SUB   = 3'b101;
    parameter [2:0] MULTI = 3'b110;
    parameter [2:0] DIV   = 3'b111;   
 
    always @(*) begin
        case (select)
            NOT   : out = in0;   // output c?a module NOT
            AND   : out = in1;   // output c?a module AND
            OR    : out = in2;   // output c?a module OR
            XOR   : out = in3;   // output c?a module XOR
            ADD   : out = in4;   // output c?a adder
            SUB   : out = in5;   // output c?a subtractor
            MULTI : out = in6;   // output c?a multiplier
            DIV   : out = in7;   // output c?a divider
            default: out = 8'b00000000;
        endcase
    end

endmodule
