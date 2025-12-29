# OTT Streaming Platform Analytics & Content Performance Dashboard

## 📌 Project Overview
This project analyzes user behavior, content performance, and platform engagement metrics for an OTT (Over-The-Top) streaming platform.  
The goal is to provide actionable insights on watch time trends, user growth, retention, and content consumption using **Python, Power BI, and DAX**.

The project follows an **end-to-end data analytics workflow**:
- Data generation (Python)
- Data cleaning & validation
- Star schema modeling
- KPI calculation using DAX
- Interactive Power BI dashboards

---

## 🎯 Business Objectives
- Track overall platform engagement and growth
- Identify top-performing content
- Measure user retention and new user acquisition
- Analyze watch time trends over time
- Support data-driven content and marketing decisions

---

## 🧱 Data Model (Star Schema)

### Fact Table
- **fact_streaming**
  - user_id
  - content_id
  - date
  - watch_time
  - completed_flag

### Dimension Tables
- **dim_user** – user demographics & signup info
- **dim_content** – content metadata (genre, duration, release year)
- **dim_date** – calendar table with Year, Month, YearMonth
- **dim_country / device (if applicable)**

---

## 🛠 Tools & Technologies
- **Python** – data creation & preprocessing
- **Pandas & NumPy** – data manipulation
- **Power BI** – data modeling & visualization
- **DAX** – KPI & time-intelligence measures

---

## 📊 Core KPIs
- Total Watch Time
- Active Users
- New Users
- Returning Users
- Total Streams
- Average Watch Time per User
- Completion Rate %
- Top Content by Watch Time
- Monthly Watch Time & MoM Growth

---

## 📈 Dashboard Pages
1. **Platform Overview**
2. **User Growth & Retention**
3. **Content Performance**
4. **Time-Based Trends**

---

## 📂 Project Folder Structure
OTT-Streaming-Analytics/
│
├── data/
│   ├── raw/
│   │   ├── viewing_activity_raw.csv
│   │   ├── users_raw.csv
│   │   └── content_raw.csv
│   │
│   └── processed/
│       ├── clean/
│       │   ├── viewing_activity_clean.csv
│       │   ├── users_clean.csv
│       │   └── content_clean.csv
│       │
│       └── modeled/
│           ├── fact_viewing.csv
│           ├── dim_users.csv
│           ├── dim_content.csv
│           └── dim_date.csv
│
├── powerbi/
│   ├── ott_streaming_analytics.pbix
│   
│
├── python/
│   ├── data_creation.ipynb
│   ├── data_cleaning.ipynb
│   ├── data_transformation_star_schema.ipynb
│   
│
├── visuals/
│   ├── Content performance .png
│   ├── Executive overview.png
│   ├── User Growth & Retention.png
│   
│
├── findings.md
└── README.md



---

## 🚀 Outcome
This dashboard enables stakeholders to:
- Monitor user engagement health
- Improve content strategy
- Optimize retention & growth initiatives
- Understand viewing behavior patterns
