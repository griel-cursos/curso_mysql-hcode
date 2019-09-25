#Criar um banco de dados. Não utilizar acentuação ou caracteres especiais. 
#CREATE DATABASE nome_do_banco;
CREATE DATABASE hcode;
CREATE DATABASE db_testes;

#Entrar (usar) o banco de dados
#USE nome_do_banco;
USE hcode;
USE db_testes;

#Para apagar um banco de dados, primeiro saia dele
#USE outro_banco;
#DROP DATABASE nome_banco;
DROP DATABASE hcode;

#Para criar uma tabela:
#CREATE TABLE nome_tabela ( coluna PARÂMETRO, coluna2 PARÂMETRO )
CREATE TABLE clientes (
	id INT,
    nome VARCHAR(100)
);

#Para adicionar dados na tabelas:
#Insert Posicional: INSER INTO tabela VALUES (dados, 'textos entre aspas');
#Insert Declarativo: INSERT INTO tabela (campo, campo2) VALUES ('valor campo 1', 'valor campo 2');
INSERT INTO clientes VALUES (1, 'Roberto Filho');
INSERT INTO clientes (nome, id) VALUES ('Nayane', 2); 

#Exibir dados na tabela:
#SELECT * FROM tabela; o * significa "tudo"
SELECT * FROM tb_funcionarios;
SELECT * FROM tb_pessoas;

#Exibi detalhes de como a tabela foi construida
#DESCRIBE tabela;
DESCRIBE tb_funcionarios;

#Alterar dados dentro de uma tabela
#UPDATE tabela SET campo = valores WHERE campo = valor;
UPDATE tb_funcionarios SET salario = salario * 1.1 WHERE id = 1;

#Copiar dados de uma tabela para outra
#INSERT INTO tabela_destino SELECT campo, campo, VALOR DEFINIDO, campo FROM tabela_origem;
INSERT INTO tb_funcionarios SELECT id, nome, 950, CURRENT_DATE(), sexo, NULL FROM tb_pessoas;

#Converter dados antes de serem exibidos:
#SELECT campo, campo_converter AS nome_atual, convert(campo, conversao) AS 'nome do novo campo' FROM tabela
SELECT nome, salario AS atual, convert(salario*1.1, DEC(10,2)) AS 'salario com aumento' FROM tb_funcionarios;

#Limitar os dados obtidos em uma consulta. O Order By deve vir sempre no final da instrução:
#SELECT * FROM tabela LIMIT começo, quantidade
SELECT * FROM tb_funcionarios LIMIT 0, 3;