/* Q21: Show ProductID, Name, ListPrice, and DiscountedPrice = ListPrice * 0.90
   cast to DECIMAL(10,2).
   Uses: CAST, arithmetic expression
   Output: ProductID, Name, ListPrice, DiscountedPrice */

Select 
    Productid,
    name,
    listprice,
    cast(listprice *0.90  as decimal(10,2)) as DiscountedPrice
from production.product 
where listprice > 0 