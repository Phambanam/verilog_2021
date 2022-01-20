module lab6_1 (d_in, to_gray, to_bin);
parameter W = 4;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "49, 46, 25, 24"*)
input [W-1:0] d_in;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "65, 66, 67, 68"*)
output [W-1:0] to_gray;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "69, 70, 71, 72"*)
output [W-1:0] to_bin;


function [W-1:0] convert;
input dir;
input [W-1:0] a;
reg [W-1:0] q;
reg [W-1:0] current;
	integer i;
begin 
	if(dir)
		for(i=0; i<=W-1; i=i+1)
			q[i]=^(a>>i);
	else 
		for(i=W-1; i>=0; i=i-1) begin
			current = a>>i;
			q[i]=current[0]^current[1];end
	convert=q;
end
endfunction

assign to_gray = convert(0,d_in);
assign to_bin = convert(1,to_gray);

endmodule
