module lab1_2
(
input [3:0] sw74,
input [3:0] sw30,
input pba,
output [3:0] led
);

wire [3:0] pba_v;

assign pba_v[0] = pba;
assign pba_v[1] = pba;
assign pba_v[2] = pba;
assign pba_v[3] = pba;

assign led = (sw74 & pba_v)|(sw30 & ~pba_v);

endmodule
