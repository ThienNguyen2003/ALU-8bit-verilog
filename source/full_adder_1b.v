module full_adder_1b(in0,in1,cin,sum,cout);
input wire in0,in1,cin;
output wire sum,cout;

assign sum = in0 ^ in1 ^ cin;
assign cout = ((in0 ^ in1) & cin) | (in0 & in1);

endmodule