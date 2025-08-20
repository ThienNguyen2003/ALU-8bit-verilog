`timescale 1ns/1ps

module top_ALU_8b_tb;
reg  [2:0] opcode;
    reg  [3:0] A,B;
    wire [7:0] OUT;
top_ALU_8b uut(.A(A),.B(B),.opcode(opcode),.OUT(OUT));

initial begin 
	A=4'b1111; //A=15
	B=4'b1010; //B =10
	
	opcode = 3'b000; #10;
	opcode = 3'b001; #10;
	opcode = 3'b010; #10;
	opcode = 3'b011; #10;
	opcode = 3'b100; #10;
	opcode = 3'b101; #10;
	opcode = 3'b110; #10;
	opcode = 3'b111; 
end
endmodule
