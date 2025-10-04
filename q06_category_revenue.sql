
/* Q06: Show revenue by product category. Join ProductCategory → ProductSubcategory → Product → Sales.SalesOrderDetail. */

Select 
    PC.name,
    SUM(SOD.linetotal) as Revenue 
from production.productcategory PC
join production.productsubcategory PS 
     on PC.productcategoryid = PS.productcategoryid
Join production.product P 
    on ps.ProductsubCategoryid = p.productsubcategoryid 
join sales.SalesOrderDetail SOD 
    on p.productid = SOD.productid 
GROUP by pc.name 
order by revenue desc;

