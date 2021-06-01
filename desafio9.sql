SELECT 
	CONCAT(employees.FirstName, ' ', LastName) AS "Nome completo",
    COUNT(*) AS 'Total de pedidos'
FROM
    w3schools.employees AS employees
        INNER JOIN
    w3schools.orders AS orders ON orders.EmployeeID = employees.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY COUNT(*);