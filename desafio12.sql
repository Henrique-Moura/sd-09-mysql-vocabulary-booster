SELECT 
    CONCAT(T1.FIRST_NAME, ' ', T1.LAST_NAME) AS 'Nome completo funcionário 1',
    T1.SALARY AS 'Salário funcionário 1',
    T1.PHONE_NUMBER AS 'Telefone funcionário 1',
    CONCAT(T2.FIRST_NAME, ' ', T2.LAST_NAME) AS 'Nome completo funcionário 2',
    T2.SALARY AS 'Salário funcionário 2',
    T2.PHONE_NUMBER AS 'Telefone funcionário 2'
FROM
    hr.employees AS T1,
    hr.employees AS T2
WHERE
    CONCAT(T1.FIRST_NAME, ' ', T1.LAST_NAME) <> CONCAT(T2.FIRST_NAME, ' ', T2.LAST_NAME)
        AND T1.JOB_ID = T2.JOB_ID
ORDER BY `Nome completo funcionário 1` , `Nome completo funcionário 2`
