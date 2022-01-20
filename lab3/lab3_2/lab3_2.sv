module lab3_2(sw30,sw76,ss_out,led);

input [3:0] sw30;
input [1:0] sw76;
output reg [6:0] ss_out ;
output reg [3:0] led;
reg [6:0] ss_arr[15:0];

initial begin
ss_arr[0] = 7'h40;
ss_arr[1] = 7'h79;
ss_arr[2] = 7'h24;
ss_arr[3] = 7'h30;
ss_arr[4] = 7'h19;
ss_arr[5] = 7'h12;
ss_arr[6] = 7'h02;
ss_arr[7] = 7'h78;
ss_arr[8] = 7'h00;
ss_arr[9] = 7'h10;
ss_arr[10] = 7'h08;
ss_arr[11] = 7'h03;
ss_arr[12] = 7'h46;
ss_arr[13] = 7'h21;
ss_arr[14] = 7'h06;
ss_arr[15] = 7'h0e;
end

always @*
	begin
		ss_out = ~ss_arr[sw30];
		led  = {4{1'b0}};
		case(sw76)
			2'b00: led[3] = 1'b1;
			2'b01: led[2] = 1'b1;
			2'b10: led[1] = 1'b1;
			2'b11: led[0] = 1'b1;
			endcase
	end
endmodule
