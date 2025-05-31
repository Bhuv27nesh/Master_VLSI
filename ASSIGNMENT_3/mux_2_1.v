/*
3](a)design 2x1 mux
*/

module mux_4_1
(
input I[1:0],
input select,
output reg y
);

always@(*)begin
	case(sel)
		1'b0:y<=I[0];
		1'b1:y<=I[1];
		default:y<=y;
	endcase
end

endmodule
