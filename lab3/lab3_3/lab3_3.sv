module lab3_3(sw54,sw32,sw10,led10,led32);

input [1:0] sw54,sw32,sw10;
output reg [1:0] led10, led32;

always @*
case(sw54)
	sw32 : 
			begin
				 led10 = sw54;
				 if(sw54 == sw10) 
					led32 = 2'b11;
				  else led32 = 2'b10;
			 end
	 sw10 : 
			begin 
				led10 = sw54;
				if(sw10 == sw54)
					led32 = 2'b11;
				else led32 = 2'b10;
			end
	 default :
			if(sw32 == sw10)
				begin
						led10 = sw32;
						led32 = 2'b10;
				end
			else 
			 begin
			    led32 = 2'b00;
				 led10 = sw54;
			  end
endcase
endmodule 
				
		 