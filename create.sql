#Criar um banco de dados novo
CREATE DATABASE hcode;

#Criar uma tabela e as colunas
CREATE TABLE tb_funcionarios (
	id INT, 
    nome VARCHAR(100),
    salario DECIMAL(10,2),
    admissao DATE,
    sexo ENUM('F', 'M'),
    cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);