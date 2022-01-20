library verilog;
use verilog.vl_types.all;
entity lab1_4_vlg_sample_tst is
    port(
        sw              : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab1_4_vlg_sample_tst;
