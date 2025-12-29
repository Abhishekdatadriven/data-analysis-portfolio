# 🛍️ Retail Demand & Customer Behavior Analytics

## 📌 Project Overview
This project analyzes retail sales transactions to understand **customer purchasing behavior**, **product demand**, and **revenue trends** using **Python for data preparation** and **Power BI for interactive dashboards**.

The objective is to demonstrate an **end-to-end data analytics workflow**:
- Synthetic data creation
- Data cleaning & transformation
- Star schema modeling
- KPI-driven Power BI dashboards
- Business-focused insights

---

## 🛠️ Tools & Technologies
- **Python** (Pandas, NumPy)
- **Power BI**
- **DAX**
- **Excel (CSV storage)**
- **GitHub (version control & documentation)**

---

## 📁 Project Structure
Retail-Demand-Customer-Analytics/
│
├── data/
│ ├── raw/
│ │ ├── sales_raw.csv
│ │ ├── customers_raw.csv
│ │ ├── products_raw.csv
│ │ └── stores_raw.csv
│ │
└── processed/
│       ├── clean/
│       │   ├── customers_clean.csv
│       │   ├── products_clean.csv
│       │   ├── sales_clean.csv
│       │   └── stores_clean.csv
│       │
│       └── modeled/
│           ├── fact_sales.csv
│           ├── dim_date.csv
│           ├── dim_customer.csv
│           ├── dim_product.csv
│           └── dim_store.csv
│
├── python/
│ ├── data_creation.ipynb
│ ├── data_cleaning.ipynb
│ └── data_transformation.ipynb
│
├── powerbi/
│ └── retail_demand_analytics.pbix
│
├── visuals/
│ ├── executive_overview.png
│ ├── customer_behavior.png
│ ├── product_insights.png
│ └── time_analysis.png
│
├── README.md
└── findings.md



---

## 🔄 Data Pipeline
1. **Data Creation (Python)**  
   - Generated synthetic sales transactions
   - Modeled realistic repeat-customer behavior

2. **Data Cleaning**
   - Removed duplicates
   - Fixed datatypes
   - Validated revenue calculations

3. **Data Transformation**
   - Built **star schema** (fact + dimension tables)
   - Prepared analytics-ready tables for Power BI

4. **Visualization**
   - Multi-page Power BI dashboard
   - KPI cards, trend analysis, customer retention visuals

---

## 📊 Key KPIs
- Total Revenue
- Total Orders
- Active Customers
- Average Order Value
- Repeat Customers
- Retention Rate
- Month-over-Month Growth
- Revenue Contribution by Product

---

## 🎯 Business Use Cases
- Identify high-performing products and categories
- Understand customer loyalty and repeat behavior
- Track monthly revenue trends and seasonality
- Support data-driven pricing and marketing decisions

---

## 🚀 Outcome
This project demonstrates **practical retail analytics skills** and reflects real-world BI reporting standards suitable for **data analyst / BI analyst roles**.
