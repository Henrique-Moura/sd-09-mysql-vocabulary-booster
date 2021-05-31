USE hr
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo CHAR(100))
BEGIN
	SELECT ROUND(AVG(SALARY), 2) AS 'Média salarial' FROM hr.employees AS E
	INNER JOIN hr.jobs AS J ON E.JOB_ID = J.JOB_ID
	WHERE J.JOB_TITLE = cargo;
END $$
DELIMITER ;