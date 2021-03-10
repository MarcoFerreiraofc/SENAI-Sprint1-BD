USE Locadora;

SELECT * FROM Empresas;

SELECT * FROM Veiculos;

SELECT * FROM Clientes;

SELECT * FROM Alugueis;

-- SELECT coluna1, coluna 2... FROM tabela1
-- TIPO JOIN tabela2
-- ON tabela1.PK = tabela2.FK
SELECT Alugueis.dataInicio AS Retirada, Alugueis.dataFim AS Devolução, Clientes.nomeCliente AS Cliente, Modelos.descricaoModelo AS Modelo FROM Alugueis
INNER JOIN Clientes
ON Alugueis.clienteId = Clientes.idCliente
INNER JOIN Veiculos
ON Alugueis.veiculoId = Veiculos.idVeiculo
INNER JOIN Modelos
ON Veiculos.modeloId = Modelos.idModelo;

SELECT Alugueis.dataInicio AS Retirada, Alugueis.dataFim AS Devolução, Clientes.nomeCliente AS Cliente, Modelos.descricaoModelo AS Modelo FROM Alugueis
INNER JOIN Clientes
ON Alugueis.clienteId = Clientes.idCliente
INNER JOIN Veiculos
ON Alugueis.veiculoId = Veiculos.idVeiculo
INNER JOIN Modelos
ON Veiculos.modeloId = Modelos.idModelo
WHERE Clientes.idCliente = 2;
