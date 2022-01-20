module player(
    input [63:0] datain,
    output [63:0] dataout
    );
genvar i;
generate
       for(i =0;i<64; i = i + 1) begin : generate_block_identifier
        dataout[(i*16)/64+(i*16)%64] = dataout[i];
       end
endgenerate
endmodule