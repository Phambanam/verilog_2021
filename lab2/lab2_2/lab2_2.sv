module lab2_2
(
input [3:0] sw,
input sw7,
output [7:0] led
);

wire [7:0] a;


assign a= {4'b0000,sw};
assign led =(sw7)? ((a<<3)+(a<<1)+a):((a<<3)+(a<<1));

endmodule
