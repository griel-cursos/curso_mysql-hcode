#Criar uma tabela onde irá armazenar os pedidos

CREATE TABLE tb_pedidos (
	idpedido INT AUTO_INCREMENT NOT NULL,
    idpessoa INT NOT NULL,
    dtpedido DATETIME NOT NULL,
    vlpedido DEC(10,2),
    CONSTRAINT pk_pedidos PRIMARY KEY (idpedido),
    CONSTRAINT FK_pedidos_pessoas FOREIGN KEY (idpessoa) REFERENCES tb_pessoas (idpessoa)
);

SELECT * FROM tb_pessoas;
#Inserir alguns dados na tabela
INSERT INTO tb_pedidos VALUES(NULL,1,CURRENT_DATE(),22000.00);
INSERT INTO tb_pedidos VALUES(NULL,1,CURRENT_DATE(),5000.00);
INSERT INTO tb_pedidos VALUES(NULL,1,CURRENT_DATE(),980.00);
INSERT INTO tb_pedidos VALUES(NULL,1,CURRENT_DATE(),59.90);
INSERT INTO tb_pedidos VALUES(NULL,2,CURRENT_DATE(),109.90);
INSERT INTO tb_pedidos VALUES(NULL,2,CURRENT_DATE(),59.90);
INSERT INTO tb_pedidos VALUES(NULL,2,CURRENT_DATE(),69.90);
INSERT INTO tb_pedidos VALUES(NULL,2,CURRENT_DATE(),49.90);
INSERT INTO tb_pedidos VALUES(NULL,3,CURRENT_DATE(),490.90);

#Somando o vlpedido de um desnome na coluna total, agrupando por idpessoa da tabela de pessoas
SELECT b.desnome, SUM(a.vlpedido) as total FROM
tb_pedidos a
INNER JOIN tb_pessoas b
USING (idpessoa)
GROUP BY b.idpessoa
;
#pegando a média, máxima, minima e o total dos pedidos
SELECT b.desnome, SUM(a.vlpedido) as total, 
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) as 'menor valor',
CONVERT(MAX(a.vlpedido), DEC(10,2)) as 'maior valor',
COUNT(*) AS 'Total de Pedidos'
FROM tb_pedidos a
INNER JOIN tb_pessoas b
USING (idpessoa)
GROUP BY b.idpessoa
ORDER BY SUM(a.vlpedido) DESC;


SELECT b.desnome, SUM(a.vlpedido) as total, #Vou somar o vlpedido e jogar na coluna total
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media, #Vou converter o vlpedido em decimal e jogar na média
CONVERT(MIN(a.vlpedido), DEC(10,2)) as 'menor valor', #vou converter o menor pedido em decimal 
CONVERT(MAX(a.vlpedido), DEC(10,2)) as 'maior valor', #vou converter o maior pedido em decimal
COUNT(*) AS 'Total de Pedidos' #Vou somar todos os pedidos
FROM tb_pedidos a
INNER JOIN tb_pessoas b
USING (idpessoa)
GROUP BY b.idpessoa
ORDER BY SUM(a.vlpedido) DESC;

#Filtrando com a cláusula having

SELECT b.desnome, SUM(a.vlpedido) as total, 
CONVERT(AVG(a.vlpedido), DEC(10,2)) AS media,
CONVERT(MIN(a.vlpedido), DEC(10,2)) as 'menor valor',
CONVERT(MAX(a.vlpedido), DEC(10,2)) as 'maior valor',
COUNT(*) AS 'Total de Pedidos'
FROM tb_pedidos a
INNER JOIN tb_pessoas b
USING (idpessoa)
GROUP BY b.idpessoa
HAVING SUM(a.vlpedido) > 5000 #traz o valor da soma dos pedidos somente acima de 5000
ORDER BY SUM(a.vlpedido) DESC;




