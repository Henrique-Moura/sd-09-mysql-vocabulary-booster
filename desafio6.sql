SELECT
CONCAT(T1.FIRST_NAME,' ',T1.LAST_NAME) AS 'Nome completo',
T3.JOB_TITLE AS 'Cargo',
T2.START_DATE 'Data de início do cargo',
T4.DEPARTMENT_NAME AS 'Departamento'
FROM hr.employees AS T1
INNER JOIN hr.job_history AS T2
ON T1.EMPLOYEE_ID = T2.EMPLOYEE_ID
INNER JOIN hr.jobs AS T3
ON T2.JOB_ID = T3.JOB_ID
INNER JOIN hr.departments AS T4
ON T2.DEPARTMENT_ID = T4.DEPARTMENT_ID
ORDER BY CONCAT(T1.FIRST_NAME,' ',T1.LAST_NAME) DESC, T3.JOB_TITLE ASC;
