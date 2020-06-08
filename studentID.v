module studentID(hex,clk,reset);
  input reset,clk;
  output [3:0] hex;
  wire [3:0] Q_b,J,K;
  
  JK_FF j0(.Q(hex[0]),.Q_b(Q_b[0]),.J(J[0]),.K(K[0]),.clk(clk),.reset(reset));
  JK_FF j1(.Q(hex[1]),.Q_b(Q_b[1]),.J(J[1]),.K(K[1]),.clk(clk),.reset(reset));
  JK_FF j2(.Q(hex[2]),.Q_b(Q_b[2]),.J(J[2]),.K(K[2]),.clk(clk),.reset(reset));
  JK_FF j3(.Q(hex[3]),.Q_b(Q_b[3]),.J(J[3]),.K(K[3]),.clk(clk),.reset(reset));
  
  
  assign J[3] = (hex[1]) | (~hex[0]);
  assign K[3] = (~hex[1] & ~hex[0]);
  
  assign J[2] =  (hex[3] & ~hex[1] & ~hex[0]);
  assign K[2] = hex[3];
  
  assign J[1] = (hex[0]);
  assign K[1] = (hex[0]);
  
  assign J[0] = (~hex[2]);
  assign K[0] = (hex[1]) | (hex[3]);
endmodule