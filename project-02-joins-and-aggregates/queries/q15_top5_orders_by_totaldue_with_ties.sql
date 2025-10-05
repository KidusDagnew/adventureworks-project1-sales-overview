/* Q15: List the top 5 sales orders by TotalDue, including ties.
   Uses: TOP WITH TIES, ORDER BY
   Output: SalesOrderID, OrderDate, TotalDue
*/

SELECT TOP 5 with ties 
    Salesorderid,
    orderdate,
    TotalDue
from sales.SalesOrderHeader
order by TotalDue DESC;