/*
2]write a Verilog code for full adder with testbench and take the snap shot of it 
*/

module full_adder
(
input a,b,cin,
output sum,cout
);

assign sum = a ^ b ^ cin;
assign carry = a & b | cin & (a | b);

endmodule
