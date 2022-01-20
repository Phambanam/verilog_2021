library verilog;
use verilog.vl_types.all;
entity lab3_2_vlg_sample_tst is
    port(
        sw30            : in     vl_logic_vector(3 downto 0);
        sw76            : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab3_2_vlg_sample_tst;
