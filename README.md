# 🛒 Walmart End-to-End Data Analytics

> **Full-stack analytics pipeline** — raw CSV → Python EDA → MySQL → Power BI dashboards

![Python](https://img.shields.io/badge/Python-3.x-3776AB?style=flat-square&logo=python&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-8.0-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?style=flat-square&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-EDA-150458?style=flat-square&logo=pandas&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-22c55e?style=flat-square)

---

## 📌 Project Overview

End-to-end retail analytics project on **9,969 Walmart transactions** spanning **100 branches across 98 U.S. cities (2019–2023)**. The pipeline covers data cleaning, feature engineering, exploratory data analysis, SQL business queries, and executive Power BI dashboards — delivering quantified insights and prioritized business recommendations.

| Metric | Value |
|---|---|
| Total Revenue Analyzed | $1,209,726 |
| Total Profit | $476,139 (39.4% avg margin) |
| Avg Transaction Value | $121.35 |
| Avg Customer Rating | 5.83 / 10 |
| Branches / Cities | 100 / 98 |

---

## 🗂 Project Structure

```
walmart_endtoend/
├── dataset/
│   ├── Walmart.csv                         # Raw data
│   └── walmart_final_cleaned.csv           # Cleaned output
├── walmart_EDA.ipynb                       # Python EDA notebook
├── busiest day by branch by transaction.sql
├── busiest shift.sql
├── common payment method by branch.sql
├── decreasing ratio by last year.sql
├── highest rated category by branch.sql
├── profit by category.sql
├── rating by cities.sql
├── total_transaction by payment method.sql
├── Executive Business Performance Overview(walmart).pbix
└── supply chain dashboard.pbix
```

---

## ❓ Primary Business Problem

> *"Which Walmart branches are experiencing the steepest year-over-year revenue decline from 2022 to 2023 — and what operational patterns are driving it?"*

**Finding:** 5 branches lost **50–62% of their revenue in a single year** while 5 others grew by 120–173% in the same period. The performance gap is widening with no intervention in place.

---

## 🔍 Key Insights

### 1 · Revenue–Satisfaction Paradox
The two highest-revenue categories account for **80.9% of all revenue** — yet rank last in customer satisfaction.

| Category | Revenue | Revenue Share | Avg Rating | Rank |
|---|---|---|---|---|
| Fashion Accessories | $489,481 | 40.5% | 5.78 | #5 of 6 |
| Home & Lifestyle | $489,250 | 40.4% | 5.74 | #6 of 6 |
| Food & Beverages | $53,471 | 4.4% | 7.11 | #1 of 6 |
| Health & Beauty | $46,851 | 3.9% | 7.00 | #3 of 6 |

### 2 · Branch Revenue Collapse (SQL Finding)
Five branches identified via YoY CTE + DENSE_RANK window function query:

| Branch | 2022 Revenue | 2023 Revenue | Decline |
|---|---|---|---|
| WALM045 | $1,731 | $647 | **−62.6%** |
| WALM047 | $2,581 | $1,069 | −58.6% |
| WALM098 | $2,446 | $1,030 | −57.9% |
| WALM033 | $2,099 | $931 | −55.7% |
| WALM081 | $1,723 | $850 | −50.7% |

### 3 · Peak Revenue Window
`3PM–5PM` generates **$393,236 (32.5% of total revenue)** in just 2 hours daily. Afternoon shift alone drives **47.8%** of all revenue.

### 4 · Cash Customers Spend More
Cash users average **$143.88 per transaction** — 25% higher than Credit Card ($114.86) — yet represent only 18.4% of transactions.

### 5 · Monday Gap
Monday consistently records **11% fewer transactions** than Tuesday (1,322 vs 1,468) — the weakest day across all 100 branches every week.

### 6 · High-Value Customer Concentration
Just **401 transactions (4%)** generate **$219,569 — 18.2% of total revenue**. Losing this segment creates an immediate $220K revenue hole.

### 7 · Rating ≠ Spend (Correlation Analysis)
Rating vs. transaction value correlation: **r ≈ 0.01** — customer satisfaction has virtually no relationship with how much customers spend. Revenue growth must come from price strategy, basket size, and traffic — not satisfaction scores alone.

---

## 💡 Recommendations & Business Impact

| # | Recommendation | Timeline | Min Impact | Max Impact |
|---|---|---|---|---|
| 1 | **Branch Rescue Program** — deploy task force to top 5 declining branches; replicate playbook from WALM006 (+173%), WALM010 (+162%) | Immediate | +$3K recovery | +$6K/yr per branch |
| 2 | **VIP Loyalty Program** — target top 10% spenders (txn ≥ $222); personalized retention for 401 outlier customers | 60–90 days | +$37K/yr | +$55K/yr |
| 3 | **Category Quality Audit** — audit Fashion & Home product/display quality; target rating lift from 5.76 → 6.5+ | 60 days | +$48K protected | +$78K protected |
| 4 | **Monday Boost Campaign** — loyalty multipliers + flash deals on Mondays to close 11% weekly gap | 30 days | +$46K/yr | +$92K/yr |
| 5 | **Peak-Hour Staffing (3–5PM) + Evening Activation (6–8PM)** — max staff during $393K window; promo push evening shift | 45 days | +$25K/yr | +$40K/yr |
| 6 | **Branch-Level Category Personalization** — allocate inventory/budget to locally top-rated category per branch | 90–180 days | +$24K/yr | +$604K/yr |

> **Combined uplift potential: `$150,000 – $220,000/yr` — a 12–18% improvement on the $1.21M revenue base.**

---

## 🛠 Tech Stack

| Layer | Tool |
|---|---|
| Data Cleaning & EDA | Python, Pandas, Seaborn, Matplotlib |
| Database | MySQL via SQLAlchemy |
| SQL Techniques | CTEs, Window Functions (RANK, DENSE_RANK), Self-Joins, CASE WHEN |
| Dashboarding | Power BI (2 × `.pbix` dashboards) |

---

## ▶ How to Run

```bash
# 1. Clone the repo
git clone https://github.com/your-username/walmart_endtoend.git
cd walmart_endtoend

# 2. Install dependencies
pip install pandas numpy seaborn matplotlib sqlalchemy pymysql

# 3. Run the EDA notebook
jupyter notebook walmart_EDA.ipynb

# 4. Load cleaned CSV to MySQL, then run any .sql file in MySQL Workbench
```

> Power BI dashboards require Power BI Desktop to open `.pbix` files.

---

*9,969 transactions · 100 branches · 98 cities · 2019–2023*