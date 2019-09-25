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