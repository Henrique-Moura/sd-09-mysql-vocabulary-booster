SELECT p.ProductName AS Produto,
MIN(o.Quantity) AS `Mímina`,
MAX(o.Quantity) AS `Máxima`,
ROUND(AVG(o.Quantity),2) AS `Média`
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
ON p.ProductID = o.ProductID
GROUP BY p.ProductName
HAVING `Média` > 20.00
ORDER BY 4, 1;
