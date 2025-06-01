module delay_element 
(
  input wire clk,       
  input wire sel,      
  input wire a,       
  output reg q        
);
  wire d;              
    
  assign d = (sel == 1'b0) ? a : q;

  always @(posedge clk) begin
    q <= d;
  end
endmodule
