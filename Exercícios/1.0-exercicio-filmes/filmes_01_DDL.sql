-- DDL

CREATE DATABASE Filmes; -- aqui foi criado o banco de dados "Filmes" (a entidade no conceitual)

USE Filmes; -- aqui muda de "branch"

CREATE TABLE Generos -- cria��o da tabela de Generos (na l�gica)
(
	idGenero INT PRIMARY KEY IDENTITY, -- o idGenero vai ser uma INT, uma PRIMARY KEY(CHAVE PRIM�RIA) e uma IDENTITY ser� a identidade, ou seja, vai ser criado um id automaticamente (sequencialmente)
	Nome VARCHAR(200) NOT NULL -- o VARCHAR � tipo um string, o 200 � o limite de caracteres e o NOT NULL � tipo o required(obrigat�rio) do html
);

CREATE TABLE Filmes -- cria��o da tabela de Filmes (na l�gica)
(
	idFilmes INT PRIMARY KEY IDENTITY, -- a mesma coisa do idGenero da tabela de Generos
	idGenero INT FOREIGN KEY REFERENCES Generos(idGenero), -- o FOREIGN KEY � uma chave estrangeira, ou seja, veio de fora(n�o � realmente daquele lugar), esse "idGenero" n�o precisa de IDENTITY porque n�o � realmente dessa tabela, pois � apenas uma refer�ncia da tabela de Generos
	Titulo VARCHAR(250) NOT NULL -- a mesma coisa do Nome da tabela de Generos
);

UPDATE Generos
SET Nome = 'Suspense'
WHERE idGenero = 3;

DELETE Generos
WHERE idGenero = 5;