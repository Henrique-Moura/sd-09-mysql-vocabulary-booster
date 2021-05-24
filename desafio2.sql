SELECT 
    jobs.JOB_TITLE AS 'Cargo',
    CASE
        WHEN jobs.MAX_SALARY BETWEEN 5000 AND 10000 THEN 'Baixo'
        WHEN jobs.MAX_SALARY BETWEEN 10001 AND 20000 THEN 'Médio'
        WHEN jobs.MAX_SALARY BETWEEN 2001 AND 30000 THEN 'Alto'
        WHEN jobs.MAX_SALARY > 3000 THEN 'Altíssimo'
        ELSE 'indefinido'
    END AS 'Nível'
FROM
    hr.jobs AS jobs
GROUP BY jobs.JOB_TITLE
ORDER BY jobs.JOB_TITLE;