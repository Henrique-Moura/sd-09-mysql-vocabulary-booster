SELECT 
    C.ContactName AS `Nome de contato`,
    S.ShipperName AS `Empresa que fez o envio`,
    O.OrderDate AS `Data do pedido`
FROM
    w3schools.customers AS C
        INNER JOIN
    w3schools.orders AS O ON O.CustomerID = C.CustomerID
        INNER JOIN
    w3schools.shippers AS S ON S.ShipperID = O.ShipperID
WHERE S.ShipperID IN (1, 2)
ORDER BY `Nome de contato` ASC, `Empresa que fez o envio` ASC, `Data do pedido` ASC;