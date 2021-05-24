use hr;
DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT ROUND(AVG(SALARY),2) AS 'Média Salarial'
  FROM hr.employees;
END $$
DELIMITER ;
