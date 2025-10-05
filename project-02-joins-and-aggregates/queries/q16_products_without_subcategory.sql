/* Q16: List products that do not have a subcategory.
   Return ProductID, Name, ProductSubcategoryID.
   Uses: LEFT JOIN, IS NULL
   Output: ProductID, Name, ProductSubcategoryID
*/

SELECT 
    p.ProductID,
    p.Name,
    p.ProductSubcategoryID
FROM Production.Product p
LEFT JOIN Production.ProductSubcategory ps
    ON p.ProductSubcategoryID = ps.ProductSubcategoryID
WHERE ps.ProductSubcategoryID IS NULL;
