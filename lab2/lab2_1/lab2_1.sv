module lab2_1
(input signed  [3:0] sw74,sw30,
input key,
output signed [7:0] led
);

assign led = (key)?sw74*sw30:sw74+sw30;

endmodule