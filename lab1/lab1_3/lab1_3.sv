module lab1_3
(
input [3:0] sw74,sw30,
output [3:0] led
);

wire sel;

assign sel = sw74 >= sw30;

assign led=(sel)?sw74:sw30;

endmodule
