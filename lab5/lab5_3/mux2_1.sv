module mux2_1 (ina, inb, pba, res);
input ina, inb, pba;
output res;

wire ina_m;
wire inb_m;
wire not_pba;

not not_r (not_pba, pba);

and r1 (ina_m, ina, not_pba);
and r2 (inb_m, inb, pba);
or (res, ina_m, inb_m);
endmodule 