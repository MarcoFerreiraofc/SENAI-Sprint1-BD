CREATE DATABASE Clinicas;

USE Clinicas;

CREATE TABLE Clinicas(
	idClinica INT PRIMARY KEY IDENTITY,
	razaoSocial VARCHAR NOT NULL
	CNPJ VARCHAR NOT NULL
	Endereco VARCHAR NOT NULL
);

CREATE TABLE Veterinarios(
	idVeterinario INT PRIMARY KEY IDENTITY,
	idClinica INT FOREIGN KEY REFERENCES Clinicas(idClinica),
	nomeDaClinica VARCHAR NOT NULL,
);

CREATE TABLE Pets(
	idPet INT PRIMARY KEY IDENTITY,
	idClinica INT FOREIGN KEY REFERENCES Clinicas(idClinica),
	idVeterinario INT FOREIGN KEY REFERENCES Veterinarios(idVeterinario),
	nomeDoPet VARCHAR NOT NULL,
);

CREATE TABLE Racas(
	idRaca INT PRIMARY KEY IDENTITY,
	idPet INT FOREIGN KEY REFERENCES Pets(idPet),
	idClinica INT FOREIGN KEY REFERENCES Clinicas(idClinica),
	idVeterinario INT FOREIGN KEY REFERENCES Veterinarios(idVeterinario),
	nomeDaRaca VARCHAR NOT NULL,
);

CREATE TABLE Donos(
	idDono INT PRIMARY KEY IDENTITY,
	idPet INT FOREIGN KEY REFERENCES Pets(idPet),
	idClinica INT FOREIGN KEY REFERENCES Clinicas(idClinica),
	nomeDoDono VARCHAR NOT NULL,
);