SELECT f.nome AS fornecedor, SUM(p.preco) AS total_preco
FROM fornecedor f, produto p
WHERE f.id = p.id_fornecedor
GROUP BY f.nome
ORDER BY total_preco DESC;
