module lab4_3(clk, aclr, led30, led74);
input clk, aclr;
output reg [3:0] led30, led74;
reg cout;
reg ena;
reg [3:0] tmp;
always @(posedge clk, negedge aclr)begin
if (!aclr) begin
	tmp <= 4'h0;
	ena <= 1'b0; end
else if (tmp == 4'h1) begin
			tmp <= 4'h0;
			ena <=1'b1; end
		else begin
				tmp <= tmp +4'h1;
				ena <=1'b0; end
				
end

 always @(posedge clk, negedge aclr)
 if (!aclr) led30<=4'b0;
 else if (ena)
			case (led30)
			4'h9 : begin
						led30<=4'b0;
						cout<=4'h0; end
			4'h8 : begin
						cout<=4'h1;
						led30<=led30+4'h1; end
			default : begin
							led30<=led30+4'h1;
							cout<=4'h0; end
			endcase
always @(posedge clk, negedge aclr)
if(!aclr) led74 <= 4'b0;
else if (ena && cout) begin
								if(led74 == 4'h9) led74 <= 4'h0;
								else led74 <=led74+4'h1; end
endmodule 