----------------------------------------------------------------------------------
-- Company: 
-- Engineer: Scott L. McKenzie
-- 
-- Create Date: 07/20/2022 07:06:38 PM
-- Design Name: 
-- Module Name: EDGE_DETECTOR - LOGIC
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

entity EDGE_DETECTOR is
    generic (BIT_WIDTH : integer := 8);                
    port (BITS_IN : in STD_LOGIC_VECTOR (BIT_WIDTH-1 downto 0);
          CLK_IN : in STD_LOGIC;
          EDGE_DETECTED : out STD_LOGIC);
end EDGE_DETECTOR;

architecture LOGIC of EDGE_DETECTOR is
    signal TEMP : STD_LOGIC_VECTOR (BIT_WIDTH-1 downto 0);
begin
    process(CLK_IN)
    begin
        if CLK_IN'event and CLK_IN = '1' then
            TEMP <= BITS_IN;
            if TEMP /= BITS_IN then
                EDGE_DETECTED <= '1';
            else
                EDGE_DETECTED <= '0';
            end if;
        end if;
    end process;
end LOGIC;
