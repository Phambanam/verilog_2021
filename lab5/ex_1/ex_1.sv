module ex_1
(input clk,
output reg[3:0] q);
integer i;
initial q = 4'd0;
always @ (posedge clk)
for (i=1; i<=3; i=i+1)
q <= q + 1;
endmodule 