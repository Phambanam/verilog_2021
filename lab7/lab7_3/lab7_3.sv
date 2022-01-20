module lab7_3
#(parameter dir="table_2_10")
((* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "23"*)
input clk,
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "91, 49, 46, 25, 24"*)
input [4:0] bc,
(* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "65, 66, 67, 68, 69, 70, 71, 72"*)
output [7:0] q);

rom #dir mem(clk, bc, q);
endmodule

module rom
#(parameter dir)
(input clk, input [4:0] rd_addr, output reg [7:0] q);
reg [4:0] mem [31:0];

generate initial begin
	if (dir == "table_2_10") $readmemb("table_2_10.txt",mem);
	else if (dir == "grey_code") $readmemb("grey_code.txt",mem);
	else $readmemb("codes.txt",mem);
end
endgenerate

always @(posedge clk) begin
	q <= mem[rd_addr];
end
endmodule
