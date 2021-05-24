/*Faça um relatório que mostra o histórico de cargos das pessoas empregadas*/

SELECT 
    CONCAT(emp.FIRST_NAME, ' ', emp.LAST_NAME) AS `Nome completo`,
    job.JOB_TITLE AS `Cargo`,
    jh.START_DATE AS `Data de início do cargo`,
    dep.DEPARTMENT_NAME AS `Departamento`
FROM
    hr.employees AS emp
        INNER JOIN
    hr.job_history AS jh ON jh.EMPLOYEE_ID = emp.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS job ON job.JOB_ID = jh.JOB_ID
        INNER JOIN
    hr.departments AS dep ON dep.DEPARTMENT_ID = jh.DEPARTMENT_ID
ORDER BY `Nome completo` DESC, `Cargo` ASC;
