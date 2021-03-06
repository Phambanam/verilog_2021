module lab7_2 
#(parameter div_by=25000000, parameter N=4)
((* altera_attribute = "-name IO_STANDARD \"3.3-V LVCMOS\"", chip_pin = "23"*) input clk,
(* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "58"*) input ARSTn,
(* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "64"*) input WEn,
(* altera_attribute = "-name IO_STANDARD \"2.5-V\"", chip_pin = "69, 70, 71, 72"*) output reg [N-1:0] q);
wire ena;
reg [N-1:0] d, a, pre_q;

div_counter #div_by cnt_d (clk, ena);
counter #N data (clk, ARSTn, ena, d);
counter #N adr (clk, ARSTn, ena, a);
sp_ram_rdwo #(2**N, N) RAM (clk, WEn, d, a, pre_q);

always @* begin
	if (ARSTn) q <= pre_q;
	else q <= {N{1'b1}};
end
endmodule

module div_counter
#(parameter div_by=25000000)
(input clk, output c_out);
reg[31:0] cnt;

initial @* begin
	cnt = 0;
	c_out = 1'b0;
end

assign c_out=(cnt=={div_by});
always @(posedge clk) begin
	if (cnt!={div_by}) cnt <= cnt + 1'b1;
	else cnt <= 1'b0;
end
endmodule

module counter
#(parameter N=4)
(input clk, rst, ena, output reg [N-1:0] cnt);
always @(posedge clk, negedge rst) begin
	if (!rst) cnt <= {N{1'b0}};
	else begin
		if (ena) begin
			if (cnt < 2**N-1) cnt <= cnt + 1'b1;
			else cnt <= {N{1'b0}};
		end
	end
end
endmodule

module sp_ram_rdwo
#(parameter word_num=16, parameter data_W=4)
(input clk, we, input[data_W-1:0] d, input[$clog2(word_num)-1:0] addr,
output reg [data_W-1:0] q);
reg [data_W-1:0] mem [0:word_num-1];

initial begin
	integer i;
	for (i=0; i<word_num; i=i+1)
		if (i%2==0) mem[i] <= {data_W{1'b1}};
		else mem[i] <= {data_W{1'b0}};
end

always @(posedge clk) begin
	if (!we) mem[addr] <= d;
	q <= mem[addr];
end
endmodule
