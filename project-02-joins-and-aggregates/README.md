# AdventureWorks SQL Project – Joins & Aggregates (Q11–Q22)

This project continues my SQL learning journey using the AdventureWorks sample database.
It focuses on multi-table joins, aggregations, filtering, and pagination—typical analytics/reporting tasks.

---

## What This Project Shows
- Multi-table JOINs (INNER/LEFT/RIGHT)
- Aggregating and filtering with GROUP BY and HAVING
- Pagination with ORDER BY + OFFSET/FETCH
- Practical business-style questions

---

## How to Run
1. Database: AdventureWorks2019 (2017 also works).
2. Open any `.sql` file in `queries/` using SSMS or Azure Data Studio.
3. Run the query—each file is independent (Q11–Q22).

---

## Business Questions Answered

| Q#  | Question | Key SQL Features |
|-----|----------|------------------|
| Q11 | List products with Name, ProductNumber, ListPrice; skip 20, return next 10. | ORDER BY, OFFSET/FETCH |
| Q12 | People with last name starting "St" and second letter not a vowel. | LIKE, bracket sets, NOT |
| Q13 | Products with ProductNumber like `AR-?-` (single char between dashes). | LIKE `_` wildcard |
| Q14 | 10 longest product names with length. | LEN(), ORDER BY, TOP |
| Q15 | Top 5 orders by TotalDue including ties. | TOP WITH TIES, ORDER BY |
| Q16 | Products with no subcategory. | LEFT JOIN, WHERE IS NULL |
| Q17 | Full name + email (join Person + EmailAddress). | JOIN, CONCAT/+ |
| Q18 | Price bands (Low/Medium/High) by ListPrice. | CASE, GROUP BY |
| Q19 | Revenue by territory where revenue > $1M. | SUM, GROUP BY, HAVING |
| Q20 | Salesperson order counts & totals where count ≥ 50. | COUNT, GROUP BY, HAVING |
| Q21 | Discounted price as DECIMAL(10,2). | CAST, arithmetic |
| Q22 | Orders in 2013, paged 20 at a time. | YEAR(), ORDER BY, OFFSET/FETCH |

---

## Folder Structure

\`\`\`
project-02-joins-and-aggregates/
├── README.md
└── queries/
    ├── q11_paginated_products.sql
    ├── q12_people_lastname_st_second_not_vowel.sql
    ├── q13_productnumber_ar_single_char_dash.sql
    ├── q14_top10_longest_product_names.sql
    ├── q15_top5_orders_by_totaldue_with_ties.sql
    ├── q16_products_without_subcategory.sql
    ├── q17_fullname_and_email_from_emailaddress.sql
    ├── q19_revenue_by_territory_over_1m.sql
    ├── q20_salesperson_orders_and_totals_ge_50.sql
    ├── q21_discounted_price_decimal.sql
    └── q22_orders_in_2013_paged.sql
\`\`\`
