/*
1]write a Verilog code for 4:1 MUX
*/

module mux_4_1
(
input I[3:0],
input select[1:0],
output reg y
);

always@(*)begin
	case(sel)
		2'b00:y<=I[0];
		2'b01:y<=I[1];
		2'b10:y<=I[2];
		2'b11:y<=I[3];
		default:y<=y;
	endcase
end

endmodule
