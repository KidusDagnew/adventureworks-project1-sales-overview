/* Q01: List the total sales amount for each year.
   Uses: SUM, GROUP BY, YEAR(), ORDER BY
   Output: OrderYear, TotalSalesAmount */

Select 
   SUM(totaldue) as 'Total Sales Amount For The Year ',
   YEAR(orderdate) as  'Order Date'
from sales.SalesOrderHeader
group by YEAR(orderdate);

