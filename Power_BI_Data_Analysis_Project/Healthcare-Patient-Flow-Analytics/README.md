🏥 Healthcare Operations & Capacity Analytics Dashboard

📌 Project Overview

This project analyzes hospital operations, patient flow, and capacity utilization using synthetic healthcare data.
The goal is to help healthcare administrators monitor efficiency, reduce wait times, manage bed occupancy, and detect operational risks through an interactive Power BI dashboard.

The project demonstrates end-to-end analytics skills:

* Data generation (Python)

* Data cleaning & transformation

* Star schema modeling

* DAX-based KPI design

* Insight-driven dashboard storytelling


🎯 Business Problem

Hospitals face challenges such as:

* Long patient wait times

* Bed capacity constraints

* Emergency room congestion

* Inefficient staff utilization

This dashboard answers:

* Are patient flows balanced?

* Are wait times under control?

* Is bed occupancy approaching risk levels?

* How efficient is hospital operations overall?


📊 Key KPIs & Metrics

* Total Patients

* Average Daily Patients

* Average Wait Time

* 7-Day Rolling Wait Time

* Bed Occupancy %

* Average Beds Occupied

* Admissions vs Discharges

* Throughput Rate

* Staff per Patient Ratio

* ER Overload Index

* Operational Efficiency Score


🧱 Data Model (Star Schema)
Fact Table

fact_patient_flow

* date

* department_id

* patients

* wait_time

* beds_occupied

* staff_on_duty

* admissions

* discharges

* Dimension Tables

* dim_date (calendar attributes)

* dim_department (ER, ICU, OPD, etc.)

* dim_staff (staff category)

* dim_capacity (bed limits)

📌 Model Type: Star Schema
📌 Grain: Daily department-level hospital activity



🛠️ Tools & Technologies
Tool	        Usage
Python	        Data generation, cleaning, validation
Pandas, NumPy	Data manipulation
Power BI	    Data modeling, DAX, visualization
DAX	            KPI calculations
GitHub	        Project version control


📁 Project Structure
healthcare-operations-dashboard/
│
├── data/
│   ├── raw/
│   │   └── healthcare_raw_data.csv
│   └── processed/
│       └── healthcare_fact_table.csv
│
├── python/
│   ├── data_creation.ipynb
│   ├── data_cleaning.ipynb
│   └── data_transformation.ipynb
│
├── powerbi/
│   └── healthcare_operations_dashboard.pbix
│
├── visuals/
│   ├── dashboard_overview.png
│   ├── wait_time_analysis.png
│   ├── bed_occupancy.png
│
├── findings.md
├── README.md



📈 Dashboard Pages
1️⃣ Operations Overview

* High-level KPIs

* Patient volume & efficiency snapshot

2️⃣ Patient Flow & Wait Time

* Average & rolling wait times

* Admission vs discharge trends

3️⃣ Capacity & Risk Monitoring

* Bed occupancy analysis

* ER overload indicators

* High-occupancy alerts



🧠 Key Insights (Summary)

* Patient flow is stable, with admissions and discharges closely aligned.

* Average wait times are controlled but show short-term spikes during peak demand.

* Bed occupancy operates near optimal levels, requiring proactive monitoring.

* Operational efficiency score indicates strong resource utilization.

👉 Detailed insights are available in findings.md.



🚀 Business Impact

This dashboard enables hospital leadership to:

* Improve patient experience

* Reduce operational bottlenecks

* Prevent ER overload situations

* Optimize staffing and bed allocation

* Support data-driven healthcare decisions



🔮 Future Enhancements

* Predictive patient inflow forecasting

* Department-level SLA monitoring

* Integration with real hospital datasets

* Automated alerting on risk thresholds


👤 Author

Abhishek Anandkar
Data Analyst | Power BI | SQL | Python