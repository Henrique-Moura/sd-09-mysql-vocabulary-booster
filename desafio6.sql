SELECT
CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME) AS 'Nome Completo',
j.JOB_TITLE AS 'Cargo',
h.START_DATE AS 'Data de início do cargo',
d.DEPARTMENT_NAME AS 'Departamento'
FROM hr.job_history AS h
INNER JOIN employees AS e
ON h.EMPLOYEE_ID = e.EMPLOYEE_ID
INNER JOIN departments AS d
ON h.DEPARTMENT_ID = d.DEPARTMENT_ID
INNER JOIN jobs AS j
ON h.JOB_ID = j.JOB_ID
ORDER BY `Nome Completo` DESC, `Cargo`;
