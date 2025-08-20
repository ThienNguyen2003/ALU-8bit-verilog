module top_ALU_8b(A,B,opcode,OUT);
input wire [3:0] A,B;
input wire [2:0] opcode;
output wire [7:0] OUT;

wire [7:0] c0,c1,c2,c3,c4,c5,c6,c7;
/*opcode 	Result
000		not A
001		A and B
010		A or B
011		A xor B
100		A add B
101		A sub B
110		A mult B
111		A div B
*/
assign c0 = {4'b0000, ~A};     
assign c1 = {4'b0000, (A & B)}; 
assign c2 = {4'b0000, (A | B)}; 
assign c3 = {4'b0000, (A ^ B)}; 


full_adder_4b A_add_B (.in0(A), .in1(B), .result(c4));
subtractor_4b A_sub_B (.in0(A), .in1(B), .result(c5));
multiplier_4b A_mult_B (.in0(A), .in1(B), .out(c6));
divider_4b A_div_B ( .dividend(A), .divisor(B), .quotient(c7));
Mux_8to1 Mux (.select(opcode), .in0(c0), .in1(c1), .in2(c2), .in3(c3), .in4(c4), .in5(c5), .in6(c6), .in7(c7), .out(OUT));

endmodule
