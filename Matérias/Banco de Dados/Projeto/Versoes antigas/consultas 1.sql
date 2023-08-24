--Um comando SQL de atualização em algum registro em uma tabela

UPDATE projeto_grupo3.produto SET nome_prod = 'Camiseta' WHERE idproduto = 2;

SELECT * FROM projeto_grupo3.categoria

--Um comando SQL de exclusão de algum registro em uma tabela

DELETE FROM projeto_grupo3.categoria WHERE idcategoria = 6;


--Pelo menos 2 com algum tipo de junção

--1 SQL para construção de nota fiscal

SELECT * FROM projeto_grupo3.pedido


SELECT 
	pd.data_pedido,
	cl.nome_cli,
	cl.cpf,
	cl.email,
	CONCAT(ed.tipo_logra,' ', ed.logradouro,' ', ed.numero,' ', ed.complemento,' ', ed.bairro,' ', ed.cidade,' ', ed.uf) AS endereco,
	pr.idproduto,
	pditem.qtd_prod,
	pr.nome_prod,
	pr.vl_un,
	SUM(pditem.qtd_prod * pr.vl_un) AS subtotal
FROM projeto_grupo3.pedido AS pd
LEFT JOIN projeto_grupo3.pedido_item AS pditem ON pditem.idpedido = pd.idpedido
LEFT JOIN projeto_grupo3.produto AS pr ON pr.idproduto = pditem.idproduto
LEFT JOIN projeto_grupo3.cliente AS cl ON cl.idcliente = pd.idcliente
LEFT JOIN projeto_grupo3.endereco_entr AS edtr ON edtr.idcliente = cl.idcliente
LEFT JOIN projeto_grupo3.endereco AS ed ON ed.idendereco = edtr.idendereco
WHERE pd.idpedido = 1
GROUP BY pd.data_pedido,
	cl.nome_cli,
	cl.cpf,
	cl.email,
	CONCAT(ed.tipo_logra,' ', ed.logradouro,' ', ed.numero,' ', ed.complemento,' ', ed.bairro,' ', ed.cidade,' ', ed.uf),
	pr.idproduto,
	pditem.qtd_prod,
	pr.nome_prod,
	pr.vl_un






--Pelo menos 1 com usando count() e group by()

