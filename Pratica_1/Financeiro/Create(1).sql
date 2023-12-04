create schema if not exists financeiro;
use financeiro;
CREATE TABLE cliente (
    cpf VARCHAR(14) PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE,
    numero_agencia VARCHAR(20),
    numero_conta VARCHAR(20),
    telefone VARCHAR(20),
    endereco VARCHAR(255),
    perfil VARCHAR(20) 
);
CREATE TABLE ativo (
    codigo VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    emissor VARCHAR(100), -- Nome do emissor do ativo
    data_inicio DATE,
    data_fim DATE
);
CREATE TABLE nota_corretagem (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_compra DATE,
    codigo_ativo VARCHAR(10),
    quantidade INT,
    cotacao DECIMAL(10, 2),
    valor_compra DECIMAL(10, 2),
    cpf_cliente VARCHAR(14)
    
);

INSERT INTO cliente (cpf, nome, data_nascimento, numero_agencia, numero_conta, telefone, endereco, perfil)
VALUES ('324.456.968-80', 'Joao vitor', '1999-05-15', '1234', '12389-0', '(31) 98762-4320', 'Rua T', 'Moderado');

INSERT INTO ativo (codigo, nome, descricao, emissor, data_inicio, data_fim)
VALUES ('DA32', ' Nubank.', 'Ações da nubank', 'Nubank', '2013-06-05', NULL);

INSERT INTO nota_corretagem (data_compra, codigo_ativo, quantidade, cotacao, valor_compra)
VALUES ('2023-10-01', 'DA32', 8, 100.00, 1100.00);