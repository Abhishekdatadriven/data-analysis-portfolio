# Credit Risk Early Warning System — Key Findings

## Objective
Identify customers showing early behavioral signals of credit default risk
using SQL-based feature engineering and rule-driven scoring.

---

## Key Risk Insights

### 1. High Credit Utilization Is a Strong Stress Indicator
Customers utilizing more than 80% of their credit limit consistently
exhibited higher payment delays and lower repayment ratios.
This signals financial stress before actual default occurs.

---

### 2. Payment Behavior Matters More Than Absolute Debt
Customers with moderate balances but low payment ratios showed
higher risk compared to customers with higher balances but disciplined payments.

---

### 3. Delay Trend Is a Critical Early Warning Signal
An increasing delay trend across recent months was a stronger risk indicator
than a single late payment.
Trend-based deterioration enables earlier intervention.

---

### 4. Composite Risk Scoring Improves Prioritization
Combining multiple behavioral flags into a composite risk score
allowed clear segmentation into LOW, MEDIUM, and HIGH risk customers,
enabling targeted risk management actions.

---

## Business Implications

- High-risk customers can be flagged for proactive outreach
- Medium-risk customers can receive reminders or payment restructuring offers
- Low-risk customers require no immediate intervention

---

## Conclusion
This SQL-based early warning framework demonstrates that
behavioral risk detection can be effectively achieved
without machine learning, using explainable and actionable logic.
