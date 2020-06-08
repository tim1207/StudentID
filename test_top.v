module test_top;
  reg reset, clk;
  wire[3:0] hex;
  top t1(hex,clk,reset);
  always #10 clk = ~clk;
  initial begin
    reset = 0; clk = 0;
    #10 reset = 1;
    #500 $stop;
  end
endmodule 