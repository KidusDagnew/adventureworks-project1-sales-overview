# AdventureWorks SQL Project – Joins and Aggregates (Q11–Q22)

This project continues my SQL learning journey with the AdventureWorks sample database.  
The focus here is **multi-table joins, aggregation, filtering, and pagination** — the type of questions you’d solve in real analytics and reporting scenarios.

---

## What This Project Shows
- Writing queries that combine multiple tables using `JOIN`s  
- Summarizing and filtering data with `GROUP BY`, `HAVING`, and aggregates  
- Paginating results with `OFFSET`/`FETCH`  
- Creating practical, business-focused queries from real-world scenarios  

---

## How to Run
1. Database: AdventureWorks2019 (also works on 2017).  
2. Open any `.sql` file in this repo using SQL Server Management Studio or Azure Data Studio.  
3. Run the query against the database. Each file is independent and labeled Q11–Q22.  

---

## Business Questions Answered

| Q#  | Question | Key SQL Features |
|-----|----------|------------------|
| Q11 | List products with Name, ProductNumber, and ListPrice ordered by Name; skip first 20 and return next 10. | ORDER BY, OFFSET, FETCH |
| Q12 | List people whose last name starts with "St" and *second* letter is **not** a vowel. | LIKE, bracket sets, NOT |
| Q13 | Find products with ProductNumber like `AR-?-` (single character between dashes). | LIKE with `_` wildcard |
| Q14 | Show the 10 longest product names with their length. | LEN(), ORDER BY, TOP |
| Q15 | List top 5 orders by TotalDue, including ties. | TOP WITH TIES, ORDER BY |
| Q16 | List products that do **not** have a subcategory. | LEFT JOIN, WHERE IS NULL |
| Q17 | Show full name and email address (join Person + EmailAddress). | JOIN, CONCAT/`+` |
| Q18 | Bucket products into price bands (Low/Medium/High) by ListPrice. | CASE, GROUP BY |
| Q19 | Revenue by territory where revenue > $1M. | SUM, GROUP BY, HAVING |
| Q20 | Salesperson order counts and totals where count ≥ 50. | COUNT, GROUP BY, HAVING |
| Q21 | Discounted price as a DECIMAL(10,2). | CAST, arithmetic |
| Q22 | Orders placed in 2013, paged 20 at a time. | YEAR(), ORDER BY, OFFSET/FETCH |

---

## Folder Structure
