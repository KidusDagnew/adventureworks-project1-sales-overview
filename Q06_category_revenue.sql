/* Q06: Show the total revenue for each product category.
   Uses: Multiple JOINs, SUM, GROUP BY
   Output: CategoryName, TotalRevenue */

Select 
    PC.name,
    SUM(SOD.linetotal) as Revenue 
from production.productcategory PC
join production.productsubcategory PS 
     on PC.productcategoryid = PS.productcategoryid
Join production.product P 
    on PS.ProductsubCategoryid = P.productsubcategoryid 
join sales.SalesOrderDetail SOD 
    on P.productid = SOD.productid 
GROUP by PC.name 
order by revenue desc;

