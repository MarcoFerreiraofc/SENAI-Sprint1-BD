-- DDL

CREATE DATABASE Filmes; -- aqui foi criado o banco de dados "Filmes" (a entidade no conceitual)

USE Filmes; -- aqui muda de "branch"

CREATE TABLE Generos -- criação da tabela de Generos (na lógica)
(
	idGenero INT PRIMARY KEY IDENTITY, -- o idGenero vai ser uma INT, uma PRIMARY KEY(CHAVE PRIMÁRIA) e uma IDENTITY será a identidade, ou seja, vai ser criado um id automaticamente (sequencialmente)
	Nome VARCHAR(200) NOT NULL -- o VARCHAR é tipo um string, o 200 é o limite de caracteres e o NOT NULL é tipo o required(obrigatório) do html
);

CREATE TABLE Filmes -- criação da tabela de Filmes (na lógica)
(
	idFilmes INT PRIMARY KEY IDENTITY, -- a mesma coisa do idGenero da tabela de Generos
	idGenero INT FOREIGN KEY REFERENCES Generos(idGenero), -- o FOREIGN KEY é uma chave estrangeira, ou seja, veio de fora(não é realmente daquele lugar), esse "idGenero" não precisa de IDENTITY porque não é realmente dessa tabela, pois é apenas uma referência da tabela de Generos
	Titulo VARCHAR(250) NOT NULL -- a mesma coisa do Nome da tabela de Generos
);

UPDATE Generos
SET Nome = 'Suspense'
WHERE idGenero = 3;

DELETE Generos
WHERE idGenero = 5;