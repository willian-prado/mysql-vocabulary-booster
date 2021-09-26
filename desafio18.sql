SELECT 
    CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(jh.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(jh.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(datediff(END_DATE,
        jh.START_DATE)/365, 2) AS `Anos trabalhados`
FROM
    hr.job_history AS jh
        INNER JOIN
    hr.employees AS e ON jh.EMPLOYEE_ID = e.EMPLOYEE_ID
ORDER BY `Nome completo`, `Anos trabalhados`;
