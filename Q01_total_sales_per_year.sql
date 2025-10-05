/* Q01: List the total sales amount for each year.
   Uses: SUM, GROUP BY, YEAR(), ORDER BY
   Output: OrderYear, TotalSalesAmount */

SELECT
   SUM(totaldue) AS 'Total Sales Amount For The Year ',
   YEAR(orderdate) AS  'Order Date'
FROM sales.SalesOrderHeader
GROUP BY YEAR(orderdate);

