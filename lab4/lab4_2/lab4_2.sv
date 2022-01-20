module lab4_2(sw70,key, clk, led70);
input [7:0] sw70;
input key, clk;
output reg [7:0] led70;

reg ena;
reg [3:0] temp;

initial temp = 4'b0;

always @(posedge clk)
begin
	temp <= temp + 4'h1;
	if (temp == 4'h3) begin
		temp<=4'b0;
		ena <=4'h1; end
	else begin
		ena <= 4'b0; end
end
always @(posedge clk)
begin
if (ena) begin
	if (!key) led70<= sw70;
	else led70 <= {led70[6:0],1'b0}; end
end
endmodule 