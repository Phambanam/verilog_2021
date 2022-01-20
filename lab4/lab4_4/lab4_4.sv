module lab4_4(
(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "23" *)
input clk,

(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "64" *)
input key,

(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "24, 25, 46, 49" *)
input [3:0] sw30,

(* altera_attribute = "-name IO_STANDARD \"3.3-V LVTTL\"", chip_pin = "72, 71" *)
output reg [1:0] led);

reg [1:0] state;

parameter s0 = 0, s1 = 1, s2 =2;

always @(posedge clk , negedge key) begin
if (!key) state<=s0;
else 
	case (state)
		s0 : if (sw30 == 4'b0001) state <= s1;
		s1 : if (sw30 == 4'b0010) state <= s2;
		s2 : begin 
					if (sw30 == 4'b0100) state <= s1;
					else if (sw30 == 4'b1000) state <= s0; 
				end
	endcase
end

always @(state) begin
case (state)
	s0 : led = 2'b01;
	s1 : led = 2'b10;
	s2 : led = 2'b11;
	default : led = 2'b00;
endcase
end

endmodule 