/* Q20: For each salesperson, list SalespersonName, Orders, TotalSales.
   Only include those with Orders ≥ 50.
   Uses: JOIN, COUNT, SUM, GROUP BY, HAVING
   Output: SalespersonName, Orders, TotalSales */

SELECT
    CONCAT(p.FirstName, ' ', p.LastName) AS SalespersonName,
    COUNT(soh.SalesOrderID)              AS Orders,
    SUM(soh.TotalDue)                    AS TotalSales
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.SalesPerson       AS sp ON soh.SalesPersonID   = sp.BusinessEntityID
JOIN Person.Person           AS p  ON sp.BusinessEntityID = p.BusinessEntityID
WHERE soh.SalesPersonID IS NOT NULL
GROUP BY p.FirstName, p.LastName
HAVING COUNT(soh.SalesOrderID) >= 50