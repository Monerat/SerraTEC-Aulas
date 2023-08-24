--create schema prova;

DROP TABLE IF EXISTS prova.items CASCADE;

CREATE TABLE prova.items (
    ID serial PRIMARY KEY,
    product VARCHAR (100) NOT NULL,
    price NUMERIC NOT NULL,
    discount NUMERIC
);

INSERT INTO prova.items (product, price, discount)
VALUES
    ('A', 1000, 10),
    ('B', 1500, 20),
    ('C', 800, 5),
    ('D', 500, null);

SELECT
    product,
    COALESCE(price - discount, price) AS net_price
FROM
    prova.items;
	
SELECT
    product,
    (price - discount) AS net_price
FROM
    prova.items;
	
UPDATE items
SET
	discount = 0
WHERE product = 'D'

	

create table prova.cliente (idcliente serial primary key)

DROP TABLE IF EXISTS prova.cliente CASCADE;
DROP TABLE IF EXISTS prova.pessoa CASCADE;
DROP TABLE IF EXISTS prova.items CASCADE;
create table prova.cliente (idcliente integer primary key)

create table prova.pessoa (idpessoa integer primary key);
create table prova.cliente (idcliente serial references prova.pessoa,	constraint idcliente_pk primary key (idcliente));
-----------

create table meu_schema.pessoa (idpessoa integer primary key);
create table meu_schema.cliente (idcliente serial references meu_schema.pessoa,	constraint idcliente_pk primary key (idcliente));

create schema notas;
select e.razaosocial, e.endereco, e.cnpj, d.dtemissao, d.numero_doc, d.serie, d.tipodoc, cl.nome, cl.cpf, cl.endereco, cl.telefone,
	pr.idproduto, pr.nmproduto, pr.vlunitario, di.quantidade, di.vldesconto
	(pr.vlunitario * di.quantidade) as vlbruto,
	(pr.vldesconto * di.quantidade) as totaldesc,
	((pr.vlunitario * di.quantidade) - (di.vldesconto * di.quantidade)) as vliquido,
	(di.vlimposto * di.quantidade) as totalimposto,
	pr.custo as custoun,
	(pr.custo * di.quantidade) as totalcusto,
	((pr.vlunitario * di.quantidade - (di.vldesconto * di.quantidade)) - (pr.custo * di.quantidade)) as lucro,
	ma.nmmarca
from notas.documento d
left join notas.documento_itens di on di.iddocumento = d.iddocumento
left join notas.empresa e on e.idempresa = d.idempresa
left join notas.cliente cl on cl.idcliente = d.idcliente
left join notas.produto pr on pr.idproduto = di.idproduto
left join notas.marca ma on ma.idmarca = pr.idmarca
where d.numero_doc = '00001'

create schema meuschema
create table meuschema.aluno (
	idaluno serial primary key,
	nome varchar(100),
	idade integer
);

create table meuschema.turma (
	idturma serial primary key,
	nome_turma varchar(100),
	sala varchar(10),
	horasDiarias integer
);

create table meuschema.turma_aluno (
	idaluno int references meuschema.aluno(idaluno),
	idturma int references meuschema.turma(idturma),
	primary key (idaluno, idturma)
);

SELECT al.nome, tur.nome_turma, tur.sala, tur.horasDiarias
FROM meuschema.aluno AS al
LEFT JOIN meuschema.turma_aluno AS tur_al ON tur_al.idaluno = al.idaluno
LEFT JOIN meuschema.turma AS tur ON tur.idturma = tur_al.idturma
WHERE tur.horasDiarias >4;