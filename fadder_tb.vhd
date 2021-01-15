----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/11/2019 10:05:02 AM
-- Design Name: 
-- Module Name: fadder_tb - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity fadder_tb is
--  Port ( );
end fadder_tb;

architecture Behavioral of fadder_tb is

component fadder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

signal a_sig, b_sig, cin_sig, sum_sig, cout_sig: std_logic := '0';
begin

process

    begin
    
    a_sig <= '0';
    b_sig <= '0';
    cin_sig <= '0';
    wait for 10ns;
    
    a_sig <= '0';
    b_sig <= '0';
    cin_sig <= '1';
    wait for 10ns;
    
    a_sig <= '0';
    b_sig <= '1';
    cin_sig <= '0';
    wait for 10ns;
    
    a_sig <= '0';
    b_sig <= '1';
    cin_sig <= '1';
    wait for 10ns;
    
    a_sig <= '1';
    b_sig <= '0';
    cin_sig <= '0';
    wait for 10ns;
    
    a_sig <= '1';
    b_sig <= '0';
    cin_sig <= '1';
    wait for 10ns;
    
    a_sig <= '1';
    b_sig <= '1';
    cin_sig <= '0';
    wait for 10ns;
    
    a_sig <= '1';
    b_sig <= '1';
    cin_sig <= '1';
    wait for 10ns;
    
    wait;
    
end process;

uut: fadder port map (a => a_sig, b => b_sig, cin => cin_sig, sum => sum_sig, cout => cout_sig);

end Behavioral;
