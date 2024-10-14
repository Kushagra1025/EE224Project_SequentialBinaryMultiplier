library ieee;
use ieee.std_logic_1164.all;

entity DUT is
    port (
        clk          : in std_logic;
        reset        : in std_logic;
        start        : in std_logic;
        multiplicand : in std_logic_vector(3 downto 0); -- 4-bit multiplicand
        multiplier   : in std_logic_vector(3 downto 0); -- 4-bit multiplier
        product      : out std_logic_vector(7 downto 0); -- 8-bit product
        ready        : out std_logic
    );
end entity;


architecture Behavioral of DUT is






component multiplier_4bit_fsm is
    port (
        clk        : in std_logic;
        reset      : in std_logic;
        start      : in std_logic;
        B          : in  std_logic_vector(3 downto 0); -- 4-bit multiplier input
		  zero       : out std_logic; -- Signal indicating end of multiplication
        load       : out std_logic;
        shift      : out std_logic;
        add_en     : out std_logic;
        ready      : out std_logic	
    );
end component ;





component multiplier_4bit_datapath is
    port (
        clk          : in std_logic;
        reset        : in std_logic;
        load         : in std_logic;
        shift        : in std_logic;
        add_en       : in std_logic;
        multiplicand : in std_logic_vector(3 downto 0); -- 4-bit multiplicand
        multiplier   : in std_logic_vector(3 downto 0); -- 4-bit multiplier
        product      : out std_logic_vector(7 downto 0) -- 8-bit product
    );
end component;




   
    signal zero, load, add_en, shift : std_logic;
    
begin

   fsm_inst : multiplier_4bit_fsm
        port map (
            clk => clk,
            reset => reset,
            start => start,
            B => multiplier,   -- Connect multiplier to B input of FSM
            ready => ready,
            load => load,
            add_en => add_en,
            shift => shift
        );
   
	datapath_inst : multiplier_4bit_datapath
        port map (
             clk => clk,
            reset => reset,
            load => load,
            shift => shift,
            add_en => add_en,
            multiplicand => multiplicand,
            multiplier => multiplier,
            product => product
        );
		  
 

    
end Behavioral;
