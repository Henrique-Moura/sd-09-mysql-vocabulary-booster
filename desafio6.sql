SELECT
CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
J.JOB_TITLE AS 'Cargo',
E.HIRE_DATE AS 'Data de início do cargo',
D.DEPARTMENT_NAME AS 'Departamento'
FROM hr.jobs J INNER JOIN hr.employees E ON E.JOB_ID = J.JOB_ID
INNER JOIN hr.departments D ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
ORDER BY CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) DESC, J.JOB_TITLE;
