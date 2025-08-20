`timescale 1ns/1ps

module Mux_8to1_tb;
    reg  [2:0] select;
    reg  [7:0] in0, in1, in2, in3, in4, in5, in6, in7;
    wire [7:0] out;

    
    Mux_8to1 uut (
        .select(select),
        .in0(in0), .in1(in1), .in2(in2), .in3(in3),
        .in4(in4), .in5(in5), .in6(in6), .in7(in7),
        .out(out)
    );

    initial begin
        
        in0 = 8'b00000001;   
        in1 = 8'b00000010;   
        in2 = 8'b00000100;  
        in3 = 8'b00001000; 
        in4 = 8'b00010000; 
        in5 = 8'b00100000;   
        in6 = 8'b01000000;   
        in7 = 8'b10000000;   
        

        select = 3'b000; #10;
        select = 3'b001; #10; 
        select = 3'b010; #10; 
        select = 3'b011; #10; 
        select = 3'b100; #10; 
        select = 3'b101; #10; 
        select = 3'b110; #10; 
        select = 3'b111; #10; 

        
    end
endmodule
