/* Q09: List the top customers ranked by number of orders placed.
   Uses: JOIN, COUNT, GROUP BY, ORDER BY
   Output: CustomerName, TotalOrders */

SELECT TOP 10
   CONCAT(P.FirstName, ' ', P.LastName) AS Name,
   COUNT(SOH.SalesOrderID) AS numberOfOrders
FROM Sales.Customer C
JOIN Sales.SalesOrderHeader SOH
    ON C.CustomerID = SOH.CustomerID
JOIN Person.Person P
    ON C.PersonID = P.BusinessEntityID
GROUP BY CONCAT(P.FirstName, ' ', P.LastName)
ORDER BY numberOfOrders DESC;
