create schema if not exists escola;
use escola;

CREATE TABLE aluno (
    matricula INT PRIMARY KEY,
    cpf VARCHAR(14) UNIQUE,
    nome VARCHAR(100),
    data_nascimento DATE,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);
CREATE TABLE curso (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    valor_mensalidade DECIMAL(10, 2),
    data_criacao DATE
);
CREATE TABLE unidade_curricular (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    data_inicio DATE,
    data_termino DATE,
    carga_horaria INT
);

INSERT INTO aluno (matricula, cpf, nome, data_nascimento, telefone, endereco)
VALUES (1, '123.456.789-00', 'João ', '2003-07-01', '(31) 98452-4021', 'Rua t');

INSERT INTO curso (id, nome, descricao, valor_mensalidade, data_criacao)
VALUES (1, 'ADS', 'Tecnologo', 1000.00, '2020-01-01');

INSERT INTO unidade_curricular (id, nome, descricao, data_inicio, data_termino, carga_horaria)
VALUES (1, 'Programação', 'programação em Java', '2023-02-01', '2023-07-02', 70);
