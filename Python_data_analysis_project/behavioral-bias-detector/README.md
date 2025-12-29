# Behavioral Bias Detector in Stock Trading

## 📌 Project Overview
This project detects **behavioral biases** in stock trading using historical price and volume data.  
Instead of only measuring returns, the analysis focuses on **investor psychology** such as panic selling, loss aversion, and overtrading — validated using **statistical hypothesis testing**.

The project is designed to demonstrate how **data analysis + behavioral finance + statistics** can uncover non-random investor behavior.

---

## 🎯 Problem Statement
> “Do investors react rationally to losses, or do emotions like fear and panic influence trading behavior?”

---

## 🛠 Tools & Libraries
- Python
- pandas, numpy
- scipy (hypothesis testing)
- matplotlib, seaborn (visualization)

---

## 🧠 Behavioral Finance Concepts Used
- Loss Aversion  
- Panic Selling  
- Overtrading  
- Anchoring Bias  
- Drawdowns & Rolling Returns  

---

## 📂 Project Structure

```text
behavioral-bias-detector/
│
├── data/
│   ├── raw/                # Original downloaded stock data
│   └── processed/          # Cleaned and engineered datasets
│
├── notebooks/
│   ├── 01_data_loading_cleaning.ipynb
│   ├── 02_feature_engineering.ipynb
│   ├── 03_panic_detection.ipynb
│   ├── 04_behavioral_bias_tests.ipynb
│   └── 05_visualization_emotional_zones.ipynb
│
├── src/                    # Reserved for reusable logic & scalability
│
├── findings.md             # Business & behavioral insights
├── requirements.txt
└── README.md
