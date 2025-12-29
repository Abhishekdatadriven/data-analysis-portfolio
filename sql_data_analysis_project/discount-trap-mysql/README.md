# Discount Trap: Revenue Growth but Profit Decline (E-Commerce)

## 📖 Project Overview
This project analyzes an e-commerce dataset to identify **products that show revenue growth but declining profitability due to excessive discounting**.

In many businesses, products are evaluated primarily on revenue performance. However, this can hide products that appear successful while silently eroding margins. This analysis focuses on uncovering such **“Discount Trap”** products using SQL-based profitability analysis.

---

## 🎯 Business Problem
**Which products are growing in sales but destroying profit due to heavy discounting?**

Traditional sales dashboards emphasize revenue growth, often ignoring margin deterioration. This project demonstrates why **profit-aware analytics** is critical for sustainable decision-making.

---

## 🧠 Analytical Approach
1. Built a **monthly product-level financial view** from transactional data  
2. Allocated **order-level discounts proportionally** to individual products  
3. Split data into **Early vs Recent periods** dynamically (no hard-coded dates)  
4. Calculated:
   - Revenue Growth %
   - Margin Change %
5. Classified products as **Discount Traps** when:
   - Revenue Growth > 0  
   - Margin Change < 0  

---

## 📊 Key Metrics Used
- Gross Revenue  
- Allocated Discount  
- Net Revenue  
- Net Profit  
- Profit Margin (%)  
- Revenue Growth (%)  
- Margin Change (%)  

---

## 🚨 Key Insights
- Several products showed **positive revenue growth but declining margins**
- Revenue-only analysis would incorrectly label these products as high performers
- Discount-driven growth can mask underlying profitability risks

---

## 💡 Business Recommendations
- Introduce **margin-based KPIs** alongside revenue metrics
- Review discount strategies for identified discount trap products
- Avoid blanket discounting without understanding margin impact
- Prioritize sustainable growth over short-term revenue boosts

---

## 🛠 Tools & Technologies
- **MySQL** (Views, Aggregations, Window-safe logic)
- **SQL** (Profitability & trend analysis)
- **GitHub** (Project documentation)

---

## 📁 Project Structure
''discount-trap-mysql/
├── data/
├── sql/
│ └── analysis.sql
├── insights/
│ └── findings.md
└── README.md'''


---

## 🚀 Why This Project Matters
This project demonstrates the ability to:
- Think beyond revenue metrics
- Translate raw data into business decisions
- Identify hidden commercial risks
- Apply SQL to real-world profitability problems

---

## 📌 Author
**Abhishek Anandkar**

