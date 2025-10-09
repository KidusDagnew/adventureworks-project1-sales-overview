/* Q13: List products whose ProductNumber begins with 'AR',
   followed by exactly one character, then a dash (e.g., ARX-…).
   Uses: LIKE with underscore _
   Output: ProductNumber, Name
*/

SELECT 
    productnumber,
    NAME AS productname
FROM production.product 
WHERE productnumber LIKE 'AR_-%'