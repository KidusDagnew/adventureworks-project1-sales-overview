/* Q08: Show monthly revenue trends across all orders.
   Uses: DATEPART or FORMAT for month, SUM, GROUP BY
   Output: YearMonth, TotalRevenue */

Select 
    YEAR(orderdate) AS orderyear,
    MONTH(orderdate) AS ordermonth,
    SUM(totaldue) AS totalrevenue  
FROM sales.salesorderheader 
GROUP BY YEAR(orderdate), MONTH(orderdate) 
ORDER BY orderyear, ordermonth;

