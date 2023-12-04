select sexo, sum(idade) as 'soma das idades por sexo' from pessoa
group by sexo