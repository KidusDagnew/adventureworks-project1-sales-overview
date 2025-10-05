/* Q02: List the top 10 products by total revenue.
   Uses: JOIN, SUM, GROUP BY, TOP, ORDER BY
   Output: ProductName, TotalRevenue*/

Select TOP 10
        P.name as 'ProductName',
        SUM(SO.linetotal) as 'totalRevenue' 
from Production.Product p 
left join sales.SalesOrderDetail SO 
    on P.productid = SO.productid
group by P.name 
order by totalRevenue desc; 
