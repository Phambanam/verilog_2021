module lab6_4 (sel, x, y, z, q1, q2, q3);
input [2:0] sel;
input x, y, z;
output reg q1, q2, q3;

always @* begin
if(sel == 3'h1) q1 = x;
else if(sel == 2'h2) q2 = y;
	else if(sel == 3'h3) q3 =z;
	else
	begin 
		q1 = 1'h0;
		q2 = 1'h0;
		q3 = 1'h0;
	end
end
endmodule
