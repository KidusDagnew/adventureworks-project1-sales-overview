/* Q01: List total sales amount (TotalDue) for each year from Sales.SalesOrderHeader, oldest→newest. */

Select sum(totaldue) as 'Total Sales Amount For The Year ',
        year(orderdate) as  'Order Date'
from sales.SalesOrderHeader
group by year(orderdate);

