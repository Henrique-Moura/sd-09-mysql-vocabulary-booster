USE hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
    SELECT ROUND(AVG(salary),2) AS `Média salarial` FROM hr.employees AS e
    INNER JOIN hr.jobs AS j ON j.JOB_ID = e.JOB_ID
    WHERE JOB_TITLE = cargo;
END $$
DELIMITER ;
