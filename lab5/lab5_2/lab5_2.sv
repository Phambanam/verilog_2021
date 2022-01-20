module lab5_2 (

	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "23"*)
	input clk, 
	
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "58"*)
	input load,
	
	
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "88, 89, 90, 91, 49, 46, 25, 24"*)
	input [WIDTH_REG-1:0] data,
	
	
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "65, 66, 67, 68, 69, 70, 71, 72"*)
	output [WIDTH_REG-1:0] led
);
	parameter COUNT = 4;
	parameter WIDTH = 24;
	parameter WIDTH_REG = 8;

	wire ena; 
	
	counter #(WIDTH, COUNT) cnt (clk, ena);
	
	shift_rg #(WIDTH_REG) srg (ena,clk, load, data, led);
endmodule 