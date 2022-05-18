-- Samir M. Morimoto - 2022
-- Problem: Format Decimal Number
-- Solution A: Using FORMAT and Culture

-- Criar Dados de Exemplo
WITH Dados(Vr_Nota)
AS (
SELECT 1102.0000  UNION ALL
SELECT 500.0000	  UNION ALL
SELECT 30.0000	  UNION ALL
SELECT 250.0000	  UNION ALL
SELECT 5666.0800  UNION ALL
SELECT 22564.5000 UNION ALL
SELECT 22564.5000 UNION ALL
SELECT 3173.6000  UNION ALL
SELECT 11840.8500 UNION ALL
SELECT 1809.7000  UNION ALL
SELECT 6651.7500  UNION ALL
SELECT 2956.1700  UNION ALL
SELECT 1200.0000  UNION ALL
SELECT 30.0000	  UNION ALL
SELECT 5243.0000  UNION ALL
SELECT 6859.8000  UNION ALL
SELECT 3000.0000  UNION ALL
SELECT 6704.3600  UNION ALL
SELECT 4140.0000  UNION ALL
SELECT 8160.7500  UNION ALL
SELECT 960.0000	  UNION ALL
SELECT 9325.6800  UNION ALL
SELECT 687.5000	  UNION ALL
SELECT 2916.4800  UNION ALL
SELECT 4000.0000  UNION ALL
SELECT 108.0000	  UNION ALL
SELECT 2000.0000  UNION ALL
SELECT 60.0000	  UNION ALL
SELECT 60.0000	  UNION ALL
SELECT 200.0000	  UNION ALL
SELECT 3000.0000  UNION ALL
SELECT 10143.0000 UNION ALL
SELECT 5861.4200  UNION ALL 
SELECT 200.0000	  UNION ALL
SELECT 11245.5000 UNION ALL
SELECT 2000.0000  UNION ALL
SELECT 5505.1500  
)

SELECT 
  -- Valor Decimal ( ENU )
  Vr_Nota AS Vr_Nota,

  -- Valor Formatado como MOEDA (ENU)
  FORMAT(Vr_Nota, 'C') AS Vr_NotaENU,

  -- Valor Formatado como MOEDA (PT-BR)
  FORMAT(Vr_Nota, 'C', 'pt-br') AS Vr_NotaPtBR
FROM Dados