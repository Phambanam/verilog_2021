module lab2_4
(
input signed [2:0] sw75, sw20,
output signed [7:0] led
);

assign led = (sw75**2)+(2*sw75*sw20)+(sw20**2);

endmodule
