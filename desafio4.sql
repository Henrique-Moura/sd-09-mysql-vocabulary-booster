SELECT j.job_title AS Cargo, ROUND(AVG(salary), 2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(salary), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(salary), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(salary), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN ROUND(AVG(salary), 2) > 10500 THEN 'CEO'
ELSE 'Não computado'
END AS 'Senioridade'
FROM hr.employees AS e
INNER JOIN hr.jobs AS j
ON j.job_id = e.job_id
GROUP BY j.job_title
ORDER BY ROUND(AVG(salary), 2) ASC, j.job_title ASC;
