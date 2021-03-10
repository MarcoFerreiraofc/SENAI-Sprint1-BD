USE Locadora;

INSERT INTO Empresas(nomeEmpresa)
VALUES ('General Motors Company'), ('Toyota Motor Corporation'), ('Ford Motor Company');

INSERT INTO Marcas(nomeMarca)
VALUES ('Chevrolet'), ('Toyota'), ('Ford');

INSERT INTO Modelos(marcaId, descricaoModelo)
VALUES (1, 'Camaro'), (1, 'Camaro2'), (2, 'Corolla'), (2, 'Corolla2'), (3, 'Mustang'), (3, 'Mustang2');

INSERT INTO Clientes(nomeCliente, CPFCliente)
VALUES ('Lucas Apolinário', '111.111.111-11'), ('Tony Stark', '222.222.222-22'), ('Steve Rogers', '333.333.333-33');

INSERT INTO Veiculos(empresaId, modeloId, placaVeiculo)
VALUES (1, 1, 'ABC-123'), (2, 2, 'DEF-456'), (3, 3, 'GHI-789'), (1, 1, 'JKL-101'), (2, 5, 'MNO-111'), (3, 3, 'PQR-121');

INSERT INTO Alugueis(veiculoId, clienteId, dataInicio, dataFim)
VALUES (1, 1, '27-02-2021', '01-03-2021'), (2, 1, '27-02-2021', '01-03-2021'), (5, 2, '27-02-2021', '01-03-2021');
