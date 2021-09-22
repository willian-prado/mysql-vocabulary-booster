SELECT 
    JOB_TITLE AS `Cargo`,
    (MAX_SALARY - MIN_SALARY) AS `Variação Salarial`,
    ROUND((MIN_SALARY / 12), 2) AS `Média minima mensal`,
    ROUND((MAX_SALARY / 12), 2) AS `Média máxima mensal`
FROM
    jobs
ORDER BY `Variação Salarial` , `Cargo`;
