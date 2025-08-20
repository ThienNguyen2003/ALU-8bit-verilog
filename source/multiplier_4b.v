module multiplier_4b (in0,in1,out);
input wire [3:0] in0,in1;
output wire [7:0] out;

wire [3:0] m0;
wire [4:0] m1;
wire [5:0] m2;
wire [6:0] m3;

wire [7:0] s1,s2,s3;

assign m0 ={4{in0[0]}} & in1[3:0];
assign m1 ={4{in0[1]}} & in1[3:0];
assign m2 ={4{in0[2]}} & in1[3:0];
assign m3 ={4{in0[3]}} & in1[3:0];

assign s1= m0 + (m1<<1);
assign s2= s1 + (m2<<2);
assign s3 = s2 + (m3<<3);
assign out = s3;

endmodule