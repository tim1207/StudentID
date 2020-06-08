module JK_FF(Q,Q_b,J,K,clk,reset);
  output Q,Q_b;
  input J,K,clk,reset;
  reg Q;
  assign Q_b=~Q;
  always@(posedge clk or negedge reset)
  if(~reset)
    Q<=1'b0;
else
    case ({J,K})
      2'b00:Q<=Q;
      2'b01:Q<=1'b0;
      2'b10:Q<=1'b1;
      2'b11:Q<=~Q;  
  endcase
endmodule