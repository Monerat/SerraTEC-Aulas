INSERT INTO aula.bairro (
	nomebairro
)
VALUES
	('Centro'),
	('Alto'),
	('Guarani'),
	('Barra');

INSERT INTO aula.cidade
	(nomecidade, uf)
VALUES
	('Teresópolis','RJ'),
	('Nova Friburgo','RJ');

INSERT INTO aula.endereco
	(cep, idbairro, idcidade)
VALUES
	('1111111',1,1),
	('2222222',2,1),
	('3333333',3,1),
	('4444444',4,1);
	

INSERT INTO aula.cliente
	(codigo, nome, endereconumero , idendereco)
VALUES
	('00001','Leandro','123', 1),
	('00002','Carlos','321', 2),
	('00003','Miriã','173', 3),
	('00004','Armando','895', 4);


INSERT INTO aula.email 
	(email, idcliente)
VALUES
	('leandro@gmail.com', (SELECT idcliente FROM aula.cliente WHERE codigo = '00001')),
	('carlos@gmail.com', 2),
	('miria@gmail.com', 3),
	('armando@gmail.com', 4),
	('armando2@gmail.com', 4);
	
INSERT INTO aula.telefone 
	(numerotelefone, idcliente)
VALUES
	('21999999991', (SELECT idcliente FROM aula.cliente WHERE codigo = '00001')),
	('21999999992', 2),
	('21999999993', 3),
	('21999999994', 4);

INSERT INTO aula.vendedor
	(codigo, nome, endereconumero, idendereco)
VALUES
	('00001','João','125', 4),
	('00002','José','873', 1),
	('00003','Armindo','193', 3);
	
INSERT INTO aula.produto
	(codigo, descricao, custo, preco)
VALUES
	('00001','Calça',(SELECT preco * 0.5 FROM aula.produto WHERE codigo = '00001'), 100),
	('00002','Camisa',(SELECT preco * 0.5 FROM aula.produto WHERE codigo = '00002'), 50),
	('00003','Meia',(SELECT preco * 0.5 FROM aula.produto WHERE codigo = '00003'), 10);
	
INSERT INTO aula.venda
	(idvendedor, idcliente, data_emissao, numero)
VALUES
	(1,1,'01-08-2023','450'),
	(1,2,'01-08-2023','451'),
	(1,3,'01-08-2023','452'),
	(2,4,'01-08-2023','453'),
	(3,4,'01-08-2023','454');
	
INSERT INTO aula.item
	(idvenda, idproduto, valorun, quantidade, vldesconto, vlacrescimo)
	
VALUES
(
	(SELECT idvenda FROM aula.venda WHERE numero = '450'),
	(SELECT idproduto FROM aula.produto WHERE codigo = '00001'),
	((SELECT preco FROM aula.produto WHERE codigo = '00001')),
	2,10,0
),
(
	(SELECT idvenda FROM aula.venda WHERE numero = '450'),
	(SELECT idproduto FROM aula.produto WHERE codigo = '00002'),
	((SELECT preco FROM aula.produto WHERE codigo = '00002')),
	5,2,0
),
(
	(SELECT idvenda FROM aula.venda WHERE numero = '450'),
	(SELECT idproduto FROM aula.produto WHERE codigo = '00003'),
	((SELECT preco FROM aula.produto WHERE codigo = '00003')),
	15,0,5
),
(
	(SELECT idvenda FROM aula.venda WHERE numero = '451'),
	(SELECT idproduto FROM aula.produto WHERE codigo = '00002'),
	((SELECT preco FROM aula.produto WHERE codigo = '00002')),
	5,0,0
),
(
	(SELECT idvenda FROM aula.venda WHERE numero = '452'),
	(SELECT idproduto FROM aula.produto WHERE codigo = '00003'),
	((SELECT preco FROM aula.produto WHERE codigo = '00003')),
	15,0,5
),
(
	(SELECT idvenda FROM aula.venda WHERE numero = '453'),
	(SELECT idproduto FROM aula.produto WHERE codigo = '00003'),
	((SELECT preco FROM aula.produto WHERE codigo = '00003')),
	30,0,0
),
(
	(SELECT idvenda FROM aula.venda WHERE numero = '454'),
	(SELECT idproduto FROM aula.produto WHERE codigo = '00001'),
	((SELECT preco FROM aula.produto WHERE codigo = '00001')),
	1,0,0
);