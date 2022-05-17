-- Samir M. Morimoto - 2022
-- Problem: Create a List of Dates ( calendar )
-- Solution B: Using WITH AS, Parameters and CTE RECUSIVE

--Parameters used into CTE
DECLARE 
  @param_i int = 101,
  @dt_inicial datetime = '2000-01-01',
  @QtdeAnos int = 100;

-- Define the CTE expression name and column list. 
WITH tb(Incremento, DataInicial, QtdeAnos, DataFinal, QtdeDias, Data_Calendario, Week_Day)
AS (
    -- Anchor member = Define the CTE query.
	SELECT 1 AS Incremento, 
	       @dt_inicial AS DataInicial, 
		   @QtdeAnos AS QtdeAnos,
		   DATEADD(YEAR, @QtdeAnos, @dt_inicial) AS DataFinal,
		   DATEDIFF(DAY, @dt_inicial, DATEADD(YEAR, @QtdeAnos, @dt_inicial)) AS QtdeDias,
		   @dt_inicial as Data_Calendario,
		   DATENAME(DW, @dt_inicial) AS Week_Day
	UNION ALL

	-- Recursive member = Define the outer query referencing the CTE name.
	SELECT Incremento + 1 AS Incremento,
           DataInicial,
		   QtdeAnos,
		   DataFinal,
		   QtdeDias,
		   DATEADD(DAY, Incremento, @dt_inicial) AS Data_Calendario,
		   DATENAME(DW, DATEADD(DAY, Incremento, @dt_inicial)) AS Week_Day
	FROM tb WHERE Incremento < QtdeDias
)
-- References expression name
SELECT * FROM tb
OPTION (MAXRECURSION 0);  