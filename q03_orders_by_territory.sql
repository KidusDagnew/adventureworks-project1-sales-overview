/* Q03: Show number of orders by territory. Use Sales.SalesOrderHeader + Sales.SalesTerritory. Order by most orders first. */

Select 
    ST.name as territoryName ,
    count(SO.Salesorderid) as AmountOrdered
from sales.SalesOrderHeader SO
join sales.SalesTerritory ST
    on SO.territoryid = ST.territoryid
group by ST.name 
order by AmountOrdered desc;