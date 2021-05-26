SELECT 
    ProductName AS Produto, Price AS Preço
FROM
    w3schools.products AS P
INNER JOIN w3schools.order_details AS OD ON P.ProductID = OD.ProductID
INNER JOIN w3schools.orders AS O ON OD.OrderID = O.OrderID
WHERE OD.Quantity > 80 ORDER BY Produto ASC;
