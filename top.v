module top(hex,clk,reset);
  output[6:0] hex;
  input clk,reset;
  wire[3:0] hex_in;
  wire clk_out;
  studentID sid(.hex(hex_in),.clk(clk_out),.reset(reset));
   SevenSegmentDecoder ssd(.seg_out(hex) ,.seg_in(hex_in));
  assign clk_out = clk;
   //freq_div_23 fd(.clk_out(clk_out), .clk(clk), .reset(reset));
 endmodule