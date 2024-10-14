library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity multiplier_4bit_tb is
end entity;

architecture Behavioral of multiplier_4bit_tb is
    signal clk          : std_logic := '0';
    signal reset        : std_logic := '0';
    signal start        : std_logic := '0';
    signal multiplicand : std_logic_vector(3 downto 0) := (others => '0');
    signal multiplier   : std_logic_vector(3 downto 0) := (others => '0');
    signal product      : std_logic_vector(7 downto 0);
    signal ready        : std_logic;
    
    constant clk_period : time := 10 ns;
	 
	 
	 
	 component DUT is
    port (
        clk          : in std_logic;
        reset        : in std_logic;
        start        : in std_logic;
        multiplicand : in std_logic_vector(3 downto 0); -- 4-bit multiplicand
        multiplier   : in std_logic_vector(3 downto 0); -- 4-bit multiplier
        product      : out std_logic_vector(7 downto 0); -- 8-bit product
        ready        : out std_logic
    );
end component;


begin
    -- Clock process
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Instantiate multiplier
    uut : DUT
        port map (
            clk          => clk,
            reset        => reset,
            start        => start,
            multiplicand => multiplicand,
            multiplier   => multiplier,
            product      => product,
            ready        => ready
        );

    -- Test process
    stimulus : process
    begin
        -- Reset the system
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
		  
        
        -- Test case 1: Multiply 3 (0011) by 2 (0010)
        multiplicand <= "1100"; -- 12 in binary
        multiplier   <= "1101"; -- 13 in binary
        start <= '1';
        wait for 10 ns;
        start <= '0';
        
        -- Wait for result
        wait until ready = '1';
        
        -- Check if the result is correct, report success if true
        if product = "10011100" then  -- 156 in binary
            report "Test case 1: Success!";
        else
            assert false report "Test case 1 failed" severity error;
        end if;
        
        -- End simulation
        wait;
    end process;
end Behavioral;
