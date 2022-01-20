module lab5_1(arst, ena, clk, da, db, result);
parameter width = 4;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "23"*)
input clk;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "58"*)
input arst;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "64"*)
input ena;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "88, 89, 90, 91"*)
input [width-1:0] da;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "49, 46, 25, 24"*)
input [width-1:0] db;

(*altera_attribute = "-name IO_STANDARD\"3.3-V LVCMOS\"", chip_pin = "65, 66, 67, 68, 69, 70, 71, 72"*)
output [2*width-1:0] result;

wire [width-1:0] da_int, db_int;
wire [2*width-1:0] mult_res;

rgstr #width input_rg_1 (arst, ena, clk , da, da_int);
rgstr #width input_rg_2 (.arst(arst), .ena(ena), .clk(clk), .d(db), .q(db_int));

mult #width mult_ (da_int, db_int, mult_res);

rgstr #(2*width) output_rg (arst, ena, clk, mult_res, result);

endmodule 