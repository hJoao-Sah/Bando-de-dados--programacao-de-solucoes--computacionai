Create schema if not exists empresa1;
use empresa1;
create table fornecedor(
id int auto_increment, nome varchar(128) not null, telefone varchar(24) not null, endereco varchar(128) not null, unique(nome), constraint pk_fornecedor primary key(id)
);
create table produto(
id int auto_increment,
id_fornecedor int not null, nome varchar(128) not null, preco double not null, validade date not null, unique(nome), constraint pk_produto primary key(id), constraint fk_produto foreign key(id_fornecedor) references fornecedor(id)
);
create table identificacao(
id int, nome varchar(128) not null, descricao varchar(256) not null, constraint pk_identificacao primary key(id), constraint fk_identificacao foreign key(id) references produto(id)
);
insert into fornecedor(nome, telefone, endereco) values
('Doravante Alimentos S.A.', '+55 (31) 9 9743-6521', 'Rua 1, n. 1, Parque do Sol'), ('Trajos Vestuário LTDA', '+55 (21) 9 9873-2955', 'Rua 2, n. 2, Pedra de Guaratiba'), ('Esmero Limpeza LTDA', '+55 (11) 9 9724-8131', 'Rua 3, n. 3, Moema');
insert into produto(id_fornecedor, nome, preco, validade) values
(1, 'arroz', 16.57, '2023-12-17'), (3, 'detergente', 3.97, '2037-08-23'), (2, 'calça', 184.91, '2045-01-27'), (3, 'desinfetante', 8.60, '2036-02-14'), (2, 'camisa', 48.99, '2043-04-03'), (1, 'feijão', 12.31, '2023-09-11'), (2, 'vestido', 89.99, '2041-05-16'), (1, 'leite', 4.28, '2023-10-03'), (3, 'sabão', 1.85, '2035-03-05');

insert into identificacao(id, nome, descricao) values
(1, 'parboilizado', 'pré-cozido'), (2, 'neutro', 'sem corante e aditivos'), (3, 'jeans', 'reta'), (4, 'cloro', 'bactericida'), (5, 'algodão', 'sem estampa'), (6, 'carioca', 'orgânico'), (7, 'algodão', 'estampado'), (8, 'integral', 'com vitaminas'), (9, 'barra', 'banho');