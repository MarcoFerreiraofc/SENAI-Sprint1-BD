-- DQL

USE Filmes;

SELECT Nome FROM Generos; -- o SELECT é tipo o return View() // o * é tudo que tem dentro de Generos (All)

SELECT * FROM Filmes;

-- o INNER JOIN é o meio entre os circulos do diagrama de Venn
-- AS (ALIAS)
SELECT Titulo, Nome AS Genero FROM Filmes -- tabela 1
INNER JOIN Generos -- tabela 2
ON Filmes.idGenero = Generos.idGenero; -- junção das duas tabelas
