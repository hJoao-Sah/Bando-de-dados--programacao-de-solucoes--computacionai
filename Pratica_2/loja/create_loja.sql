create schema if not exists loja;
use loja;
create table produto (
id int auto_increment not null, nome varchar(128) not null, preco double not null, validade date not null, unique(nome), constraint pk_produto primary key (id)
);

create table identificacao (
id int not null, nome varchar(128) not null, descricao varchar(256) not null, constraint pk_identificacao primary key (id), constraint fk_identificacao foreign key (id) references produto (id)
);

insert into produto (nome, preco, validade) values ('arroz', 16.57, '2023-12-17');
insert into produto (nome, preco, validade) values ('detergente', 3.97, '2037-08-23');
insert into produto (nome, preco, validade) values ('calça', 184.91, '2045-01-27');
insert into produto (nome, preco, validade) values ('desinfetante', 8.60, '2036-02-14');
insert into produto (nome, preco, validade) values ('camisa', 48.99, '2043-04-03');
insert into produto (nome, preco, validade) values ('feijão', 12.31, '2023-09-11');
insert into produto (nome, preco, validade) values ('vestido', 89.99, '2041-05-16');
insert into produto (nome, preco, validade) values ('leite', 4.28, '2023-10-03');
insert into produto (nome, preco, validade) values ('sabão', 1.85, '2035-03-05');
insert into identificacao (id, nome, descricao) values (1, 'parboilizado', 'pré-cozido');
insert into identificacao (id, nome, descricao) values (2, 'neutro', 'sem corante e aditivos');
insert into identificacao (id, nome, descricao) values (3, 'jeans', 'reta');
insert into identificacao (id, nome, descricao) values (4, 'cloro', 'bactericida');
insert into identificacao (id, nome, descricao) values (5, 'algodão', 'sem estampa');
insert into identificacao (id, nome, descricao) values (6, 'carioca', 'orgânico');
insert into identificacao (id, nome, descricao) values (7, 'algodão', 'estampado');
insert into identificacao (id, nome, descricao) values (8, 'integral', 'com vitaminas');
insert into identificacao (id, nome, descricao) values (9, 'barra', 'banho');