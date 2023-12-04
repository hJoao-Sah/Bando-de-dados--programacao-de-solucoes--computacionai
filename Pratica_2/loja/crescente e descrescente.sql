SELECT
    p.id AS produto_id,
    p.nome AS produto_nome,
    i.descricao AS identificacao_descricao,
    p.preco
FROM
    produto as p, identificacao as i
where 
p.id = i.id
ORDER BY
    produto_nome ASC, p.preco DESC;
