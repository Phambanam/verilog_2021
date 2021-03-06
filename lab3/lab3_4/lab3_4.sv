module lab3_4(sw76,sw54,sw32,sw10,led76,led54,led32,led10);

input [1:0] sw76,sw54,sw32,sw10;
output reg [1:0] led76,led54,led32,led10;

reg [1:0] current;

always @* begin
led76 = sw76;
led54 = sw54;
led32 = sw32;
led10 = sw10;

if(led76<=led54) begin
	current = led76;
	led76 = led54;
	led54 =current; end
if(led76<=led32) begin
	current = led76;
	led76 = led32;
	led32 = current; end
if(led76<=led10) begin
	current = led76;
	led76 = led10;
	led10 = current; end
if(led54<=led32) begin
	current = led54;
	led54 = led32;
	led32 = current; end
if(led54<=led10) begin
	current = led54;
	led54 = led10;
	led10 = current; end
if(led32<=led10) begin
	current = led32;
	led32 = led10;
	led10 = current; end
end 
endmodule

		
	


