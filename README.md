# 📡 Telecom Customer Usage & Revenue Analytics (SQL Project)

## 📌 Project Overview

This project simulates a telecom company's analytics environment. The goal is to analyze customer subscriptions, usage behavior, revenue KPIs, and data quality metrics using SQL.

---

## 🎯 Business Objectives

- Monitor revenue and customer activity
- Identify high-value customers
- Detect inactive customers
- Perform data quality checks
- Build datasets for dashboards and reporting

---

## 🛠️ Tech Stack

| Tool | Purpose |
|------|---------|
| SQL (MySQL-compatible) | Core analytics and querying |
| Power BI | Optional dashboard layer |
| GitHub | Version control and project hosting |

---

## 🗄️ Database Schema

### Tables

| Table | Description |
|-------|-------------|
| `customers` | Customer master data |
| `plans` | Available subscription plans |
| `subscriptions` | Customer-plan mapping |
| `usage_records` | Individual usage events per customer |

---

## 📊 Key Analytics

| Analysis | Description |
|----------|-------------|
| Total Revenue | Overall revenue across all customers |
| Revenue by Plan | Breakdown of earnings per subscription plan |
| Active Customers | Count and list of currently active subscribers |
| Top Data Consumers | Customers with highest data usage |
| Inactive Customers | Subscribers with no recent activity |
| Monthly Revenue Trends | Month-over-month revenue tracking |
| Data Quality Validation | Checks for nulls, duplicates, and anomalies |

---


## 🚀 How to Run

1. **Create a MySQL database**
```sql
   CREATE DATABASE telecom_analytics;
   USE telecom_analytics;
```

2. **Execute the schema script**
```bash
   mysql -u your_user -p telecom_analytics < schema.sql
```

3. **Load sample data**
```bash
   mysql -u your_user -p telecom_analytics < sample_data.sql
```

4. **Run analytics queries**
```bash
   mysql -u your_user -p telecom_analytics < analytics_queries.sql
```
---

## 📬 Contact

Feel free to connect on [LinkedIn](#) or raise an issue for any questions or suggestions.
