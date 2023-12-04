INSERT INTO fornecedor(nome, telefone, endereco) VALUES
('Alimentos Frescos LTDA', '+55 (31) 9 9876-5432', 'Rua 4, n. 4, Sol Nascente'),
('Vestuário Elegante S.A.', '+55 (21) 9 8765-4321', 'Rua 5, n. 5, Pedra Bonita'),
('Limpeza Brilhante LTDA', '+55 (11) 9 7654-3210', 'Rua 6, n. 6, Mooca');

INSERT INTO produto(id_fornecedor, nome, preco, validade) VALUES
(4, 'macarrão', 10.50, '2023-12-30'),
(5, 'blusa', 150.00, '2045-02-15'),
(6, 'amaciante', 15.00, '2037-07-20'),
(2, 'jaqueta', 300.00, '2045-12-31');

INSERT INTO identificacao(id, nome, descricao) VALUES
(10, 'espaguete', 'massa italiana'),
(11, 'seda', 'estampada'),
(12, 'perfumado', 'floral');


