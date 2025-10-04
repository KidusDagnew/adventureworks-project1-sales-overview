/* Q04: List high-value customers whose lifetime purchases (SUM TotalDue) exceed 10,000. Use Sales.Customer + Sales.SalesOrderHeader (+ Person.Person for names). */

SELECT 
    p.FirstName + ' ' + p.LastName AS CustomerName,
    SUM(soh.TotalDue) AS LifetimePurchases
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader soh 
    ON c.CustomerID = soh.CustomerID
JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID
GROUP BY p.FirstName, p.LastName
HAVING SUM(soh.TotalDue) > 10000
ORDER BY LifetimePurchases DESC;

