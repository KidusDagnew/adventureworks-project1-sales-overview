/* Q07: Find the top 5 salespeople by total revenue. Use Sales.SalesPerson + Sales.SalesOrderHeader (+ Person.Person for names). */

SELECT TOP 5
    CONCAT(p.FirstName, ' ', p.LastName) AS SalesPersonName,
    soh.SalesPersonID,
    SUM(soh.TotalDue) AS TotalRevenue
FROM Sales.SalesPerson AS sp
JOIN Sales.SalesOrderHeader AS soh
    ON sp.BusinessEntityID = soh.SalesPersonID
JOIN Person.Person AS p
    ON sp.BusinessEntityID = p.BusinessEntityID
WHERE soh.SalesPersonID IS NOT NULL
GROUP BY soh.SalesPersonID, p.FirstName, p.LastName
ORDER BY TotalRevenue DESC;

