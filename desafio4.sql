SELECT DISTINCT
    j.JOB_TITLE AS 'Cargo',
    ROUND(AVG(e.SALARY), 2) AS 'Média salarial',
    CASE
        WHEN
            ROUND(AVG(e.SALARY), 2) >= 2000
                AND ROUND(AVG(e.SALARY), 2) <= 5800
        THEN
            'Júnior'
        WHEN
            ROUND(AVG(e.SALARY), 2) >= 5801
                AND ROUND(AVG(e.SALARY), 2) <= 7500
        THEN
            'Pleno'
        WHEN
            ROUND(AVG(e.SALARY), 2) >= 7500
                AND ROUND(AVG(e.SALARY), 2) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.jobs AS j
        INNER JOIN
    hr.employees AS e ON j.JOB_ID = e.JOB_ID
GROUP BY j.JOB_TITLE
ORDER BY ROUND(AVG(e.SALARY), 2) ASC , j.JOB_TITLE ASC;
