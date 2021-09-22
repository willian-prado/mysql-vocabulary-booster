DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(
  IN job_name VARCHAR(50)
)
BEGIN
    SELECT ROUND(AVG(e.SALARY), 2) AS `Média salarial`
  FROM hr.jobs as j
  INNER JOIN hr.employees as e ON j.JOB_ID = e.JOB_ID
  GROUP BY j.JOB_TITLE
    HAVING j.JOB_TITLE = job_name;
END $$

DELIMITER ;
