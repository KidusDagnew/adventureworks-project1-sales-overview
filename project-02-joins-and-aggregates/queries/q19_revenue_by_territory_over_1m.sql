/* Q19: Show each sales territory’s Orders and Revenue,
   but only include territories with Revenue > 1,000,000.
   Uses: JOIN, SUM, GROUP BY, HAVING
   Output: TerritoryName, Orders, TotalRevenue
*/

SELECT 
    st.Name AS TerritoryName,
    COUNT(soh.SalesOrderID) AS Orders,
    SUM(soh.TotalDue) AS TotalRevenue
FROM Sales.SalesOrderHeader soh
JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
GROUP BY st.Name
HAVING SUM(soh.TotalDue) > 1000000
ORDER BY TotalRevenue DESC;
