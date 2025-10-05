/* Q09: List the top 10 customers by number of orders. */

SELECT TOP 10
   concat(p.FirstName, ' ', p.LastName) AS Name,
   COUNT(soh.SalesOrderID) AS numberOfOrders
FROM Sales.Customer c
JOIN Sales.SalesOrderHeader soh
    ON c.CustomerID = soh.CustomerID
JOIN Person.Person p
    ON c.PersonID = p.BusinessEntityID
GROUP BY concat(p.FirstName, ' ', p.LastName)
ORDER BY numberOfOrders DESC;
