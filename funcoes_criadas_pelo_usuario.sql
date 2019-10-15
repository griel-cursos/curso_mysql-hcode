DELIMITER $$

CREATE FUNCTION fn_imposto_renda (

	pvlsalario DEC (10,2)

)
RETURNS dec (10,2)

BEGIN

	DECLARE vimposto DECIMAL(10,2);
   
   /* 
   
		até 1903,98 não paga impost
        1903,99 até 2826,65 paga 7,5% de 142,80
        2826,66 até 3751,05 paga 15% de 354,80
        3751,06 até 4664,68 paga 22,5% de 636,13
        acima de 4664,68 paga 27,5% de 869,36
   
   */
    
set vimposto = case
	when pvlsalario <= 1903.98 then 0
	when pvlsalario >= 1903.99 and pvlsalario <= 2826.65 then (pvlsalario*.075) - 142.80
    when pvlsalario >= 2826.66 and pvlsalario <= 3751.05 then (pvlsalario*.15) - 354.80
    when pvlsalario >= 3751.06 and pvlsalario <= 4664.68 then (pvlsalario*.225) - 636.13
    when pvlsalario > 4664.68 then (pvlsalario*.275) - 869.36
end;
    
    RETURN vimposto;

END $$


DELIMITER ;


SELECT *, fn_imposto_renda(a.vlsalario) AS vlimposto
FROM tb_funcionarios a
INNER JOIN tb_pessoas b USING(idpessoa);