library verilog;
use verilog.vl_types.all;
entity lab4_2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        key             : in     vl_logic;
        sw70            : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end lab4_2_vlg_sample_tst;
