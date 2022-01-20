library verilog;
use verilog.vl_types.all;
entity lab4_2 is
    port(
        clk             : in     vl_logic;
        key             : in     vl_logic;
        sw70            : in     vl_logic_vector(7 downto 0);
        led70           : out    vl_logic_vector(7 downto 0);
        ena             : out    vl_logic
    );
end lab4_2;
