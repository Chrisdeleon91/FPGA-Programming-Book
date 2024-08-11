-- challenge.vhd
-- ------------------------------------
--  Chapter 2 Challenge Template
-- ------------------------------------
-- Author : Frank Bruno
-- This file is a template for writing a full adder

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity challenge is
  port(
    SW  : in  std_logic_vector(2 downto 0);
    LED : out std_logic_vector(1 downto 0)
  );
end entity challenge;

architecture rtl of challenge is
begin

  -- SW[2] is carry in
  -- SW[1] is A
  -- SW[0] is B
--  LED(0) <= '0';                         -- Write the code for the Sum
--  LED(1) <= '0';                        -- Write the code for the Carry
  
  process 
  begin
    -- Default values for LEDs at start-up
    LED(0) <= '0';                         -- Write the code for the Sum
    LED(1) <= '0';

    -- Full adder logic
    LED(0) <= SW(1) xor SW(0) xor SW(2); -- sum logic A ^ B ^ Cin
    LED(1) <= (SW(1) and SW(0)) or (SW(1) and SW(2)) or (SW(0) and SW(2)); -- carry logic A&B | A&Cin | B&Cin
  end process;
   
--  LED(0) <= SW(0) and SW(1);   
--  LED(1) <= SW(2);      
--  LED(0) <= SW(0) nand SW(0);   
--  LED(0) <= SW(1) nand SW(0);      
     
end architecture rtl;
