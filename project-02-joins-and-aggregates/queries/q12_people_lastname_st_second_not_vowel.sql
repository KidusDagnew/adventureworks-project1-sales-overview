/* Q12: Show people (BusinessEntityID, FirstName, LastName)
   where the last name starts with S–T and the second letter is not a vowel.
   Uses: LIKE with bracket sets [ ] and NOT
   Output: BusinessEntityID, FirstName, LastName
*/

SELECT
     BusinessEntityID,
     FirstName,
     Lastname
FROM Person.person 
WHERE lastname LIKE '[ST][^AEIOU]%';
