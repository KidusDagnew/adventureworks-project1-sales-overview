/* Q04: Identify the customers with the highest total spending.
   Uses: JOIN, SUM, GROUP BY, HAVING, CONCAT
   Output: CustomerName, TotalSpend */

SELECT 
    CONCAT(P.FirstName + ' ' + P.LastName) AS CustomerName,
    SUM(SOH.TotalDue) AS LifetimePurchases
FROM Sales.Customer C
JOIN Sales.SalesOrderHeader SOH
    ON C.CustomerID = SOH.CustomerID
JOIN Person.Person P
    ON C.PersonID = P.BusinessEntityID
GROUP BY P.FirstName, P.LastName
HAVING SUM(SOH.TotalDue) > 10000
ORDER BY LifetimePurchases DESC;

