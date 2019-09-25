#Somente selecionar todos os dados da tabela
SELECT * FROM tb_funcionarios;
#Contar quantas linhas há na consulta
SELECT COUNT(*) FROM tb_funcionarios;
#Contas quantas linhas possuem dados
SELECT COUNT(sexo) FROM tb_funcionarios;
#Dar um nome para a coluna de contagem
SELECT COUNT(*) AS total FROM tb_funcionarios;
#Fazer uma simulação antes de fazer alteração
SELECT nome, salario AS atual, salario*1.1 AS 'salario com aumento' FROM tb_funcionarios;
#Fazer uma simulação antes de fazer alteração com formatação de data
SELECT nome, salario AS atual, convert(salario*1.1, DEC(10,2)) AS 'salario com aumento' FROM tb_funcionarios;

#Aula de Cláusulas Order e Limit
#Selecionando todos os funcionários ordenando pelo nome
SELECT * FROM tb_funcionarios ORDER BY nome;
#Selecionando todos os funcionarios ordenando pelo conteúdo da segunda coluna
SELECT * FROM tb_funcionarios ORDER BY 2;
#Selecionando todos os funcionarios ordenando pelo valor decrescente
SELECT * FROM tb_funcionarios ORDER BY salario DESC;
#Selecionando todos os funcionarios, ordendando pelo que ganha mais e os que ganham igual ordenando pelo nome
SELECT * FROM tb_funcionarios ORDER BY salario DESC, nome ASC;
#Limitar a resposta da consulta. LIMIT
SELECT * FROM tb_funcionarios ORDER BY salario LIMIT 3, 6;

