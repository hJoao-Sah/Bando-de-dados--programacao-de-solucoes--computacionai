SELECT p.nome AS produto, e.quantidade, p.preco * e.quantidade AS valor_total
FROM estoque e, produto p
WHERE e.id_produto = p.id
ORDER BY valor_total DESC;


