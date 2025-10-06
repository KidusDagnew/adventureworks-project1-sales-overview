/* Q10: Show revenue by sales territory. */

Select  
    ST.Name as territory,
   sum(SOH.Totaldue) as Revenue 
from sales.SalesTerritory ST 
join Sales.SalesOrderHeader Soh
    on st.territoryid = SOH.territoryid
Group by ST.NAME
Order by Revenue desc;