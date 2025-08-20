module full_adder_4b(in0, in1, result);
	input [3:0] in0;
	input [3:0] in1;
	output [7:0] result;

	wire c1, c2, c3, cout;
	wire [3:0] sum;
	assign result = {cout,sum};
	full_adder_1b fa0(in0[0], in1[0], 0, sum[0], c1);
	full_adder_1b fa1(in0[1], in1[1], c1, sum[1], c2);
	full_adder_1b fa2(in0[2], in1[2], c2, sum[2], c3);
	full_adder_1b fa3(in0[3], in1[3], c3, sum[3], cout);

endmodule
