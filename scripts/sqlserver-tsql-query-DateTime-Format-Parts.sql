-- Samir M. Morimoto - 2022
-- Problem: Find and Format Date and Time parts
-- Solution A: Using GETDATE, CONVERT, YEAR, MONTH, MONTHNAME, FORMAT, UPPER

SELECT 
  -- Data, Hora com Mil�simos de Segundos
  GETDATE() AS Hoje_Full_DateTime,
  
  -- Data, Hora com Mil�simos de Segundos SEM espa�os
  CONVERT(varchar(19), GETDATE(), 126) AS Hoje_ISO8601_Long,

  -- Somente Data em pt-br
  CONVERT(varchar(10), GETDATE(), 103) AS Hoje_ptbr,
  
  -- Hora
  CONVERT(varchar(05), GETDATE(), 114) AS Hoje_HoraMinuto,

  -- Hora com Segundos
  CONVERT(varchar(08), GETDATE(), 114) AS Hoje_HoraMinutoSegundo,

  -- Hora com Mil�simos de Segundos
  CONVERT(varchar(12), GETDATE(), 114) AS Hoje_HoraMinutoSegundoMilisegundo,
  
  -- Ano com fun��o YEAR
  YEAR(GETDATE()) AS Nr_Ano_Year,

  -- Ando com fun��o DATEPART
  DATEPART(YEAR, GETDATE()) AS Nr_Ano_DatePart,

  -- M�s com fun��o MONTH
  MONTH(GETDATE()) AS Nr_Mes_Month,

  -- M�s com fun��o DATEPART
  DATEPART(MONTH, GETDATE()) AS Nr_Mes_DatePart,

  -- Nome do M�s com fun��o ODBC - MONTHNAME
  {fn MONTHNAME(GETDATE())} Nome_Mes_MonthNameODBC, 

  -- Nome do M�s Abreviado com fun��o ODBC - MONTHNAME
  LEFT({fn MONTHNAME(GETDATE())}, 3) AS Nome_Mes_MonthNameODBCLeft,
  
  -- Nome do M�s com fun��o DATENAME
  DATENAME(MONTH,GETDATE()) AS Nome_Mes_DateName,

  -- Nome do M�s com fun��o FORMAT
  FORMAT(GETDATE(), 'MMMM') AS Nome_Mes_Format_SemCulture,

  -- Nome do M�s com fun��o FORMAT e Culture ( idioma )
  FORMAT(GETDATE(), 'MMMM', 'pt-br') AS Nome_Mes_Format_ComCulture,
  
  -- Nome do M�s Abrevidado com fun��o FORMAT
  FORMAT(GETDATE(), 'MMM') AS Nome_Mes_Format_SemCulture_Abreviado,

  -- Nome do M�s Abrevidado com fun��o FORMAT e Culture ( idioma )
  FORMAT(GETDATE(), 'MMM', 'pt-br') AS Nome_Mes_Format_ComCulture_Abreviado,
  
  -- Nome do M�s Abrevidado com fun��o FORMAT e Culture ( idioma ), SUBSTRING e UPPER para primeira Letra Mai�scula
  UPPER(SUBSTRING(FORMAT(GETDATE(), 'MMM', 'pt-br'), 1, 1)) + SUBSTRING(FORMAT(GETDATE(), 'MMM', 'pt-br'), 2, 2) AS Nome_Mes_Format_ComCulture_Abreviado_Upper,

  -- Encontra Primeiro Dia do M�s
  DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 0) AS Primeiro_Dia_Mes, 

  -- Encontra �ltimo Dia do M�s
  DATEADD(MONTH, DATEDIFF(MONTH, 0, GETDATE()), 30) AS Ultimo_Dia_Mes,

  -- Encontra Ano Bissexto 
  CASE WHEN (( DATEPART(YEAR, '2024-02-01') % 4 = 0) And (Not( DATEPART(YEAR, '2024-02-01') % 100 = 0))) Or ( DATEPART(YEAR, '2024-02-01') % 400 = 0) 
	        THEN 1 
			ELSE 0 
		END AS AnoBissexto
