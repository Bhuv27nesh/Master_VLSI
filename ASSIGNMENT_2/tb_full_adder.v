`timescale 1ns/1ns
//testbench
module tb_full_adder;
reg A,B,Cin;
wire Sum,Cout;

full_adder FA1(.a(A),.b(B),.cin(Cin),.sum(Sum),.cout(Cout));

initial begin
$dumpfile("full_adder.vcd");
$dumpvars(0,tb_full_adder);
end

initial begin
	A = 1'b0; B = 1'b0; Cin = 1'b0;#10;
	A = 1'b1; B = 1'b0; Cin = 1'b0;#10;
	A = 1'b0; B = 1'b1; Cin = 1'b0;#10;
	A = 1'b1; B = 1'b1; Cin = 1'b0;#10;
	A = 1'b0; B = 1'b0; Cin = 1'b1;#10;
	A = 1'b1; B = 1'b0; Cin = 1'b1;#10;
	A = 1'b0; B = 1'b1; Cin = 1'b1;#10;
	A = 1'b1; B = 1'b1; Cin = 1'b1;#10;
end

endmodule
