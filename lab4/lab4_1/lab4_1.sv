module lab4_1(clk, sclr, asset, ena, load, dir, din,q);
input asset, ena, sclr, clk,load, dir;
input [3:0] din;
output reg [3:0] q;
reg cout;

reg [24:0] tmp;

initial tmp = 25'b0;

always @(posedge clk, negedge asset)
	if(asset == 0) begin 
		q <= 4'h8;end
	else if(ena ) 
				casex({sclr,load}) 
					2'b0x: q <= 4'h0;
					2'b11 : if (dir)
								if(q == 4'hf) q <= 0;
								else q <= q + 4'h1;
							 else 
								if (q == 0) q <= 4'hf;
								else q <= q - 4'h1;
					2'b10 : if(din <= 4'hf ) q <= din; else q <= 4'hf;
				endcase
always @(posedge clk)
begin
	tmp <= tmp + 4'h1;
	if(tmp == 25'd24999999) begin
		tmp <= 25'b0;
		cout <= 1'b1;end
	else cout <= 1'b0;	
end

endmodule

 
	