----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2019 03:24:41 PM
-- Design Name: 
-- Module Name: CA1_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CA1_tb is
--  Port ( );
end CA1_tb;

architecture Behavioral of CA1_tb is

signal x_in, y_in: STD_LOGIC_VECTOR (3 downto 0);
signal p_out: STD_LOGIC_VECTOR (7 downto 0);

component CA1 is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           p : out STD_LOGIC_VECTOR (7 downto 0));
end component;

begin

UUT : CA1
port map (x => x_in, y => y_in, p => p_out);

STIM : process

    begin
    x_in <= "0010";
    y_in <= "0000";
    wait for 10ns;
    
    x_in <= "0010";
    y_in <= "0001";
    wait for 10ns;
    
    x_in <= "0010";
    y_in <= "0010";
    wait for 10ns;
    
    x_in <= "0100";
    y_in <= "0010";
    wait for 10ns;
    
    x_in <= "0100";
    y_in <= "0100";
    wait for 10ns;
    
    x_in <= "1000";
    y_in <= "0010";
    wait for 10ns;
    
    x_in <= "1000";
    y_in <= "0100";
    wait for 10ns;
    
    x_in <= "1010";
    y_in <= "1000";
    wait for 10ns;
    
    x_in <= "1110";
    y_in <= "0010";
    wait for 10ns;
    
    x_in <= "1111";
    y_in <= "0110";
    wait for 10ns;
    
    x_in <= "1100";
    y_in <= "1110";
    
    x_in <= "1111";
    y_in <= "1110";
    wait for 10ns;
    wait for 10ns;
    
    wait;
    
end process STIM;

end Behavioral;