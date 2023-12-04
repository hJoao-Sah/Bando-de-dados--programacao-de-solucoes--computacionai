insert into fornecedor (nome, telefone, endereco) values
('Joao vitor', '+55 (31) 9 8765-4321', 'Rua A, n. 10, Centro');

insert into produto (id_fornecedor, nome, preco, validade) values
(3, 'Celular', 10000, '2024-05-15');

insert into filial (cnpj, nome, telefone, endereco) values
('04.654.321/0404-01', 'Filial joao', '+55 (31) 9 1111-2222', 'Rua C, n. 30, Zona Sul');

insert into estoque (id_produto, cnpj_filial, quantidade) values
(3, '04.654.321/0404-01', 60);