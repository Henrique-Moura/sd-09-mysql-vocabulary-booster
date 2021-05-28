SELECT 
    UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS 'Nome completo',
    START_DATE AS 'Data de início',
    SALARY AS 'Salário'
FROM
    hr.employees AS e
    
INNER JOIN
hr.job_history AS j_h ON e.EMPLOYEE_ID = j_h.EMPLOYEE_ID

WHERE
    MONTH(START_DATE) <= 3

ORDER BY UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) , START_DATE;
