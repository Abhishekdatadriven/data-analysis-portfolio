# 📊 Key Findings — Demand–Supply Mismatch Analytics

## 1. Overall System Health
- The majority of product–day observations are operationally **balanced**
- Only a small percentage of days exhibit **stockout risk** or **overstock risk**
- This indicates a generally stable inventory system with occasional inefficiencies

---

## 2. Stockout Risk Insights
- Stockout risk days occur when inventory coverage drops below critical levels while demand is increasing
- In the observed period, **stockout risks were detected early**, before actual sales loss occurred
- As a result, estimated lost revenue remained minimal, indicating timely replenishment

**Business Interpretation:**  
The system functions more as a **preventive warning mechanism** than a failure detector.

---

## 3. Overstock Risk Insights
- Overstock risk days were more frequent than stockout risks
- Excess inventory leads to **continuous holding costs**, even when sales are stable
- Overstock costs contributed the **largest share of financial impact** in the system

**Business Interpretation:**  
Overstock is a *silent cost* that erodes profitability without immediate visibility.

---

## 4. Financial Impact Analysis
- Estimated lost revenue was low due to proactive inventory replenishment
- Estimated overstock holding cost was significant, highlighting inefficient capital utilization
- A small subset of products accounted for a disproportionate share of total cost

---

## 5. Risk Score & Prioritization
- Higher risk scores aligned with higher financial impact
- Risk scoring enabled prioritization of operational actions
- Not all risk days require intervention — focus should be on **high-severity, high-cost cases**

---

## 6. Strategic Recommendations
- Improve demand forecasting accuracy to reduce excess inventory
- Introduce adaptive reorder quantities instead of fixed replenishment
- Monitor inventory coverage trends rather than absolute inventory levels
- Use risk scores to drive exception-based inventory management

---

## 📌 Conclusion
This analysis demonstrates how demand–supply mismatches can be detected early, classified operationally, and translated into financial impact, enabling data-driven inventory decisions.
