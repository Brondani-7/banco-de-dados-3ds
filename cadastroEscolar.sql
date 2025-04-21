CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT
);

CREATE TABLE Professor (
    id_professor INT PRIMARY KEY,
    nome_professor VARCHAR(50),
    cpf_professor VARCHAR(11)
);

CREATE TABLE Escola (
    id_escola INT PRIMARY KEY,
    nome_escola VARCHAR(50),
    cnpj_escola VARCHAR(14)
);

INSERT INTO Aluno (id_aluno, nome, idade)
VALUES
(1, 'Ana Costa', 18),
(2, 'João Silva', 20),
(3, 'Maria Oliveira', 19),
(4, 'Carlos Mendes', 21),
(5, 'Fernanda Souza', 22);

INSERT INTO Professor (id_professor, nome_professor, cpf_professor)
VALUES
(1, 'Carlos Almeida', 11987654321),
(2, 'Fernanda Rocha', 21998765432),
(3, 'Roberto Souza', 31976543210);

INSERT INTO Escola  (id_escola, nome_escola, cnpj_escola)
VALUES
(1, 'Colegio Estadual do Parana', 1234567800019),
(2, 'Angelo trevisan', 98765432000155),
(3, 'Leoncio correia', 56789012000131);

SELECT * FROM Aluno; 