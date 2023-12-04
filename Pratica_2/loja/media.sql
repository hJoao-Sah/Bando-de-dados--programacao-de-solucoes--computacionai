SELECT 
	i.nome AS identificacao_nome,
     AVG(p.preco) AS media_precos
FROM produto as p, identificacao as i
where p.id = i.id
GROUP BY
    i.nome;