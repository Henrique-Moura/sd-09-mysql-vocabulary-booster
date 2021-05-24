SELECT j.JOB_TITLE AS 'Cargo',
ROUND(AVG(e.SALARY)) AS "Média Salarial",
(CASE
        WHEN AVG(e.SALARY) >= 2000
			AND AVG(e.SALARY) <= 5800 THEN 'Júnior'
  WHEN
            AVG(e.SALARY) > 5801
                AND AVG(e.SALARY) <= 7500
        THEN
            'Pleno'
        WHEN
            AVG(e.SALARY) > 7501
                AND AVG(e.SALARY) <= 10500
        THEN
            'Sênior'
        ELSE 'CEO'
    END) AS 'Senioridade'
FROM
    hr.jobs AS j
    INNER JOIN
    hr.employees AS e
    ON j.JOB_ID = e.JOB_ID
GROUP BY Cargo
ORDER BY AVG(e.SALARY) , Cargo;
