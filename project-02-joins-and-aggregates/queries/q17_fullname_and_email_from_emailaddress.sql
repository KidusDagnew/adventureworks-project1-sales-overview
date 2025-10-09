/* Q17: For people with an email, show FullName and a synthetic Email
   like firstname.lastname@adventure-works.com in lowercase.
   Uses: CONCAT, LOWER, alias
   Output: FullName, Email
*/

SELECT 
    CONCAT(firstname,' ',lastname) as fullname,
    LOWER(CONCAT(FIRSTNAME,'.', LASTNAME,'@adventure-works.com')) AS email
FROM person.person P
JOIN person.EmailAddress PE
    ON PE.Businessentityid = P.Businessentityid
