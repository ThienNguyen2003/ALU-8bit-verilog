
module divider_4b( dividend, divisor,quotient);
 input  wire [3:0] dividend;
 input  wire [3:0] divisor;
 output wire [7:0] quotient;

assign quotient  = dividend / divisor;
endmodule