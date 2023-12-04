SELECT f.nome AS filial, SUM(p.preco * e.quantidade) AS valor_total_filial
FROM estoque e, produto p, filial f
WHERE e.id_produto = p.id AND e.cnpj_filial = f.cnpj
GROUP BY f.nome
ORDER BY valor_total_filial DESC;

