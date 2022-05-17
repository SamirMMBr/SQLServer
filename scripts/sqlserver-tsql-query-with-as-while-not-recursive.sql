-- Samir M. Morimoto - 2022
-- Problem: Create a List of Dates ( calendar )
-- Solution A: Using Temp Tablem, WITH AS and WHILE "NOT RECUSIVE"

-- Drop a temp table, used on while loop
IF (select object_id('tempdb..#loop','U')) is not null
DROP TABLE #loop;

-- Create a CTE "tabela" used capture parameters / values
WITH tabela 
AS 
(
  SELECT CONVERT(datetime, '2000-01-01') AS DataInicial, 100 QtdeAnos
)
SELECT *, 
  Incremento = 1,
  DATEADD(YEAR, QtdeAnos, DataInicial) AS DataFinal,
  DATEDIFF(DAY, DataInicial, DATEADD(YEAR, QtdeAnos, DataInicial)) AS QtdeDias
 INTO #loop
FROM tabela

-- Drop a temp table, used return / result
IF (select object_id('tempdb..#resultado_incremento','U')) is not null
drop table #resultado_incremento

-- Loop create result 
WHILE (SELECT Incremento FROM #loop) < (SELECT QtdeDias FROM #loop)
BEGIN

  IF (select object_id('tempdb..#resultado_incremento','U')) is null
  SELECT DataInicial AS Data_Calendario INTO #resultado_incremento FROM #loop

  INSERT INTO #resultado_incremento(Data_Calendario)
  SELECT DATEADD(DAY, Incremento, DataInicial) FROM #loop

  UPDATE #loop SET Incremento = Incremento + 1

END

-- Show return / result
SELECT * FROM #resultado_incremento 
ORDER BY Data_Calendario

