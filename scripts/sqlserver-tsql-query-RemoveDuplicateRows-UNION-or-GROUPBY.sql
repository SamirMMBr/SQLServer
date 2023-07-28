-- CRIAR Tabela
CREATE TABLE Pessoas (Nome char(50), Idade int);

-- INSERIR Dados de Exemplo 100.000 vezes 
INSERT INTO Pessoas (Nome, Idade)
VALUES ('Renato', 25),
       ('Ana', 21),
	   ('Ana', 50),
       ('Denise', 34);
GO 100000

-- EXIBIR dados ( todas colunas ) repetidos N vezes
SELECT * FROM Pessoas

-- EXIBIR dados ( apenas nomes ) repetidos N vezes
SELECT Nome FROM Pessoas

-- EXIBIR dados ( nomes ) únicos - sem repetir registros, usando UNION para remover duplicidade
SELECT Nome FROM Pessoas
UNION
SELECT Nome FROM Pessoas

-- EXIBIR dados ( nomes ) únicos - sem repetir registros, usando GROUP BY para remover duplicidade
SELECT Nome FROM Pessoas GROUP BY Nome

-- EXCLUIR Tabela
DROP TABLE Pessoas;
