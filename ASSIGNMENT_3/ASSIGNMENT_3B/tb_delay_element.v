`timescale 1ns/1ns

module tb_delay_element;
  reg clk_tb;
  reg sel_tb;
  reg a_tb;
  wire q_tb;

  delay_element d1 (
    .clk(clk_tb),
    .sel(sel_tb),
    .a(a_tb),
    .q(q_tb)
  );

  always #5 clk_tb = ~clk_tb;

  initial begin
    $dumpfile("delay_element.vcd");
    $dumpvars(0, tb_delay_element);

    clk_tb = 0;
    sel_tb = 0;
    a_tb = 0;

    #10; a_tb = 1; sel_tb = 0;  
    #10; a_tb = 0;
    #10; sel_tb = 1;           
    #10; a_tb = 1;     
    #10; sel_tb = 0;          
    #10; a_tb = 0;
    #10; sel_tb = 1;
    #10;

    $finish;
  end

endmodule
