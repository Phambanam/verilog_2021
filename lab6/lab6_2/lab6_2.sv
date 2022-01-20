module lab6_2 (
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "25, 24"*) input reg [1:0] a,
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "49, 46"*) input reg [1:0] b,
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "90, 91"*) input reg [1:0] c,
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "88, 89"*) input reg [1:0] d,
	(*altera_attribute = "-name IO_STANDARD \"2.5 V\"",
    chip_pin = "71, 72"*) output reg [1:0] max,
	(*altera_attribute = "-name IO_STANDARD \"2.5 V\"",
    chip_pin = "69, 70"*) output reg [1:0] max_min,
	(*altera_attribute = "-name IO_STANDARD \"2.5 V\"",
    chip_pin = "67, 68"*) output reg [1:0] min_max,
	(*altera_attribute = "-name IO_STANDARD \"2.5 V\"",
    chip_pin = "65, 66"*) output reg [1:0] min,
	(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"",
    chip_pin = "23"*) input clk, 
	(*altera_attribute = "-name IO_STANDARD \"2.5 V\"",
    chip_pin = "58"*) input pba);

reg [1:0] min1, min2, max1, max2, mid1, mid2;

task sort;
	output reg [1:0] maximum, minimum;
	input reg [1:0] a, b;
	begin 
		maximum <= (a > b) ? a : b;
		minimum <= (a > b) ? b : a;
	end
endtask

always @ (posedge clk, negedge pba) begin 
	if (!pba) begin
		max <= 2'b0;
		max_min <= 2'b0;
		min_max <= 2'b0;
		min <= 2'b0;
	end else begin
		sort(max1, min1, a, b);
		sort(max2, min2, c, d);
		sort(max, mid1, max1, max2);
		sort(mid2, min, min1, min2);
		sort(max_min, min_max, mid1, mid2);
	end
end

endmodule	
