SELECT 
    p.ProductName AS 'Produto',
    MIN(o.Quantity) AS 'Mínima',
    MAX(o.Quantity) AS 'Máxima',
    ROUND(AVG(o.Quantity), 2) AS 'Média'
FROM
    w3schools.order_details AS o
        JOIN
    w3schools.products AS p ON o.ProductID = p.ProductID
GROUP BY `Produto`
HAVING AVG(o.Quantity) > 20
ORDER BY `Média` , `Produto`;
