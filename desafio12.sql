SELECT
CONCAT(T1.FIRST_NAME, ' ', T1.LAST_NAME) AS 'Nome completo funcionário 1',
T1.SALARY AS 'Salário funcionário 1',
T1.PHONE_NUMBER AS 'Telefone funcionário 1',
CONCAT(T2.FIRST_NAME, ' ', T2.LAST_NAME) AS 'Nome completo funcionário 2',
T2.SALARY AS 'Salário funcionário 2',
T2.PHONE_NUMBER AS 'Telefone funcionario 2'
FROM hr.employees AS T1
INNER JOIN hr.employees AS T2
ON T1.JOB_ID = T2.JOB_ID AND T1.EMPLOYEE_ID <> T2.EMPLOYEE_ID
ORDER BY CONCAT(T1.FIRST_NAME, ' ', T1.LAST_NAME) ASC, CONCAT(T2.FIRST_NAME, ' ', T2.LAST_NAME) ASC;
