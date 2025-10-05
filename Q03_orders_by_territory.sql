/* Q03: Show the number of orders placed in each sales territory.
   Uses: JOIN, COUNT, GROUP BY
   Output: TerritoryName, TotalOrders*/

Select 
    ST.name as TerritoryName ,
    count(SO.Salesorderid) as AmountOrdered
from sales.SalesOrderHeader SO
join sales.SalesTerritory ST
    on SO.territoryid = ST.territoryid
group by ST.name 
order by AmountOrdered desc;
