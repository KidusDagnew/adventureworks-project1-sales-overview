/* Q08: Show monthly revenue trends (TotalDue by month). Use Sales.SalesOrderHeader. */

Select 
    year(orderdate) as orderyear,
    month(orderdate) as ordermonth,
    sum(totaldue) as totalrevenue  
from sales.salesorderheader 
group by year(orderdate), month(orderdate) 
order by orderyear, ordermonth;

