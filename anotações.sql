#Base de Dados é todo e qualquer lugar que armazena informação.
#Banco de Dados é onde gerencia e manipula os dados
#SQL significa Linguagem de Pesquisa Estruturada (Search Query Language)
#MySQL foi criado em 1996 pela TSX que foi comprada pela Sun e que foi comprada no final pela Oracle

#Para apagar um banco de dados, ele não pode estar em uso. 

#Servidor: Local físico onde é instalado o MySQL. Dentro de um servidor pode haver vários bancos de dados. 

#Tabelas também podem ser chamadas de entidades. 

#Comando: Possui uma ou mais cláusulas
#Clausula: Parâmetros para complementar um comando
#Operador: Exemplo, AND OR. 
#	= : Comparador
#	<> ou !=: Que sejam diferentes

#"O Operador Respeita o Tipo de Dados"
#SEMPRE TENHA MEDO E RESPEITO PELO 'AND'!!
#SEMPRE TENHA PAVOR E RESPEITO PELO 'OR'!!

#A virgula é somente após o comando SET

/* 
Comandos DDL (Data Defination Language) - Comandos de Estrutura
- DROP = Apaga o banco de dados e tudo que houver nele. 
- CREATE =  
- ALTER = 

Comandos DML (Data Manipulation Language) - Comandos de manipulação de dados
- INSERT
- DELETE
- UPDATE

Comando DQL (Data Query Language) - Comando de Consulta de Dados
- SELECT

Comando DTL (Data Transaction Language) - Comandos de Transações
- BEGIN
- TRANSACTION
- ROLLBACK
- COMMIT

Comando DCL (Data Controll Language) - Comandos de Controles
- GRANT = Concedo permissão de acesso
- DENY = Nego permissão de acesso
- REVOKE = Removo uma permissão de acesso concedida pelo GRANT

*/


/* 
INT = Número, valor tipo INTEIRO
VARCHAR = Texto (Variável de Caracteres). Após o VARCHAR, em parenteses é informado quantos caracteres podem ser informados.
	> VARCHAR(100)
DECIMAL = Valor com casa decimais. Após DECIMAL, em parenteses (a quantidade algarimos, valor de quantos serão decimais)
	> DECIMAL(10,2)
DATE = Datas, no padrão ANO-MES-DIA
	> DATE
ENUM = Valores pré-definidos. Após o parentses, informar entre aspas simples as opções.
	> ENUM('a', 'b')
TIMESTAMP = Data que retornará em números inteiros 
	> TIMESTAMP
DEFAULT = Deve ser usado em uma query para pré-definir um valor padrão na tabela
	> DEFAULT padrao()
CURRENT_TIMESTAMP() = Retorna o timestamp no momento em que a informação foi salva na tabela
	-> ... CURRENT_TIMESTAMP()
NULL = Informa um campo nulo (se a tabela permitir) para que o MySQL insira a informação padrão (DEFAULT)
	> NULL ou DEFAULT

*/


 /* 
 
 Uma view basicamente resume uma instrução do MySQL em um grupo, para que possa ser chamado de forma simples futuramente.
 
 Exemplo:
 
CREATE VIEW v_nome AS
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

Na pŕoxima consulta posso simplesmente chamar SELECT * FROM v_nome WHERE meus_filtros;

 
 
 
 
 */