/* Q22: List orders placed in 2013 with SalesOrderID, OrderDate, TotalDue.
   Sort by OrderDate DESC, SalesOrderID DESC. Skip 50 and return 25.
   Uses: WHERE YEAR(), ORDER BY, OFFSET, FETCH, CAST
   Output: SalesOrderID, OrderDate, TotalDue
*/

SELECT 
    SalesOrderID,
    CAST(OrderDate AS DATE) AS OrderDate,
    TotalDue
FROM Sales.SalesOrderHeader
WHERE YEAR(OrderDate) = 2013
ORDER BY OrderDate DESC, SalesOrderID DESC
OFFSET 50 ROWS
FETCH NEXT 25 ROWS ONLY;


