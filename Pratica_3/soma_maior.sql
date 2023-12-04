SELECT f.nome, f.telefone, f.endereco, SUM(p.preco) AS total_produtos
FROM fornecedor f, produto p
WHERE f.id = p.id_fornecedor
GROUP BY f.id
HAVING total_produtos > 500;