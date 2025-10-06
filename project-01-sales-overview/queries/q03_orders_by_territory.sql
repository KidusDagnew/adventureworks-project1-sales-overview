/* Q03: Show the number of orders placed in each sales territory.
   Uses: JOIN, COUNT, GROUP BY
   Output: TerritoryName, TotalOrders*/

SELECT
    ST.name AS TerritoryName ,
    COUNT(SO.Salesorderid) AS AmountOrdered
FROM sales.SalesOrderHeader SO
JOIN sales.SalesTerritory ST
    ON SO.territoryid = ST.territoryid
GROUP BY ST.name 
ORDER BY AmountOrdered DESC;
