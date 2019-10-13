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

CREATE TABLE tb_pessoas (
	id INT AUTO_INCREMENT primary key,
    nome VARCHAR(100),
    sexo ENUM('F', 'M')
);

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

#Atualizar o funcionario da ID 2, aumentando o salario em 4%
UPDATE tb_funcionarios SET salario = salario*1.4 WHERE id = 2;
#Atualizando a data de admissão do funcionario com nome 'Luis'
UPDATE tb_funcionarios SET admissao = '2019-08-28' WHERE nome = 'Luis';
#Atualiza o campo com a data atual
UPDATE tb_funcionarios SET admissao = CURRENT_DATE() where id = 1;
#Atualizar o campo de admissão com a data de hoje mais 60 dias
UPDATE tb_funcionarios SET admissao = DATE_ADD(CURRENT_DATE(), INTERVAL 60 DAY) where id = 2;

INSERT INTO tb_pessoas VALUES (NULL, 'José', 'M');

# INÍCIO DA AULA DE TABELAS RELACIONADAS


CREATE TABLE tb_pessoas (
	idpessoa INT AUTO_INCREMENT NOT NULL,
    desnome VARCHAR(256) NOT NULL,
    dtcadastro TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    CONSTRAINT PK_pessoas PRIMARY KEY (idpessoa)
) ENGINE = InnoDB;

CREATE TABLE tb_funcionarios (
	idfuncionario INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    vlsalario DECIMAL (10,2) NOT NULL DEFAULT 1000.00,
    dtadmissao DATE NOT NULL,
    CONSTRAINT PK_funcionarios PRIMARY KEY (idfuncionario),
    CONSTRAINT FK_funcionarios_pessoas FOREIGN KEY (idpessoa)
		REFERENCES tb_pessoas (idpessoa)
);

INSERT INTO tb_pessoas VALUES(
	NULL,
    'Roberto',
    null
);

select * from tb_pessoas;

INSERT INTO tb_funcionarios VALUES (
	NULL,
    1,
    5000,
    CURRENT_DATE()
);

INSERT INTO tb_funcionarios VALUES (
	NULL,
    2,
    5000,
    CURRENT_DATE()
);

INSERT INTO tb_pessoas VALUES (NULL, 'João', NULL);

SELECT * FROM tb_funcionarios;