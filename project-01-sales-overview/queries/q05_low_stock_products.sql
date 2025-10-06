/* Q05: List the products that are below their safety stock level.
   Uses: WHERE filter, ORDER BY
   Output: ProductName, SafetyStockLevel */

SELECT
    P.Name AS Product,
    SUM(PI.Quantity) AS TotalInventory
FROM Production.Product p
JOIN Production.ProductInventory PI 
    ON P.ProductID = PI.ProductID
GROUP BY P.Name
HAVING SUM(pi.Quantity) < 20
ORDER BY TotalInventory ASC;
