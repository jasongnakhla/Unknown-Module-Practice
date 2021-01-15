----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/04/2019 10:11:33 AM
-- Design Name: 
-- Module Name: CA1 - Behavioral
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

entity CA1 is
    Port ( x : in STD_LOGIC_VECTOR (3 downto 0);
           y : in STD_LOGIC_VECTOR (3 downto 0);
           p : out STD_LOGIC_VECTOR (7 downto 0));
end CA1;

architecture Behavioral of CA1 is

component fadder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           cin : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

component hadder is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           sum : out STD_LOGIC;
           cout : out STD_LOGIC);
end component;

Signal and00, and10, and01, and20, and11, and30, and21, and31, and02, and12, and22, and32, and03, and13, and23, and33: std_logic;
Signal s10, s11, s12, s13, s20, s21, s22, s23, s30, s31, s32, s33: std_logic;
Signal c10, c11, c12, c13, c20, c21, c22, c23, c30, c31, c32, c33: std_logic;

begin

and00 <= x(0) and y(0);
p(0) <= s10;

and10 <= x(1) and y(0);
and01 <= x(0) and y(1);
p(1) <= s10;
ha10_ins: hadder port map (a => and10, b => and01, sum => s10, cout => c10);

and20 <= x(2) and y(0);
and11 <= x(1) and y(1);
fa11_ins: fadder port map (a => and20, b => and11, cin => c10, sum => s11, cout => c11);

and30 <= x(3) and y(0);
and21 <= x(2) and y(1);
fa12_ins: fadder port map (a => and30, b => and21, cin => c11, sum => s12, cout => c12);

and31 <= x(3) and y(1);
ha13_ins: hadder port map (a => c12, b => and31, sum => s13, cout => c13);

and02 <= x(0) and y(2);
p(2) <= s20;
ha20_ins: hadder port map (a => s11, b => and02, sum => s20, cout => c20);

and12 <= x(1) and y(2);
fa21_ins: fadder port map (a => s12, b => and12, cin => c20, sum => s21, cout => c21);

and22 <= x(2) and y(2);
fa22_ins: fadder port map (a => s13, b => and22, cin => c21, sum => s22, cout => c22);

and32 <= x(3) and y(2);
fa23_ins: fadder port map (a => c13, b => and32, cin => c22, sum => s23, cout => c23);

and03 <= x(0) and y(3);
p(3) <= s30;
ha30_ins: hadder port map (a => s21, b => and03, sum => s30, cout => c30);

and13 <= x(1) and y(3);
p(4) <= s31;
fa31_ins: fadder port map (a => s22, b => and13, cin => c30, sum => s31, cout => c31);

and23 <= x(2) and y(3);
p(5) <= s32;
fa32_ins: fadder port map (a => s23, b => and23, cin => c31, sum => s32, cout => c32);

and33 <= x(3) and y(3);
p(6) <= s33;
fa33_ins: fadder port map (a => c23, b => and33, cin => c32, sum => s33, cout => c33);
p(7) <= c33;

end Behavioral;
