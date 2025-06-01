`timescale 1ns/1ns

module tb_mux_4_1;
  reg [3:0] I_tb;
  reg [1:0] select_tb;
  wire y_tb;

  mux_4_1 m1 (
    .I(I_tb),
    .select(select_tb),
    .y(y_tb)
  );

  initial begin
    $dumpfile("mux_4_1.vcd");
    $dumpvars(0, tb_mux_4_1);
    
    I_tb = 4'b1011; #10;
    select_tb = 2'b00; #10;
    select_tb = 2'b01; #10;
    select_tb = 2'b10; #10;
    select_tb = 2'b11; #10;

    $finish;
  end
endmodule
