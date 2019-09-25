#Apagando o ID 9
SELECT * FROM tb_funcionarios WHERE id = 9; #É recomendável conferir qual os dados serão apagados
DELETE FROM tb_funcionarios WHERE id = 9;

#Iniciando uma transação que pode ser iniciada ou cancelada
START TRANSACTION; #Inicio uma transação 

DELETE FROM tb_pessoas; #Comando que vou rodar dentro da transação

ROLLBACK; #Quero cancelar e desfazer a transação

COMMIT; #Confirmo a mudança. A partir deste momento não há como desfazer



SELECT * FROM tb_pessoas;