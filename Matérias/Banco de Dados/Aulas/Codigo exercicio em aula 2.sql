--CREATE SCHEMA aula;
DROP TABLE IF EXISTS aula.bairro CASCADE;
DROP TABLE IF EXISTS aula.cidade CASCADE;
DROP TABLE IF EXISTS aula.cliente CASCADE;
DROP TABLE IF EXISTS aula.email CASCADE;
DROP TABLE IF EXISTS aula.endereco CASCADE;
DROP TABLE IF EXISTS aula.item CASCADE;
DROP TABLE IF EXISTS aula.produto CASCADE;
DROP TABLE IF EXISTS aula.telefone CASCADE;
DROP TABLE IF EXISTS aula.venda CASCADE;
DROP TABLE IF EXISTS aula.vendedor CASCADE;

CREATE TABLE aula.bairro (
	idbairro serial PRIMARY KEY,
	nomebairro varchar(8) NOT null
);

CREATE TABLE aula.cidade (
	idcidade serial PRIMARY KEY,
	nomecidade varchar(50) NOT null,
	uf varchar(2) NOT null
);

CREATE TABLE aula.endereco (
	idendereco serial PRIMARY KEY,
	cep varchar(8) NOT null,
	idbairro int REFERENCES aula.bairro(idbairro),
	idcidade int REFERENCES aula.cidade(idcidade)
	
);

CREATE TABLE aula.vendedor (
	idvendedor serial PRIMARY KEY,
	codigo varchar(10) UNIQUE NOT null,
	nome varchar(100) NOT null,
	idendereco int REFERENCES aula.endereco(idendereco)
);

ALTER TABLE aula.vendedor ADD COLUMN endereconumero varchar(10);

CREATE TABLE aula.cliente (
	idcliente serial PRIMARY KEY,
	codigo varchar(10) UNIQUE NOT null,
	nome varchar(100) NOT null,
	idendereco int REFERENCES aula.endereco(idendereco),
	endereconumero varchar(10)
);

CREATE TABLE aula.telefone (
	idtelefone serial PRIMARY KEY,
	numerotelefone varchar(20) NOT null,
	idcliente int REFERENCES aula.cliente(idcliente)
);

CREATE TABLE aula.email (
	idemail serial PRIMARY KEY,
	email varchar(120) UNIQUE NOT null,
	idcliente int REFERENCES aula.cliente(idcliente)
);

CREATE TABLE aula.produto (
	idproduto serial PRIMARY KEY,
	codigo varchar(10) UNIQUE  NOT null,
	descricao varchar(150) NOT null,
	custo double precision,
	preco double precision
);

CREATE TABLE aula.venda (
	idvenda serial PRIMARY KEY,
	idcliente int REFERENCES aula.cliente(idcliente),
	idvendedor int REFERENCES aula.vendedor(idvendedor),
	data_emissao date NOT null,
	numero varchar(10) NOT null
);

CREATE TABLE aula.item (
	iditem serial PRIMARY KEY,
	idvenda int REFERENCES aula.venda(idvenda),
	idproduto int REFERENCES aula.produto(idproduto),
	valorun double precision,
	quantidade double precision,
	vldesconto double precision,
	vlacrescimo double precision
);
