library verilog;
use verilog.vl_types.all;
entity lab2_1_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab2_1_vlg_check_tst;
