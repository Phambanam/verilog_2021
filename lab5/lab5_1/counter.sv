module counter (
	input clk,
	output reg ena
);
	parameter WIDTH = 3;
	parameter COUNT = 4;

	reg [WIDTH-1:0] tmp;

	always @ (posedge clk)
	begin
		tmp <= tmp + 1'b1;
	
		if (tmp == COUNT - 1) 
		begin
			tmp <= 1'b0;
			ena <= 1'b1;
		end else 
			ena <= 1'b0;
	end

endmodule	