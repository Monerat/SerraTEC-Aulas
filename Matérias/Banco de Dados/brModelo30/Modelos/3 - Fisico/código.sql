-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE cliente (
idcliente INTEGER PRIMARY KEY,
nome VARCHAR(100),
cpf_cnpj VARCHAR(14),
nr_endereco VARCHAR(10),
complemento VARCHAR(60),
dtnascimento DATE,
idcidade INTEGER,
idbairro INTEGER,
idendereco INTEGER,
cep VARCHAR(8)
)

CREATE TABLE endereco (
idendereco INTEGER PRIMARY KEY,
logradouro VARCHAR(100)
)

CREATE TABLE cep (
cep VARCHAR(8) PRIMARY KEY,
idbairro INTEGER,
idcidade INTEGER,
idendereco INTEGER,
FOREIGN KEY(idendereco) REFERENCES endereco (idendereco)
)

CREATE TABLE cidade (
idcidade INTEGER PRIMARY KEY,
nmcidade VARCHAR(60)
)

CREATE TABLE bairro (
idbairro INTEGER PRIMARY KEY,
nmbairro INTEGER
)

ALTER TABLE cliente ADD FOREIGN KEY(idcidade) REFERENCES cidade (idcidade)
ALTER TABLE cliente ADD FOREIGN KEY(idbairro) REFERENCES bairro (idbairro)
ALTER TABLE cliente ADD FOREIGN KEY(idendereco) REFERENCES endereco (idendereco)
ALTER TABLE cliente ADD FOREIGN KEY(cep) REFERENCES cep (cep)
ALTER TABLE cep ADD FOREIGN KEY(idbairro) REFERENCES bairro (idbairro)
ALTER TABLE cep ADD FOREIGN KEY(idcidade) REFERENCES cidade (idcidade)
