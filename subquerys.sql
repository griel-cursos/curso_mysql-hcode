SELECT idpessoa FROM tb_pessoas WHERE desnome LIKE 'J%';
#Uma query que irá retornar o ID das pessoas com nomes que iniciem com J

DELETE FROM tb_pessoas WHERE idpessoa IN(SELECT idpessoa FROM tb_pessoas WHERE desnome LIKE 'J%');
#Uma subquery deve ser colocada entre (), que será executada antes do comando fora dos ().
#Neste caso, primeiro irá buscar os IDs das pessoas que o nome começam com J, e depois deletar os IDs