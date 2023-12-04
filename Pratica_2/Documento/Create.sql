Create schema if not exists documento;
Use documento;
CREATE TABLE pessoa (
    id INT AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255),
    idade INT,
    sexo VARCHAR(255),
    constraint pk_pessoa primary key(id)
);

CREATE TABLE documento (
    id INT AUTO_INCREMENT NOT NULL,
    tipo VARCHAR(50),
    numero VARCHAR(20),
    constraint pk_documento primary key(id), 
    constraint fk_pessoa foreign key (id) references pessoa(id)
    
);
INSERT INTO pessoa (nome, idade, sexo) VALUES ('João vitor', 20, 'masc');
INSERT INTO pessoa (nome, idade, sexo) VALUES ('Luíza', 20, 'Fem');
INSERT INTO pessoa (nome, idade, sexo) VALUES ('Pedro', 32, 'masc');
INSERT INTO pessoa (nome, idade, sexo) VALUES ('Gabriela', 22, 'Fem');
INSERT INTO documento (tipo, numero) VALUES ('RG', '123456');
INSERT INTO documento (tipo, numero) VALUES ('RG', '123457');
INSERT INTO documento (tipo, numero) VALUES ('RG', '123458');
INSERT INTO documento (tipo, numero) VALUES ('RG', '123459');