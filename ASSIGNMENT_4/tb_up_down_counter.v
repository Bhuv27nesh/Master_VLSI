`timescale 1ns/1ns

module tb_up_down_counter;

  reg clk_tb;
  reg reset_tb;
  reg mode_tb;
  wire [3:0] count_tb;

  up_down_counter udc (
    .clk(clk_tb),
    .reset(reset_tb),
    .mode(mode_tb),
    .count(count_tb)
  );

  always #5 clk_tb = ~clk_tb;

  initial begin
    $dumpfile("up_down_counter.vcd");
    $dumpvars(0, tb_up_down_counter);

    clk_tb = 0;
    reset_tb = 1;
    mode_tb = 1; #10;
    
    reset_tb = 0; 
    mode_tb = 1;#50;

    mode_tb = 0;#50;

    reset_tb = 1; #10;
    reset_tb = 0; #10;

    mode_tb = 1;#50;

    $finish;
  end

endmodule
