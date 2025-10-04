/* Q05: Show products with total inventory quantity < 20. Use Production.ProductInventory + Production.Product. */

SELECT
    p.Name AS Product,
    SUM(pi.Quantity) AS TotalInventory
FROM Production.Product p
JOIN Production.ProductInventory pi 
    ON p.ProductID = pi.ProductID
GROUP BY p.Name
HAVING SUM(pi.Quantity) < 20
ORDER BY TotalInventory ASC;
