# SQL Sales Data Analysis Project

## Author: Siya Gupta  
BTech in Computer Science | Business Analyst

---

## Project Overview

This project uses a sample sales database containing the following key tables:

- Agents  
- Customers  
- Orders  

It demonstrates how SQL can be used to extract and analyze useful business insights. The queries are written to solve real-world problems a business analyst might face.

---

## Tools Used

- MySQL Workbench  
- SQL (Joins, GROUP BY, WHERE, HAVING, Aggregations, Date Functions)

---

## Problem Statements and Queries

| No. | Description                                                 | SQL Concepts Used                   |
| --- | ----------------------------------------------------------- | ----------------------------------- |
| 1   | Number of customers handled by each agent                   | GROUP BY, COUNT()                   |
| 2   | Total outstanding amount per customer                       | GROUP BY, SUM()                     |
| 3   | Agents working in multiple countries                        | GROUP BY, COUNT(DISTINCT), HAVING  |
| 4   | Customer with the highest outstanding amount                | ORDER BY, LIMIT                     |
| 5   | Total order amount handled by each agent                    | GROUP BY, SUM()                     |
| 6   | Customers who paid more than they received                  | WHERE clause, basic calculations    |
| 7   | Total order amount by month                                 | Date formatting, GROUP BY           |
| 8   | Orders where advance is more than 50% of total order amount | WHERE clause, calculations          |
| 9   | Agents who do not have any customers                        | LEFT JOIN, IS NULL                  |
| 10  | Customers with their agent names grouped by city            | INNER JOIN, ORDER BY                |

---

## Key Takeaways

- Practiced writing and optimizing SQL queries  
- Analyzed and visualized sales performance data  
- Gained experience with joins, filters, aggregations, and date operations  
- Simulated real-world business reporting tasks

---

## Files Included

- `sales_analysis_queries1.sql` – contains all SQL queries used  
- `README.md` – explains the purpose and usage of the project

---

## How to Use

1. Clone or download this repository  
2. Open the SQL file using MySQL Workbench  
3. Run the queries one by one to explore the results

---

## Contact

For questions or feedback, feel free to reach out:  
**Email:** guptasiya282@gmail.com  
**LinkedIn:** https://www.linkedin.com/in/siyagupta/
