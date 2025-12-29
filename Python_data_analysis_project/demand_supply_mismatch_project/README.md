# 📦 Demand–Supply Mismatch Analytics (Python Project)

## 📌 Project Overview
This project analyzes demand–supply dynamics to identify inventory mismatches such as stockout risk and overstock risk.  
It converts raw operational data into actionable risk signals and quantifies their financial impact using Python analytics.

The project follows a **structured, end-to-end analytical workflow** suitable for real-world supply chain decision-making.

---

## 🎯 Objectives
- Detect demand–supply mismatches at product–day level
- Identify early warning signals for stockouts and overstock
- Quantify revenue loss and inventory holding costs
- Build executive-friendly insights and dashboards

---

## 🛠 Tools & Libraries
- Python
- pandas
- numpy
- matplotlib
- seaborn

---

## 🗂 Project Structure
```demand_supply_mismatch_project/
│
├── data/
│   ├── raw/
│   └── processed/
│
├── notebooks/
│   ├── 01_data_loading_cleaning.ipynb
│   ├── 02_demand_supply_features.ipynb
│   ├── 03_mismatch_detection.ipynb
│   ├── 04_impact_analysis.ipynb
│   └── 05_visualization_dashboard.ipynb
│
├── src/
│
├── README.md
├── findings.md
└── requirements.txt```



---

## 📘 Notebook Workflow

### 📓 Notebook 01 — Data Loading & Cleaning
- Generates realistic synthetic demand, inventory, and procurement data
- Ensures clean, structured time-series data for analysis

### 📓 Notebook 02 — Feature Engineering
- Rolling demand averages (7-day, 30-day)
- Demand volatility and inventory coverage
- Supply–demand gap and inventory stress indicators

### 📓 Notebook 03 — Mismatch Detection
- Identifies stockout risk and overstock risk days
- Classifies operational state per product
- Computes a composite risk score

### 📓 Notebook 04 — Impact Analysis
- Estimates lost revenue from stockout risks
- Calculates excess inventory and holding costs
- Aggregates business KPIs for decision-making

### 📓 Notebook 05 — Visualization & Dashboard
- Executive KPI snapshot
- Demand vs inventory trends
- Risk distribution and cost contribution by product
- Decision-focused visual storytelling

---

## 📊 Key Outcomes
- Overstock risks contributed more financial loss than stockouts
- Early warning signals prevented realized revenue loss
- Risk scoring enabled prioritization of operational interventions
- A small number of products drove most inefficiencies

---

## 🎤 Interview-Ready Project Summary
> “Built an end-to-end Python analytics solution to detect demand–supply mismatches, assess operational risk, and quantify financial impact using rolling statistics and executive dashboards.”

---

## 🚀 Future Enhancements
- Extend to multi-warehouse analysis
- Integrate real ERP or POS data
- Apply time-series forecasting models
- Automate alerts using thresholds

---

## 📌 Status
✅ Complete  
✅ Resume-ready  
✅ Interview-safe
