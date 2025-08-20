module multiplier_4b_tb();
	reg[3:0] A,B;
	wire[7:0]P;
multiplier_4b mm(.in0(A), .in1(B), .out(P));

initial 
begin 
A=4'b0011;B=4'd3;
#50;
A=7; B=1;
#50;
A=4'hF;B=15;
end 
endmodule
