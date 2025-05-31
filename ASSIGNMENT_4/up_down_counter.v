/*
4]Implementation of Up and down counter
*/


module up_down_counter
(
input mode,
input clk,reset,
output reg [3:0]count
);

always@(posedge clk)begin
	if(reset)
		count <= 4'd0;
	else begin
		if(mode == 1'b1)
			count <= count + 1'b1;
		else
			count <= count - 1'b1;
	end
		
end

endmodule
