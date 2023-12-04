create schema if not exists oficina;
use oficina; 
CREATE TABLE cliente (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(200),
    data_nascimento DATE,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);
CREATE TABLE veiculo (
    chassi VARCHAR(18) PRIMARY KEY,
    placa VARCHAR(10),
    modelo VARCHAR(150),
    marca VARCHAR(150),
    ano INT
);
CREATE TABLE mecanico (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(200),
    data_nascimento DATE,
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    salario DECIMAL(10, 2)
);

INSERT INTO cliente (cpf, nome, data_nascimento, telefone, endereco)
VALUES ('133.454.709-10', 'Lucas Silva', '1980-02-15', '(31) 98365-4121', 'Rua A, 496');

INSERT INTO veiculo (chassi, placa, modelo, marca, ano)
VALUES ('135678901267', 'AC1234', 'Civic', 'Honda', 2020);

INSERT INTO mecanico (cpf, nome, data_nascimento, telefone, endereco, salario)
VALUES ('123.454.511-03', 'Pedro', '1990-03-21', '(31) 99988-7766', 'Rua 5, 9', 3300.00);


