/* Q14: Show the 10 longest product names with NameLen.
   Break ties deterministically.
   Uses: LEN(), TOP, ORDER BY
   Output: Name, NameLen
*/

Select top 10
   NAME,
   LEN(Name) as NameLen 
FROM production.product 
ORDER BY namelen DESC, name ASC ;
