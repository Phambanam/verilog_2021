library verilog;
use verilog.vl_types.all;
entity lab2_3_vlg_check_tst is
    port(
        led             : in     vl_logic_vector(5 downto 0);
        led76           : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab2_3_vlg_check_tst;
