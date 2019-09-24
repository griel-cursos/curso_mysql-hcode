#Inserindo dados dentro de uma tabela

#Insert Posicional
INSERT INTO tb_pessoas VALUES (1, 'Roberto', 'M'); 

#Insert Declarativo
INSERT INTO tb_pessoas (nome, sexo) values ('Nayane', 'F');

#Insert Declarativo que adiciona vários valores
INSERT INTO tb_pessoas (nome, sexo) VALUES
	('Pedro', 'M'),
	('Claudia', 'F'),
	('Larissa', 'F'),
	('Antonio', 'M'),
	('Sérgio', 'M')
;

#Insert que copia os dados de uma tabela para a outra
INSERT INTO tb_funcionarios SELECT id, nome, 950, CURRENT_DATE(), sexo, NULL FROM tb_pessoas;
