INSERT INTO projeto_grupo3.categoria
	(nome_cat, descr_cat)
VALUES 
	('Verão', 'Roupas para o verão'),--idcategoria=1
	('Outono', 'Roupas para o outono'),
	('Inverno', 'Roupas para o inverno'),
	('Primavera', 'Roupas para a primavera'),
	('Infantil', 'Roupas para criança'),
	('Banho', 'Roupas para nadar');

INSERT INTO projeto_grupo3.funcionario
	(nome_func, cpf)
VALUES
	('Gustavo', 11111111111),
	('Gabriel', 22222222222),
	('Bernardo', 33333333333),
	('Alex', 44444444444),
	('Bryan', 55555555555),
	('Filipi', 66666666666);
	
INSERT INTO projeto_grupo3.endereco
	(cep, tipo_logra, logradouro, numero, complemento, bairro, cidade, uf)
VALUES
	(11111111, 'Rua', 'Logradouro A', 1, 'Casa', 'Bairro A', 'Teresopolis', 'RJ'),--idendereco=1
	(22222222, 'Rua', 'Logradouro B', 2, 'Apto', 'Bairro B', 'Petropolis', 'RJ'),
	(33333333, 'Rua', 'Logradouro C', 3, 'Casa', 'Bairro C', 'Teresopolis', 'RJ'),
	(44444444, 'Rua', 'Logradouro D', 4, 'Apto', 'Bairro D', 'Teresopolis', 'RJ'),
	(55555555, 'Rua', 'Logradouro E', 5, 'Casa', 'Bairro E', 'Petropolis', 'RJ');
	
INSERT INTO projeto_grupo3.cliente
	(nome_cli, usuario, cpf, email, data_nasc)
VALUES	
	('Rorivaldo da Silva Sauro', 'Rori', 77777777777, 'rori@gmail.com', '2004-04-06'),--idcliente=1
	('Rivaldo da Silva Sauro', 'Riva', 88888888888, 'riva@gmail.com', '1990-06-12'),
	('Romario da Silva Sauro', 'Roma', 99999999999, 'baixinho@gmail.com', '1986-12-20'),
	('Ronaldo da Silva Sauro', 'Rona', 10101010101, 'fenomeno@gmail.com', '2003-11-08'),
	('Arrascaeta o mais brabo que temos', 'Arraxca', 20202020202, 'arraxca@gmail.com', '1960-01-01');
	
INSERT INTO projeto_grupo3.endereco_entr
	(idendereco, idcliente)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5);
	
INSERT INTO projeto_grupo3.pedido
	(data_pedido, idcliente)
VALUES 
	('2023-08-22 00:12:00', 1 ),--idpedido=1
	('2023-07-20 08:10:00', 2 ),
	('2023-06-11 00:20:02', 3 ),
	('2023-07-15 11:11:01', 4 ),
	('2023-08-11 10:01:00', 5 );
	
INSERT INTO projeto_grupo3.produto
	(nome_prod, descr_prod, vl_un, qtd_estoque, data_fab, idcategoria)
VALUES
	('Camisa', 'Camisa Algodão', 40.00, 30, '2023-05-10', 2),
	('Camiseta Regata', 'Camisa sem manga', 35.00, 40, '2023-04-10', 1),
	('Casaco', 'Casaco de Couro', 600.00, 10, '2023-02-10', 3),
	('Vestido', null, 120.00, 20, '2023-06-10', 4),
	('Short', 'Short tactel', 25.00, 50, '2023-02-10', 5);	

INSERT INTO projeto_grupo3.entrada
	(idproduto, idfuncionario)
VALUES
	(1,1),
	(2,2),
	(3,4),
	(4,5),
	(5,4);
	
INSERT INTO projeto_grupo3.pedido_item
	(qtd_prod, idproduto, idpedido)
VALUES
	(3, 1, 1),
	(4, 2, 1),
	(6, 3, 2),
	(8, 4, 4),
	(3, 5, 3),
	(4, 2, 5);
	

