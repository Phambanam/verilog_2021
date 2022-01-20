library verilog;
use verilog.vl_types.all;
entity lab1_1_vlg_sample_tst is
    port(
        sw0             : in     vl_logic;
        sw1             : in     vl_logic;
        sw2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end lab1_1_vlg_sample_tst;
