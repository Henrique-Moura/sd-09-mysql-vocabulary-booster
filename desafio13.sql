SELECT 
    P.ProductName AS 'Produto', P.PRICE AS 'Preço'
FROM
    w3schools.products AS P
        INNER JOIN
    w3schools.order_details AS OD ON OD.ProductID = P.ProductID
WHERE
    OD.Quantity > 80
ORDER BY P.ProductName;
