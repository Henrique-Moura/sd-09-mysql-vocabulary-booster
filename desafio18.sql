SELECT
CONCAT(T1.FIRST_NAME, ' ', T1.LAST_NAME) AS 'Nome completo',
DATE_FORMAT(T2.START_DATE, '%d/%m/%Y') AS 'Data de início',
DATE_FORMAT(T2.END_DATE, '%d/%m/%Y') AS 'Data de rescisão',
ROUND(DATEDIFF(T2.END_DATE, T2.START_DATE) / 365, 2) AS 'Anos trabalhados'
FROM hr.employees AS T1
INNER JOIN hr.job_history AS T2
ON T1.EMPLOYEE_ID = T2.EMPLOYEE_ID
ORDER BY `Nome completo` ASC, `Anos trabalhados` ASC;
