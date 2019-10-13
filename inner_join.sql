SELECT * #Seleciona tudo
FROM tb_funcionarios a #o 'a' é um alias/apelido que eu dou para a tabela
INNER JOIN tb_pessoas b #junto com a tabela com alias/apelido 'b'
ON a.idpessoa = b.idpessoa #onde a coluna da tabela a seja igual a coluna da tabela b
;

SELECT * 
FROM tb_funcionarios
INNER JOIN tb_pessoas USING(idpessoa); #Using irá criar um alias, desde que a coluna nas duas tabelas tenham o mesmo nome

#Exemplo de left join. Irá retornar todos os dados da tabela "da esquerda", mesmo que na tabela "da direita
#ela não tenha nenhuma ligação
SELECT * FROM tb_pessoas a
LEFT JOIN tb_funcionarios b 
ON a.idpessoa = b.idpessoa;

#Exemplo de right join. Irá retornar todos os dados da tabela "da da direita", mesmo que na tabela
# "da esquerda" ela não tenha nenhuma ligação
SELECT * FROM tb_pessoas a
RIGHT JOIN tb_funcionarios b 
ON a.idpessoa = b.idpessoa;