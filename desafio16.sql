DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_usuario varchar(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE total_jobs INT;
    SELECT COUNT(e.FIRST_NAME) AS `total_empregos`
  FROM hr.employees as e
  INNER JOIN hr.job_history as jh ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
  WHERE e.EMAIL = email_usuario INTO total_jobs;
    RETURN total_jobs;
END $$

DELIMITER ;
