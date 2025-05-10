# 📞 311 Call Center Service Request Analysis – Kansas City (2018–2021)

This end-to-end data analytics project analyzes over 1.5 million 311 service requests received by the Kansas City Call Center from 2018 to 2021. The goal is to extract actionable insights, streamline service tracking, and visualize key performance metrics using Alteryx, SQL, Power BI, and Tableau.

---

## 📁 Project Structure

| File | Description |
|------|-------------|
| `CallCenterServiceRequestKC-Saipavan Katta.yxmd` | Alteryx workflow for data profiling and cleaning |
| `SQLQueries.sql` | SQL script answering 10 business questions |
| `KC_CallCenter_SQL_Analysis.docx` | Detailed business analysis of SQL query outputs |
| `Data Cleaning.docx` | 11-step Alteryx-based ETL documentation |
| `Document- Indicating problems and plan to clean.docx` | Raw data issues and planned resolutions |
| `Database Screenshot.png` | Snapshot showing successful database load |

---

## 📊 Business Questions Answered

1. **Request Trends**: Yearly and monthly spikes in service request volumes
2. **Source Analysis**: Volume by request channel (Phone, Web, Email, etc.)
3. **Department Load**: Requests distributed by departments and work groups
4. **Top Performers**: Fastest service types and categories based on closure time
5. **Geospatial Insights**: Hotspot neighborhoods, ZIPs, and street addresses
6. **Workload Mapping**: Comparative department effort via treemaps
7. **Response Time Patterns**: Department-wise efficiency metrics
8. **Status Composition**: Open vs Closed trends over time
9. **Time to Close by Category**: Identify long-cycle service types
10. **Workload vs Efficiency**: Relationship between volume and resolution speed

---

## 🧼 Data Cleaning Summary (via Alteryx)

- **Input + Auto Field**: Ingested TSV and optimized field types
- **Select**: Dropped irrelevant fields
- **Formula**: Standardized categorical inconsistencies (e.g., Status, Department)
- **Multi-Field Formula**: Imputed missing numeric fields with `-1`, text with `"Unknown"`
- **Date Cleanup**: Standardized MM/DD/YYYY formats
- **Metadata Enrichment**: Added Load Date and User
- **Export**: Final cleaned dataset pushed to SQL Server

📄 [Full cleaning steps documented here](./Data%20Cleaning.docx)

---

## 🔍 Key Insights

- **Service Request Volume** peaked in 2019 (166K), then dropped post-COVID
- **Phone** remains the dominant channel (~77% of requests)
- **NHS Department** handled 50%+ of all requests with slowest closure time
- **Housing, Fire, KCPD** had the fastest average response (<5 days)
- **Shoal Creek** and ZIP `64130` reported the most frequent requests
- **91.6%** of all requests were closed, only 2.3% open across 2018–2021
- Categories like **“Weeds”** and **“Property Violations”** have longest delays

📄 [Detailed SQL analysis available here](./KC_CallCenter_SQL_Analysis.docx)

---

## 📊 Visual Highlights

**Power BI Dashboards**:
![image](https://github.com/user-attachments/assets/1673be89-46e7-461e-a369-96f1953945d7)




---

## 🧰 Tools & Technologies

- **SQL Server** (ETL, aggregation, joins, window functions)
- **Alteryx Designer** (profiling, cleaning, workflow automation)
- **Power BI / Tableau** (visual storytelling and KPIs)
- **Microsoft Word / Excel** (reporting and QA)

---

## ✅ How to Run

1. Restore the `.bak` file in SQL Server Management Studio
2. Open Alteryx and run `CallCenterServiceRequestKC.yxmd` to clean data
3. Open Power BI and Tableau dashboards to view final insights
4. Use SQL queries to validate output against visuals

---


## 📜 License

This project is for educational and portfolio demonstration purposes only.  
© 2025 Saipavan Katta. All rights reserved.
