module shift_rg(ena, clk, key, data, out);
	parameter width = 8;

	input ena, clk, key;
	input [width-1:0] data;
	output reg [width-1:0] out;
   integer i;

	always @ (posedge clk) 
	begin 
		if (ena) 
		begin
		if(!key)
			out <= data;
			else
			begin
			out[0]<=out[width-1];
			for(i=width-1; i>0; i=i-1)
			out[i] <=out[i-1];
		end
		end
	end 

endmodule 