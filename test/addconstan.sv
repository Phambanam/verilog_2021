
module addconstan (
    output reg [99:0] state_out,
    input wire [99:0] state_in,
    input wire [4:0]v
);
    reg [3:0] IC[4:0];
    reg [3:0] RC[11:0];
	initial begin
     IC[4'h0] = 4'h0;
     IC[4'h1] = 4'h1;
     IC[4'h2] = 4'h3;
     IC[4'h3] = 4'h6;
     IC[4'h4] = 4'h4;

     RC[4'h0] = 4'h1;
     RC[4'h1] = 4'h3;
     RC[4'h2] = 4'h7;
     RC[4'h3] = 4'hE;
     RC[4'h4] = 4'hD;
     RC[4'h5] = 4'hB;
     RC[4'h6] = 4'h6;
     RC[4'h7] = 4'hC;
     RC[4'h8] = 4'h9;
     RC[4'h9] = 4'h2;
     RC[4'h10] = 4'h5;
     RC[4'h11] = 4'hA;
   end
// bien doi dau vao thanh ma tran state
    always @*
	 begin 
	 integer i,j;
    reg [3:0]state_2d [4:0][4:0];
    reg [3:0]state_2d_out[4:0][4:0];
  
    for (i =0 ;i<4 ;i=i+1 ) begin
        for(j=0; j<4;j++)begin
		  integer x = (25-i*4-j)*4-1;
		  integer y =  (25-i*4-j)*4-4;
            state_2d[i][j] = state_in[x : y];
        end
    end 

    for(i=0; i< 4; i=i+1)begin
        for(j=0;j<4;j=j+1)begin
            if (j == 0) begin
                state_2d_out[i][j] = state_2d[i][j] ^ IC[i] ^ RC[v];
            end
            else begin
                state_2d_out[i][j] = state_2d[i][j];
            end
        end
    end
// bien doi ve lai mang 1 chieu
   for(i= 0; i < 4; i= i+ 1)begin
       for(j=0; j < 4; j= j+1) begin
		 integer x = (25-i*4-j)*4-1;
		 integer y =  (25-i*4-j)*4-4;
       state_out[ x : y] = state_2d_out[i][j];
       end
   end
  end 
endmodule 