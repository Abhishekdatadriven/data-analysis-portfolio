                            Customer Loyalty ≠ Revenue Paradox (MySQL Analytics Project)

Project Overview

This project explores a common but flawed business assumption:
“More loyal customers are always more profitable.”

Using a fully relational MySQL database built from synthetic but behavior-driven data, the analysis demonstrates that customer loyalty and profitability can diverge significantly.

The project focuses on deriving loyalty from customer behavior, not from predefined labels, ensuring realistic and unbiased insights.


Business Problem

Many organizations invest heavily in retaining their most loyal customers without evaluating:

*Discount impact

*Cost structure

*Margin efficiency

*This project answers the question:

*Are the most loyal customers actually the most profitable?


Key Insights

*High-loyalty customers generate the highest revenue but not always the highest profit

*Medium-loyalty customers often provide the best profit efficiency

*Low-loyalty customers contribute volume but limited long-term value

*Loyalty alone is an incomplete metric for business decision-making

Conclusion: Profit-based segmentation is more effective than loyalty-based segmentation


🗂️ Dataset Description

The project uses synthetically generated data to simulate real e-commerce behavior.

               Tables

*customers — customer signup and region data

*products — product categories, cost, and selling prices

*orders — customer transactions with discounts

*order_items — line-level purchase details

Customer segments were intentionally excluded from the database to avoid data leakage.


🧮 Analytical Approach

1.Designed a normalized relational schema in MySQL

2.Loaded CSV data using secure MySQL ingestion

3.Calculated revenue and profit at transaction level

4.Derived customer loyalty using:

*Order frequency

*Customer tenure

5.Compared loyalty segments against revenue and profit metrics


🛠️ Tools & Technologies

1.MySQL (views, joins, aggregations, ETL)

2.Python (Pandas, NumPy) for synthetic data generation

3.Jupyter Notebook for data creation

4.Excel for validation checks

5.Markdown for documentation


📁 Project Structure
customer-loyalty-mysql/
│── data_generation/
│   └── generate_data.py
│── data/
│   ├── customers.csv
│   ├── products.csv
│   ├── orders.csv
│   └── order_items.csv
│── sql/
│   ├── schema.sql
│   ├── data_cleaning.sql
│   └── analysis.sql
│── insights/
│   └── findings.md
│── README.md


🚀 Why This Project Stands Out

*No copied Kaggle dataset

*No hard-coded customer segments

*Realistic business problem

*End-to-end SQL analytics workflow

*Strong storytelling with business impact


📌 Final Takeaway

Customer loyalty does not guarantee profitability.
Data-driven segmentation enables smarter, margin-focused decisions.
