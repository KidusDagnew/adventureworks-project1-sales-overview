/* Q07: List the top 5 salespeople ranked by total revenue.
   Uses: JOIN, SUM, GROUP BY, TOP, ORDER BY
   Output: SalespersonName, TotalRevenue */

SELECT TOP 5
    CONCAT(P.FirstName, ' ', P.LastName) AS SalesPersonName,
    SOH.SalesPersonID,
    SUM(SOH.TotalDue) AS TotalRevenue
FROM Sales.SalesPerson AS SP
JOIN Sales.SalesOrderHeader AS SOH
    ON SP.BusinessEntityID = SOH.SalesPersonID
JOIN Person.Person AS p
    ON SP.BusinessEntityID = P.BusinessEntityID
WHERE SOH.SalesPersonID IS NOT NULL
GROUP BY SOH.SalesPersonID, P.FirstName, P.LastName
ORDER BY TotalRevenue DESC;

