USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo (IN cargo VARCHAR(45))
BEGIN
SELECT ROUND(AVG(SALARY), 2) AS `Média salarial`
FROM hr.employees
WHERE JOB_ID = (
  SELECT JOB_ID
  FROM hr.jobs
  WHERE JOB_TITLE = cargo
)
GROUP BY JOB_ID;
END $$

DELIMITER ;