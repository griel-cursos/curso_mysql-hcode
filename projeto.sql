CREATE DATABASE hcode;

CREATE TABLE tb_funcionarios (
	id INT, 
    nome VARCHAR(100),
    salario DECIMAL(10,2),
    admissao DATE,
    sexo ENUM('F', 'M'),
    cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO tb_funcionarios VALUES (1, 'Pedro Henrique', 4999.99, '2019-09-24', 'M', DEFAULT);

SELECT * FROM tb_funcionarios;

UPDATE tb_funcionarios SET cadastro = CURRENT_TIME();

DELETE FROM tb_funcionarios;

#################################################

USE hcode;

INSERT INTO tb_pessoas VALUES (1, 'Roberto', 'M'); 
INSERT INTO tb_pessoas (nome, sexo) values ('Nayane', 'F');
INSERT INTO tb_pessoas (nome, sexo) VALUES
	('Pedro', 'M'),
	('Claudia', 'F'),
	('Larissa', 'F'),
	('Antonio', 'M'),
	('Sérgio', 'M')
;

SELECT * FROM tb_pessoas;

INSERT INTO tb_funcionarios SELECT id, nome, 950, CURRENT_DATE(), sexo, NULL FROM tb_pessoas;


