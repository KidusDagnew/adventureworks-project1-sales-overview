/* Q11: List products (Name, ProductNumber, ListPrice) ordered by Name. 
   Skip the first 20 rows and return the next 10.
   Uses: ORDER BY, OFFSET, FETCH
   Output: Name, ProductNumber, ListPrice 
*/

SELECT 
    Name as productname,
    productnumber,
    listprice 
from Production.product 
ORDER BY name ASC
OFFSET 20 ROWS
FETCH NEXT 10 ROWS ONLY;
