module lab7_1 
#(parameter WIDTH=4)
((* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "49, 46, 25, 24"*)
input [WIDTH-1:0] da,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "88, 89, 91, 90"*)
input [WIDTH-1:0] db,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23"*)
input clk,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "65, 66, 67, 68, 69, 70, 71, 72"*)
output reg [2*WIDTH-1:0] q);

reg [2*WIDTH-1:0] rom[2**(2*WIDTH)-1:0];
reg [WIDTH-1:0] ta, tb, ia, jb;

initial begin: INIT
	integer i, j;
	for (i=0; i<2**WIDTH; i=i+1)
		for(j=0; j<2**WIDTH; j=j+1) begin
			ia=i;
			jb=j;
			rom[{ia,jb}]= ia*jb;
		end
end

always @(posedge clk) begin
	ta<=da;
	tb<=db;
end

always @(posedge clk)
	q<=rom[{ta,tb}];
endmodule
