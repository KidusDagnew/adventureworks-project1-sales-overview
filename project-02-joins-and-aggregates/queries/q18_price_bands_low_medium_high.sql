/* Q18b: Show ProductID, Name, SafetyStockLevel, StockBand 
   where SafetyStockLevel > 0
   and banding is: <500=Low, 500–1000=Medium, >1000=High.
   Uses: CASE, ORDER BY
   Output: ProductID, Name, SafetyStockLevel, StockBand
*/

Select 
    Productid,
    name,
    safetystocklevel,
case 
    when SafetyStockLevel < 500 then 'low'
    when SafetyStockLevel between 500 and 1000 then 'medium'
    when SafetyStockLevel >1000 then 'high'
end as Stockband
from production.product 
where SafetyStockLevel > 0 
order by SafetyStockLevel

