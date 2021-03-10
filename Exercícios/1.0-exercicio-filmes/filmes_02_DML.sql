-- DML

USE Filmes;

INSERT INTO Generos(Nome)
VALUES	('Ação'), 
		('Aventura'),
		('Suspense');


INSERT INTO Filmes(idGenero, Titulo)
VALUES	(1, 'Spider-Man: No Way Home'),
		(2, 'Indiana Jones'),
		(3, 'Corra');