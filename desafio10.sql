SELECT 
    P.ProductName AS 'Produto',
    MIN(OD.Quantity) AS 'Mínima',
    MAX(OD.Quantity) AS 'Máxima',
    ROUND(AVG(OD.Quantity), 2) AS 'Média'
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD ON P.ProductID = OD.ProductID
GROUP BY P.ProductName
HAVING `Média` > 20
ORDER BY `Média` , `Produto`;
