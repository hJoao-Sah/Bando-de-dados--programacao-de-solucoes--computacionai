SELECT nome, idade
FROM pessoa
GROUP BY nome, idade
HAVING idade > 21;