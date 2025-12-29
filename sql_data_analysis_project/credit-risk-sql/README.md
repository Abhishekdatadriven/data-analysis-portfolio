# Credit Risk Early Warning System (SQL Project)

## Project Overview
This project builds an early warning credit risk detection system using SQL.
The goal is to identify customers showing early behavioral signals of default risk
before an actual default occurs.

The project focuses on explainable, rule-based risk indicators commonly used
in banking and financial risk management teams.

---

## Business Problem
Credit defaults rarely happen suddenly.
Customers usually exhibit early behavioral deterioration such as
increased credit utilization, delayed payments, and declining repayment discipline.

This project answers:
**Which customers are becoming risky — before they default?**

---

## Dataset
- Source: Public Credit Card Default Dataset (Kaggle)
- Scope: Customer-level credit behavior across multiple months
- Note: The actual default label was intentionally excluded to avoid data leakage
  and to simulate a real-world early warning scenario.

---

## Key Risk Features Engineered
- **Credit Utilization Ratio**: Measures financial stress
- **Payment Ratio**: Measures repayment discipline
- **Average Payment Delay**: Captures chronic late behavior
- **Delay Trend**: Detects behavioral deterioration over time

---

## Risk Scoring Logic
Customers are evaluated using three risk flags:
- High credit utilization
- Chronic payment delay
- Worsening delay trend

These flags are combined into a composite risk score and classified into:
- **LOW RISK**
- **MEDIUM RISK**
- **HIGH RISK**

---

## Project Structure
```credit-risk-sql/
│── data/
│ └── credit_default.csv
│── sql/
│ ├── schema.sql
│ ├── data_cleaning.sql
│ ├── risk_features.sql
│ ├── risk_scoring.sql
│ └── analysis.sql
│── insights/
│ └── findings.md
│── README.md```

---

## Tools Used
- MySQL
- SQL Views & Window Logic
- Power Query (for data preprocessing)

---

## Key Outcomes
- Demonstrated SQL-based risk feature engineering
- Built an explainable early warning framework
- Avoided future-label leakage
- Produced business-ready customer risk segmentation

---

## Why This Project Stands Out
- Focuses on **risk**, not just reporting
- Uses **trend-based behavioral logic**
- Mirrors real-world banking analytics workflows
- Fully explainable without machine learning

---

## Author
**Abhishek Anandkar**  
Aspiring Data Analyst | SQL | Risk Analytics
