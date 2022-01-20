library verilog;
use verilog.vl_types.all;
entity lab2_4_vlg_sample_tst is
    port(
        sw20            : in     vl_logic_vector(2 downto 0);
        sw75            : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab2_4_vlg_sample_tst;
