--Um comando SQL de atualização em algum registro em uma tabela

UPDATE projeto_grupo3.produto SET nome_prod = 'Camiseta' WHERE idproduto = 2;




--Um comando SQL de exclusão de algum registro em uma tabela

DELETE FROM projeto_grupo3.categoria WHERE idcategoria = 6;




--Pelo menos 2 com algum tipo de junção

SELECT 
	pr.nome_prod AS produto,
	cat.nome_cat AS categoria,
	cat.descr_cat AS descricao,
	CONCAT('R$',pr.vl_un) AS valor_unitario,
	pr.data_fab
	
FROM projeto_grupo3.produto pr
LEFT JOIN projeto_grupo3.categoria cat ON cat.idcategoria = pr.idcategoria

--------------

SELECT
	pd.idpedido,
	cl.nome_cli AS cliente,
	pr.nome_prod AS produto,
	cat.nome_cat AS categoria,
	CONCAT('R$',pr.vl_un) AS valor_unitario,
	pditem.qtd_prod AS quantidade,
	SUM(pr.vl_un*qtd_prod) AS total_bruto
	

FROM projeto_grupo3.pedido pd
LEFT JOIN projeto_grupo3.cliente cl ON cl.idcliente = pd.idcliente
LEFT JOIN projeto_grupo3.pedido_item pditem ON pditem.idpedido = pd.idpedido
LEFT JOIN projeto_grupo3.produto pr ON pr.idproduto = pditem.idproduto
LEFT JOIN projeto_grupo3.categoria cat ON cat.idcategoria = pr.idcategoria
GROUP BY 
	pd.idpedido,
	pr.nome_prod,
	cat.nome_cat,
	CONCAT('R$',pr.vl_un),
	pditem.qtd_prod,
	cl.nome_cli


--Pelo menos 1 com usando count() e group by()







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
	SUM(pditem.qtd_prod * pr.vl_un) AS subtotal,
	(SELECT SUM(pditem.qtd_prod * pr.vl_un) 
    FROM projeto_grupo3.pedido_item AS pditem
    JOIN projeto_grupo3.produto AS pr ON pditem.idproduto = pr.idproduto) AS total
FROM projeto_grupo3.pedido AS pd
LEFT JOIN projeto_grupo3.pedido_item AS pditem ON pditem.idpedido = pd.idpedido
LEFT JOIN projeto_grupo3.produto AS pr ON pr.idproduto = pditem.idproduto
LEFT JOIN projeto_grupo3.cliente AS cl ON cl.idcliente = pd.idcliente
LEFT JOIN projeto_grupo3.endereco_entr AS edtr ON edtr.idcliente = cl.idcliente
LEFT JOIN projeto_grupo3.endereco AS ed ON ed.idendereco = edtr.idendereco
GROUP BY pd.data_pedido,
	cl.nome_cli,
	cl.cpf,
	cl.email,
	CONCAT(ed.tipo_logra,' ', ed.logradouro,' ', ed.numero,' ', ed.complemento,' ', ed.bairro,' ', ed.cidade,' ', ed.uf),
	pr.idproduto,
	pditem.qtd_prod,
	pr.nome_prod,
	pr.vl_un

