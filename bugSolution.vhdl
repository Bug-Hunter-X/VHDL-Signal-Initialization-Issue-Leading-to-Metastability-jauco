```vhdl
entity example is
    Port ( 
        i_clk : in  STD_LOGIC;
        i_rst : in  STD_LOGIC;
        i_data : in  STD_LOGIC_VECTOR(7 downto 0);
        o_data : out  STD_LOGIC_VECTOR(7 downto 0)
    );
end entity;

architecture behavioral of example is
    signal s_data : STD_LOGIC_VECTOR(7 downto 0) := "00000000"; -- Correct Initialization
begin
    process (i_clk, i_rst)
    begin
        if i_rst = '1' then
            s_data <= "00000000";
        elsif rising_edge(i_clk) then
            s_data <= i_data;
        end if;
    end process;
    o_data <= s_data;
end architecture;
```