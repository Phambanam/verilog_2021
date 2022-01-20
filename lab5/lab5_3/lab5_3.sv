module lab5_3 (
(*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", 

chip_pin = "49, 46, 25, 24"*) 

   input [3:0] ina,
 (*altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", 

chip_pin = "88, 89, 90, 91"*) 
   input [3:0] inb,
 (*altera_attribute = "-name IO_STANDARD \"2.5-V\"", 
chip_pin = "64"*) 

   input pba,
(*altera_attribute = "-name IO_STANDARD \"2.5-V\"", 
chip_pin = "69, 70, 71, 72"*) 

   output [3:0] led
 );


mux2_1 mux0 (.ina(ina[0]), .inb(inb[0]), .pba(pba), .res(led[0]));
mux2_1 mux1 (.ina(ina[1]), .inb(inb[1]), .pba(pba), .res(led[1]));
mux2_1 mux2 (.ina(ina[2]), .inb(inb[2]), .pba(pba), .res(led[2]));
mux2_1 mux3 (.ina(ina[3]), .inb(inb[3]), .pba(pba), .res(led[3]));

endmodule 