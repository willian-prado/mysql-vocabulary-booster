DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE totalJobsByDate INT;
SELECT 
    COUNT(FIRST_NAME)
FROM
    hr.employees
WHERE
    YEAR(HIRE_DATE) = ano
        AND MONTH(HIRE_DATE) = mes INTO totalJobsByDate;
RETURN totalJobsByDate;
END $$

DELIMITER ;

SELECT EXIBIR_QUANTIDADE_PESSOAS_CONTRATADAS_POR_MES_E_ANO(6, 1987);
