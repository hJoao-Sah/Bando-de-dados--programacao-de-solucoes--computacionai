SELECT f.nome AS fornecedor, avg(p.preco) AS media_preco
FROM fornecedor f, produto p
WHERE f.id = p.id_fornecedor
GROUP BY f.nome
ORDER BY media_preco DESC;

