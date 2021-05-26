SELECT p.ProductName as 'Produto', p.Price as 'Preço' FROM w3schools.products as p
INNER JOIN w3schools.order_details as o ON p.ProductID=o.ProductID
WHERE o.quantity > 80
ORDER BY `Produto`;
