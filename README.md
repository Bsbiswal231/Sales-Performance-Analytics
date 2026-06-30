# Sales Performance Analytics

End-to-end retail sales analytics project built using **Excel**, **SQL (PostgreSQL)**, and **Power BI** — covering data cleaning, database analysis, and interactive dashboarding.

## 📌 Project Overview

This project analyzes 9,993 retail transactions (2014–2017) across 4 U.S. regions to identify revenue drivers, profitability gaps, and loss-making patterns. The goal was to simulate a real-world data analyst workflow: clean raw data, query it for business insights, and present findings through an interactive dashboard.

**Dataset:** [Sample Superstore Dataset (Kaggle)](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final) — a publicly available retail transactions dataset, commonly used as a benchmark for analytics practice.

## 🛠️ Tools Used

- **Excel** — Data cleaning, pivot tables, charts, dashboard
- **PostgreSQL** — Data import, SQL aggregation queries
- **Power BI** — Interactive dashboard with KPIs, slicers, and drill-down visuals

## 📂 Repository Contents

| File | Description |
|------|-------------|
| `Superstore_data.csv` | Cleaned dataset (9,993 rows, 22 columns) |
| `SQL_Analysis.sql` | SQL queries for regional, category, segment, and state-level analysis |
| `Superstore_Dashboard.xlsx` | Excel dashboard with 5 pivot-table-based charts |
| `Sales_Performance_Report.pdf` | Management-style summary report |
| `screenshots/` | Dashboard and chart screenshots (Excel + Power BI) |

## 🔍 Process

1. **Data Cleaning (Excel):** Removed duplicates, fixed date formats, validated discount ranges, added a calculated `shipping_days` column.
2. **SQL Analysis (PostgreSQL):** Imported the cleaned dataset and wrote `GROUP BY` / `HAVING` queries to analyze:
   - Regional sales and profit performance
   - Category-level profitability
   - Customer segment contribution
   - Monthly sales trends (2014–2017)
   - Loss-making states and discount correlation
3. **Excel Dashboard:** Built 5 pivot-chart visuals summarizing the above analysis.
4. **Power BI Dashboard:** Connected directly to PostgreSQL and built an interactive dashboard with KPI cards, a year slicer, and drill-down charts.

## 📊 Key Findings

- **West region** is the most profitable (14.9% margin) vs. **Central** (7.9% margin) despite similar sales volume.
- **Furniture** generates high sales ($742K) but only a 2.5% profit margin — the weakest category by profitability.
- **Technology** is the strongest category (17.4% margin).
- **9 states** operate at a net loss, all with average discount rates above 28% — suggesting discounting is eroding margin rather than driving profitable volume.
- Sales peak every **November–December**, and dip every **January–February**, across all four years.

## 📈 Dashboard Previews

### 1 - PowerBI
<img width="1131" height="646" alt="Dashboard - 3" src="https://github.com/Bsbiswal231/Sales-Performance-Analytics/blob/main/screenshot/PowerBI%20Dashboard.png" />

---

**Author:** Bhabani Shankar Biswal
[LinkedIn](https://linkedin.com/in/bhabani-shankar-biswal) | [Portfolio](https://bsbiswal231.github.io)
