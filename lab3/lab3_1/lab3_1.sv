module lab3_1(sw74, sw30,led74,led30);

input [3:0] sw74, sw30;
output reg [3:0] led74, led30;

always
begin
led74 = sw74/sw30;
led30 = {sw74, 4'h0} / sw30;
end

endmodule 