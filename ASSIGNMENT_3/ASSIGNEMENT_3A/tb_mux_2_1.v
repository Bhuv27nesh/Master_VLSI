`timescale 1ns/1ns

module tb_mux_2_1;
  reg [1:0] I_tb;
  reg select_tb;
  wire y_tb;

  mux_2_1 m1 (
    .I(I_tb),
    .select(select_tb),
    .y(y_tb)
  );

  initial begin
    $dumpfile("mux_2_1.vcd");
    $dumpvars(0, tb_mux_2_1);

    I_tb = 2'b01; 
	select_tb = 1; #10;
    select_tb = 0; #10;
    select_tb = 1; #10;
    $finish;
  end

endmodule
