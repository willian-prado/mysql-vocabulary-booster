SELECT 
    p.ProductName AS `Produto`, p.Price AS `Preço`
FROM
    w3schools.products AS p
WHERE
    EXISTS( SELECT 
            *
        FROM
            w3schools.order_details AS od
        WHERE
            od.ProductID = p.ProductID
                AND od.Quantity > 80)
ORDER BY p.ProductName;
