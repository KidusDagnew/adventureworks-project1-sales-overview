/* Q02: List the top 10 products by total revenue.
   Uses: JOIN, SUM, GROUP BY, TOP, ORDER BY
   Output: ProductName, TotalRevenue*/

SELECT TOP 10
        P.name AS 'ProductName',
        SUM(SO.linetotal) AS 'totalRevenue' 
FROM Production.Product p 
LEFT JOIN sales.SalesOrderDetail SO 
    ON P.productid = SO.productid
GROUP BY P.name 
ORDER BY totalRevenue DESC; 
