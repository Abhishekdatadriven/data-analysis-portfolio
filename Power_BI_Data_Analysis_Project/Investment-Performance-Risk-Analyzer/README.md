# Investment Performance & Risk Analyzer (Power BI)

## 📌 Project Objective
To analyze the performance and risk of multiple investment assets using historical market data and present insights through an interactive Power BI dashboard.

## 🛠 Tools & Technologies
- Power BI (DAX, Data Modeling, Visualization)
- Python (Pandas, yfinance)
- Excel
- Statistics (Returns, Volatility, Drawdown)

## 📊 Dataset
- Source: Yahoo Finance
- Frequency: Monthly
- Period: 2020 – 2024
- Assets:
  - TCS
  - HDFC Bank
  - ITC
  - NIFTY50 (Benchmark)
  - Gold ETF
  - Debt ETF

## 🧱 Data Model
The project uses a **Star Schema**:
- Fact Table: Price & Return data
- Dimensions:
  - Date
  - Asset

This design improves performance, scalability, and time-based analysis.

## 📐 Key Metrics Implemented
- CAGR (Annualized Return)
- Total Return
- Volatility (Annualized Risk)
- Maximum Drawdown
- Risk-Adjusted Return
- Benchmark Outperformance

## 📊 Dashboard Pages
1. Executive Overview – Portfolio KPIs & benchmark comparison
2. Performance Analysis – Growth & return consistency
3. Risk Analysis – Volatility & drawdowns
4. Risk vs Return Matrix – Investment trade-off visualization

## 🔍 Key Insights
- High returns often come with higher risk.
- Diversification reduces drawdown severity.
- Benchmark comparison provides meaningful performance context.

## 📁 Project Structure
Investment-Performance-Risk-Analyzer/
│
├── 📁 data/
│   ├── 📁 raw/
│   │   ├── tatamotors_prices.csv
│   │   ├── icicibank_prices.csv
│   │   ├── itc_prices.csv
│   │   ├── nifty50_prices.csv
│   │   ├── gold_etf_prices.csv
│   │   └── debt_fund_prices.csv
│   │
│   └── 📁 processed/
│       ├── consolidated_prices.csv
│       ├── dim_date.csv
│       └── dim_asset.csv
│
├── 📁 python/
│   ├── data_cleaning.ipynb
│   └── data_preparation.ipynb
│
├── 📁 powerbi/
│   └── investment_risk_analyzer.pbix
│
├── 📁 visuals/
│   ├── dashboard_overview.png
│   ├── risk_return_scatter.png
│   └── compound_annual_growth_review.png
│
├── 📄 README.md
└── 📄 findings.md

## 📌 Learning Outcomes
- Built end-to-end BI solution
- Applied finance & statistical concepts
- Designed professional Power BI dashboards
- Implemented advanced DAX measures