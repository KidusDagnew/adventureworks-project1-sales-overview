/* Q06: Show the total revenue for each product category.
   Uses: Multiple JOINs, SUM, GROUP BY
   Output: CategoryName, TotalRevenue */

SELECT
    PC.name,
    SUM(SOD.linetotal) AS Revenue 
FROM production.productcategory PC
JOIN production.productsubcategory PS 
     ON PC.productcategoryid = PS.productcategoryid
JOIN production.product P 
    NO PS.ProductsubCategoryid = P.productsubcategoryid 
JOIN sales.SalesOrderDetail SOD 
    ON P.productid = SOD.productid 
GROUP BY PC.name 
ORDER BY revenue DESC;

