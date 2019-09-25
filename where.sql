USE hcode;

#Selecionar todos os funcionarios onde sexo for igual a 'f' 
SELECT * FROM tb_funcionarios WHERE sexo = 'f';
#Selecionar todos os funcionarios onde o sexo for diferente de 'M'
SELECT * FROM tb_funcionarios WHERE sexo <> 'f';
#Selecionar todos o funcionarios do Sexo F e com salario mair que 1000
SELECT * FROM tb_funcionarios WHERE sexo = 'f' and salario > 1000;
#Selecionar todos o funcionarios do Sexo M ou salario mair que 1000
SELECT * FROM tb_funcionarios WHERE sexo = 'm' OR salario > 1000;
#Selecionar todos os funcionarios cujo nome tenha "A" no meio da palavra
SELECT * FROM tb_funcionarios WHERE nome LIKE '%a%';
#Selecionar todos os funcionarios cujo nome comece com 'r' e termine com qualquer letra
SELECT * FROM tb_funcionarios WHERE nome LIKE 'r%';
#Selecionar todos os funcionarios cujo nome termine com 'e' e comece com qualquer letra
SELECT * FROM tb_funcionarios WHERE nome LIKE '%e';
#Selecionar todos os funcionarios cujo nome tenha letra d em quarta posição
SELECT * FROM tb_funcionarios WHERE nome LIKE '____d%';
#Selecionar todos os funcionarios cujo nome NÃO comece com 'r' e termine com qualquer letra
SELECT * FROM tb_funcionarios WHERE nome NOT LIKE 'r%';
#Selecionar todos os funcionários com salarios entre 1000 e 2000
SELECT * FROM tb_funcionarios WHERE salario BETWEEN 1000 AND 2000;
#Selecionar todos os funcionários com salarios que não estejam entre 1000 e 2000
SELECT * FROM tb_funcionarios WHERE salario NOT BETWEEN 1000 AND 2000;
#Selecionar todos os funcionarios cujo nome seja FONÉTICAMENTE parecidos
SELECT * FROM tb_funcionarios WHERE SOUNDEX(nome) = SOUNDEX('luis');

# AULA: CRIANDO FILTRO COM DATAS

#Selecionar os funcionários que foram cadastrados depois de 09/05/2018
SELECT * FROM tb_funcionarios WHERE cadastro > '20180509';
#Exibir a quantidade de dias entre datas em um campo com nome personalizado
SELECT DATEDIFF(admissao, CURRENT_DATE()) AS 'Diferença de Dias' FROM tb_funcionarios WHERE id = 2;
#Selecionar todos os funcionarios onde o mes de admissao seja 9 e o adno seja 2019
SELECT * FROM tb_funcionarios WHERE month(admissao) = 9 AND YEAR(admissao) = 2019;