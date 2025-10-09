# AdventureWorks SQL – Project 02: Joins & Aggregates (Q11–Q22)

This project continues my SQL learning with the AdventureWorks sample database.  
Focus: multi-table joins, aggregation, filtering, pagination, and pattern matching.

## What this project shows
- INNER/LEFT/RIGHT JOINs
- `GROUP BY`, `HAVING`
- `CASE` bucketing
- `CAST` and string concatenation
- Pagination with `ORDER BY` + `OFFSET/FETCH`, `TOP WITH TIES`
- `LIKE` with wildcards and bracket sets
- NULL-safe joins

## How to run
1. Use **AdventureWorks2019** (2017 also works).
2. Open any file in **`project-02-joins-and-aggregates/queries/`** with SSMS or Azure Data Studio.
3. Run the script — each file is independent (Q11–Q22).

## Business questions answered

| Q#  | Question | Key SQL Features |
|-----|----------|------------------|
| Q11 | List products (Name, ProductNumber, ListPrice); skip 20, return next 10. | `ORDER BY`, `OFFSET`, `FETCH` |
| Q12 | Last name starts “St” and **second** letter is not a vowel. | `LIKE` bracket sets, `NOT` |
| Q13 | ProductNumber like `AR-?-` (single char between dashes). | `LIKE` with `_` |
| Q14 | Ten longest product names w/ length. | `LEN()`, `ORDER BY`, `TOP` |
| Q15 | Top 5 orders by TotalDue, **including ties**. | `TOP WITH TIES`, `ORDER BY` |
| Q16 | Products with **no** subcategory. | `LEFT JOIN`, `WHERE … IS NULL` |
| Q17 | Full name + email (join Person + EmailAddress). | `JOIN`, `CONCAT`/`+` |
| Q18 | Price bands (Low/Medium/High) by ListPrice. | `CASE`, `GROUP BY` |
| Q19 | Revenue by territory where revenue > $1M. | `SUM`, `GROUP BY`, `HAVING` |
| Q20 | Salesperson order counts & totals where count ≥ 50. | `COUNT`, `GROUP BY`, `HAVING` |
| Q21 | Discounted price as `DECIMAL(10,2)`. | `CAST`, arithmetic |
| Q22 | Orders in 2013, paged 20 at a time. | `YEAR()`, `ORDER BY`, `OFFSET/FETCH` |

➡️ Queries live here: **`project-02-joins-and-aggregates/queries/`**

---
**Author:** Kidus Dagnew
