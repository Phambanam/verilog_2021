module lab2_3
(
input [1:0] sw76,sw54,sw32,sw10,
output [1:0] led76,
output [5:0] led
);

wire [1:0] a;
wire [1:0] b;

assign a=(sw76>=sw54)?sw76:sw54;
assign b=(sw32>=sw10)?sw32:sw10;
assign led76 = (a>=b)?a:b;
assign led = {6{1'b1}}; 

endmodule
