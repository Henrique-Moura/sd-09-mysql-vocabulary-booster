USE hr;
DELIMITER $$ 

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(EMAIL_EMPLOYEES VARCHAR(25))
RETURNS INT READS SQL DATA
BEGIN 
    DECLARE amount_of_jobs INT;
    SELECT 
    COUNT(*)
FROM
    hr.employees AS E
        INNER JOIN
    hr.job_history AS JH ON JH.EMPLOYEE_ID = E.EMPLOYEE_ID
WHERE EMAIL = EMAIL_EMPLOYEES INTO amount_of_jobs;
    RETURN amount_of_jobs; 
END $$ 

DELIMITER ; 
