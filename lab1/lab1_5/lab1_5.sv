module lab1_5

(input [1:0] sw,
input cin,
output [1:0] led);

assign led[0] = ~sw[1]&(sw[0]^cin)|sw[1]&(sw[0]~^cin);
assign led[1] = sw[0]&cin | sw[1]&(sw[0]^cin);
 
 endmodule
 