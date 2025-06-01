
/*
3](a)design 2x1 mux
*/

module mux_2_1
(
  input [1:0] I,
  input select,
  output reg y
);

always @(*) begin
  case (select)
    1'b0: y = I[0];
    1'b1: y = I[1];
    default: y = 1'bx;
  endcase
end

endmodule
