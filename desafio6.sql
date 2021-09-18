SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS 'Nome completo',
    J.JOB_TITLE AS 'Cargo',
    H.START_DATE AS 'Data de início do cargo',
    D.DEPARTMENT_NAME AS 'Departamento'
FROM
    hr.job_history AS H
        INNER JOIN
    hr.employees AS E ON H.EMPLOYEE_ID = E.EMPLOYEE_ID
        INNER JOIN
    hr.jobs AS J ON H.JOB_ID = J.JOB_ID
        INNER JOIN
    hr.departments AS D ON H.DEPARTMENT_ID = D.DEPARTMENT_ID
ORDER BY `Nome completo` DESC , `Cargo`;
