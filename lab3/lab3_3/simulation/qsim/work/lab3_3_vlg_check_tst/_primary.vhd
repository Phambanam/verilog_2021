library verilog;
use verilog.vl_types.all;
entity lab3_3_vlg_check_tst is
    port(
        led10           : in     vl_logic_vector(1 downto 0);
        led32           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab3_3_vlg_check_tst;
