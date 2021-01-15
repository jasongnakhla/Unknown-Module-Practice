----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/28/2019 10:15:22 AM
-- Design Name: 
-- Module Name: fadder - Behavioral
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

entity fadder is
    Port ( start: in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end fadder;

architecture Behavioral of fadder is

begin

process(start)
begin
    if(start = '0') then
        cout <= (a and b) or (a and cin) or (b and cin);
        sum <= a xor b xor cin;
    else
         cout <= '0';
         sum <= '0';  
    end if;
end process;
    

end Behavioral;
