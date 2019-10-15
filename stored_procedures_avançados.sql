DELIMITER $$
# Limitador agora é $$

#Dentro dos () irá vir os parâmetros da procedure, como se fosse criar uma tabela
CREATE PROCEDURE sp_funcionario_save (
	pdesnome VARCHAR(256),
    pvlsalario DEC(10,2),
    pdtadmissao DATETIME
)

begin #Começa a procedure

	DECLARE vidpessoa INT; #DECLARE = Declara uma variável
    
    START TRANSACTION;
    
    IF NOT EXISTS (SELECT idpessoa FROM tb_pessoas WHERE desnome = pdesnome) THEN
		
        INSERT INTO tb_pessoas VALUES (null, pdesnome, DEFAULT);
        
        SET vidpessoa = last_insert_id(); #Define a variavel vidpessoa como o ultimo id inserido
        
        ELSE
			
            SELECT 'Usuário já cadastrado' AS resultado;
            ROLLBACK;
        
	END IF;
    
    IF NOT EXISTS (SELECT idpessoa FROM tb_funcionarios WHERE idpessoa = vidpessoa) THEN
		
        INSERT INTO tb_funcionarios VALUES (null, vidpessoa, pvlsalario, pdtadmissao);
        
        ELSE
			
            SELECT 'Usuário já cadastrado' AS resultado;
            ROLLBACK;
        
	END IF;
    
    COMMIT;
    
    SELECT 'Dados cadastrados com sucesso' AS resultado;
    
    

end $$ #Termina a procedure

delimiter ;


call sp_funcionario_save('Antonio', 50000, CURRENT_DATE());