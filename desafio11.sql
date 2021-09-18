SELECT 
    T1.ContactName AS 'Nome',
    T1.Country AS 'País',
    COUNT(*) AS "Número de compatriotas" 
FROM
    w3schools.customers AS T1, w3schools.customers AS T2
WHERE T1.Country = T2.Country AND T1.ContactName <> T2.ContactName
GROUP BY T1.ContactName, T1.Country
ORDER BY T1.ContactName;
