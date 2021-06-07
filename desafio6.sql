SELECT
DISTINCT CONCAT(employees.FIRST_NAME, ' ', employees.LAST_NAME) AS `Nome completo`,
jobs.JOB_TITLE AS Cargo,
jobHistory.START_DATE AS `Data de início do cargo`,
departments.DEPARTMENT_NAME AS Departamento
FROM hr.job_history AS jobHistory
INNER JOIN hr.employees AS employees
ON jobHistory.JOB_ID = employees.JOB_ID
INNER JOIN hr.jobs AS jobs
ON jobHistory.JOB_ID = jobs.JOB_ID
INNER JOIN hr.departments AS departments
ON jobHistory.DEPARTMENT_ID = departments.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, Cargo;
