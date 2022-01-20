library verilog;
use verilog.vl_types.all;
entity lab4_2_vlg_check_tst is
    port(
        ena             : in     vl_logic;
        led70           : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end lab4_2_vlg_check_tst;
