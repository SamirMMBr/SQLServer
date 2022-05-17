-- Samir M. Morimoto - 2022
-- Problem: Find Fist Date and End Date of Month / Validated Year Bissexto
-- Solution A: Using DATEADD, DATEDIFF, DATEPART

-- Exemplo Simples com Data Fixa de Feveiro - de 2020 até 2024
 SELECT DATEPART(YEAR, '2020-02-01') AS Ano, 
       CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) 
	        THEN 1 
			ELSE 0 
		END AS AnoBissexto
UNION ALL
SELECT DATEPART(YEAR, '2021-02-01') AS Ano, 
       CASE WHEN (( DATEPART(YEAR, '2021-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2021-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2021-02-01') % 400 = 0) 
	        THEN 1 
			ELSE 0 
		END AS AnoBissexto
UNION ALL
SELECT DATEPART(YEAR, '2022-02-01') AS Ano, 
       CASE WHEN (( DATEPART(YEAR, '2022-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2022-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2022-02-01') % 400 = 0) 
	        THEN 1 
			ELSE 0 
		END AS AnoBissexto
UNION ALL
SELECT DATEPART(YEAR, '2023-02-01') AS Ano, 
       CASE WHEN (( DATEPART(YEAR, '2023-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2023-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2023-02-01') % 400 = 0) 
	        THEN 1 
			ELSE 0 
		END AS AnoBissexto
UNION ALL
SELECT DATEPART(YEAR, '2024-02-01') AS Ano, 
       CASE WHEN (( DATEPART(YEAR, '2024-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2024-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2024-02-01') % 400 = 0) 
	        THEN 1 
			ELSE 0 
		END AS AnoBissexto

-- Exemplo Simples com Data Fixa para TODOS os dias de Fevereiro 2020 e ÚLTIMO dia Fevereiro 2022
-- Para mostrar Dia, Primeiro Dia do Mês, Último Dia do Mês e se é Ano Bissexto
SELECT '2020-02-01' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-01'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-01'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-02' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-02'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-02'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-03' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-03'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-03'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-04' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-04'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-04'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-05' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-05'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-05'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-06' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-06'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-06'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-07' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-07'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-07'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-08' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-08'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-08'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-09' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-09'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-09'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-10' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-10'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-10'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-11' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-11'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-11'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-12' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-12'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-12'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-13' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-13'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-13'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-14' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-14'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-14'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-15' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-15'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-15'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-16' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-16'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-16'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-17' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-17'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-17'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-18' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-18'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-18'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-19' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-19'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-19'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-20' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-20'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-20'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-21' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-21'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-21'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-22' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-22'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-22'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-23' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-23'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-23'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-24' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-24'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-24'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-25' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-25'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-25'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-26' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-26'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-26'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-27' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-27'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-27'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-28' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-28'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-28'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION 
SELECT '2020-02-29' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2020-02-29'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2020-02-29'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2020-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2020-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2020-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto UNION

SELECT '2022-02-28' AS Data_Calendario, DATEADD(month, DATEDIFF(month, 0, '2022-02-28'), 0) AS Primeiro_Dia_Mes, DATEADD(month, DATEDIFF(month, 0, '2022-02-28'), 30) Ultimo_Dia_Mes, CASE WHEN (( DATEPART(YEAR, '2022-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2022-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2022-02-01') % 400 = 0) THEN 1 ELSE 0 END AnoBissexto  