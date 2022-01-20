module lab1_4
( input sw[1:0],
	output led[3:0]);
	
	assign led[0] = ~sw[0] & ~sw[1];
	assign led[1] =  sw[0] & ~sw[1];
	assign led[2] = ~sw[0] &  sw[1];
	assign led[3] =  sw[0] &  sw[1];
	
	endmodule
	
	