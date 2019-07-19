LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY CONCORRENTE IS
	PORT(binario: IN BIT_VECTOR(3 DOWNTO 0);
	gray: OUT BIT_VECTOR(3 DOWNTO 0));
END ENTITY;

--ARCHITECTURE Codigo_incondicional OF CONCORRENTE IS
--BEGIN
--		gray(3) <= binario(3);
--		GEN: FOR i IN 2 DOWNTO 0 GENERATE
--			gray(i) <= binario(i) XOR binario(i+1);
--		END GENERATE GEN;		
--END;

ARCHITECTURE Codigo_condicional OF CONCORRENTE IS
BEGIN
		GEN1: FOR i IN 3 DOWNTO 0 GENERATE
			GEN2: IF i = 3 GENERATE
				gray(3) <= binario(3);
			END GENERATE GEN2;
			GEN3: IF i /= 3 GENERATE 
				gray(i) <= binario(i) XOR binario(i+1);
			END GENERATE GEN3;	
		END GENERATE GEN1;		
END;
















