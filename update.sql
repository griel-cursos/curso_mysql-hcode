#Atualizar o funcionario da ID 2, aumentando o salario em 4%
UPDATE tb_funcionarios SET salario = salario*1.4 WHERE id = 2;
#Atualizando a data de admissão do funcionario com nome 'Luis'
UPDATE tb_funcionarios SET admissao = '2019-08-28' WHERE nome = 'Luis';
#Atualiza o campo com a data atual
UPDATE tb_funcionarios SET admissao = CURRENT_DATE() where id = 1;
#Atualizar o campo de admissão com a data de hoje mais 60 dias
UPDATE tb_funcionarios SET admissao = DATE_ADD(CURRENT_DATE(), INTERVAL 60 DAY) where id = 2;