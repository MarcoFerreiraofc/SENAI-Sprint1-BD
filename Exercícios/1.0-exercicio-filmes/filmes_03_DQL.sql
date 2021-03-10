-- DQL

USE Filmes;

SELECT Nome FROM Generos; -- o SELECT � tipo o return View() // o * � tudo que tem dentro de Generos (All)

SELECT * FROM Filmes;

-- o INNER JOIN � o meio entre os circulos do diagrama de Venn
-- AS (ALIAS)
SELECT Titulo, Nome AS Genero FROM Filmes -- tabela 1
INNER JOIN Generos -- tabela 2
ON Filmes.idGenero = Generos.idGenero; -- jun��o das duas tabelas
