SELECT CONCAT(e.FirstName, ' ', e.LastName) AS 'Nome Completo',
COUNT(o.OrderID) AS 'Total de pedidos'
FROM
w3schools.orders AS o
INNER JOIN
w3schools.employees AS e ON e.EmployeeID = o.EmployeeID
GROUP BY 
  e.EmployeeID 
ORDER BY 'Total de pedidos';