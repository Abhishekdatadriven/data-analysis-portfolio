# Advanced SQL Business Analytics Project

## 📌 Project Overview
This project focuses on solving real-world business questions using **advanced SQL techniques**.  
Instead of building dashboards, the goal is to **answer analytical questions through SQL queries**, similar to how data analysts work in interviews and on-the-job scenarios.

The project demonstrates strong command over:
- SQL joins
- Aggregations
- Common Table Expressions (CTEs)
- Window functions
- Business interpretation of results

---

## 🗂 Dataset Description
The dataset is synthetically generated to simulate an e-commerce environment.

### Tables Used:
- **customers** – customer details and regions
- **products** – product catalog and categories
- **orders** – customer orders with dates
- **order_items** – order-level product transactions

The data volume is intentionally large to resemble real business databases.

---

## 🛠 SQL Concepts Covered
- `JOIN` (INNER JOIN across multiple tables)
- `GROUP BY` and `HAVING`
- `CTE (WITH clause)`
- Window Functions:
  - `ROW_NUMBER()`
  - `RANK()`
  - `LAG()`
  - `LEAD()`
- Subqueries
- Date-based aggregations
- Business KPIs (Revenue, Growth, Retention)

---

## 📊 Business Questions Solved

### Basic Level
- Total revenue per product
- Orders per customer
- Revenue by category
- Average order value
- Monthly order counts

### Intermediate Level
- Top customers by revenue
- Category-wise performance
- Customers with multiple purchases
- Monthly revenue trends
- High-value customers using HAVING

### Advanced Level
- Rank customers by revenue within regions
- Top 3 products per category
- Month-over-month revenue growth
- Customer purchase gap analysis
- First-time vs repeat customer identification

---

## 📁 Project Structure
```sql-business-qa/
│
├── data/
│   ├── customers_01.csv
│   ├── products_01.csv
│   ├── orders_01.csv
│   └── order_items_01.csv
│
├── sql/
│   ├── schema.sql
│   ├── data_load.sql
│   ├── questions_basic.sql
│   ├── questions_intermediate.sql
│   └── questions_advanced.sql
│
├── insights/
│   └── findings.md
│
└── README.md```
