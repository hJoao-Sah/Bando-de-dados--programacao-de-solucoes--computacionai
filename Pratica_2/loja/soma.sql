SELECT 
	i.nome AS identificacao_nome,
     SUM(p.preco) AS soma_precos
FROM produto as p, identificacao as i
where p.id = i.id
GROUP BY
    i.nome;