module subtractor_4b(in0,in1,result);
	input wire[3:0] in0,in1;
	output wire[7:0] result;

	wire [3:0] in1_2complement ; // bù 2 c?a in1
	assign in1_2complement =~in1+1;  // -A = ~A + 1
	full_adder_4b rca(.in0(in0), .in1(in1_2complement), .result(result));
	
endmodule 