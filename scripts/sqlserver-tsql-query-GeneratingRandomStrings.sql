-- ================
-- Exemplo 1 = Usando guid
-- ================
SELECT CONVERT(varchar(255), NEWID()) AS randomString

-- ================
-- Exemplo 2 = Usando guid e retornado uma string curta
-- ================

SELECT SUBSTRING(CONVERT(varchar(40), NEWID()),0,9)

-- ================
-- Exemplo 3 = Usando código flexível, você pode adaptar.
-- ================
declare @Length int
      , @CharPool varchar(71)
	  , @PoolLength int
	  , @LoopCount int
	  , @RandomString varchar(71)

-- min_length = 8, max_length = 12
SET @Length = RAND() * 5 + 8
-- SET @Length = RAND() * (max_length - min_length + 1) + min_length

-- define allowable character explicitly - easy to read this way an easy to 
-- omit easily confused chars like l (ell) and 1 (one) or 0 (zero) and O (oh)
SET @CharPool = 
    'abcdefghijkmnopqrstuvwxyzABCDEFGHIJKLMNPQRSTUVWXYZ23456789.,-_!$@#%^&*'
SET @PoolLength = Len(@CharPool)

SET @LoopCount = 0
SET @RandomString = ''

WHILE (@LoopCount < @Length) BEGIN
    SELECT @RandomString = @RandomString + 
        SUBSTRING(@Charpool, CONVERT(int, RAND() * @PoolLength) + 1, 1)
    SELECT @LoopCount = @LoopCount + 1
END

SELECT @RandomString AS RandomString