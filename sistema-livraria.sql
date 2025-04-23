-- Criação da tabela Clientes
CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    nomeCliente VARCHAR(255) NOT NULL,
    emailCliente VARCHAR(255) NOT NULL
);

-- Criação da tabela Compras
CREATE TABLE Compras (
    CompraID INT PRIMARY KEY,
    ClienteID INT,
    NomeLivro VARCHAR(255) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

 SELECT * FROM Clientes;

-- Inserindo dados na tabela Clientes
INSERT INTO Clientes (ID, nomeCliente, emailCliente) VALUES
(1, 'Ana Silva', 'ana.silva@email.com'),
(2, 'João Pereira', 'joao.pereira@email.com'),
(3, 'Maria Oliveira', 'maria.oliveira@email.com');

-- Inserindo dados na tabela Compras
INSERT INTO Compras (CompraID, ClienteID, NomeLivro) VALUES
(1, 1, 'Quarto de Despejo'),
(2, 2, 'Dom Casmurro'),
(3, 1, 'Memórias Póstumas de Brás Cubas'),
(4, 3, 'Quarto de Despejo'),
(5, 3, 'O Alquimista');

SELECT c.nomeCliente, co.NomeLivro
FROM Clientes c
INNER JOIN Compras co
ON c.ID = co.ClienteID;
