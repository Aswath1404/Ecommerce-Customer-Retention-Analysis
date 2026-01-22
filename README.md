# 📊 E-Commerce Customer Segmentation & Retention Strategy

## 📕 Project Overview
**Olist** is a Brazilian e-commerce platform that connects small businesses with customers. After analyzing 96,000+ orders from 2016-2018, I identified a critical business problem: **96% of customers never return for a second purchase.**

This project focuses on segmenting customers based on purchasing behavior (RFM Analysis) to shift the company's focus from aggressive acquisition to retention.

## 🖼️ Dashboard
![Dashboard Preview](Dashboard overview.png)

## 💡 Key Business Insights
*   **Retention Crisis:** 96% of the customer base consists of "One-Time Wonders" (customers who bought once and never returned).
*   **Pareto Principle in Action:** A tiny fraction of loyal customers ("Champions" & "Loyalists") generate disproportionate value. "Champions" spend **3x more** on average than one-time buyers.
*   **Missed Revenue:** The company is currently ignoring "Potential Loyalists" (recent one-time buyers), leaving significant revenue on the table.

## 🛠️ Tools & Methodology
*   **SQL (SQLite):** Used for data extraction, joining multiple tables (Orders, Payments, Customers), and calculating RFM metrics.
*   **Excel / Google Sheets:** Used for **data validation**, profiling, and creating summary pivot tables to verify SQL outputs before visualization.
*   **Power BI:** Used for final high-performance visualization, DAX measures (Average Order Value), and interactive reporting.

## 🔎 The Analysis Process
1.  **Data Engineering:** Joined `orders`, `payments`, and `customers` datasets using SQL to create a unified view.
2.  **RFM Calculation:** Computed Recency (days since last buy), Frequency (count of orders), and Monetary (total spend) for each unique customer.
3.  **Data Validation:** Exported SQL results to Excel to verify segment counts and revenue totals using Pivot Tables.
4.  **Segmentation:** Grouped customers into 4 strategic buckets:
    *   **Champions:** Bought recently + frequent buyers.
    *   **Potential Loyalists:** Bought recently + one-time buyers (Target for retention).
    *   **At Risk:** Frequent buyers who haven't bought in a long time.
    *   **One-Time Wonders:** Bought once + long ago.
5.  **Visualization:** Built an executive dashboard to highlight the disparity between acquisition volume and retention value.

## 📂 Repository Structure
*   `Dashboard_Overview.png`: The final executive dashboard visualization.
*   `analysis_queries.sql`: The SQL scripts used to join tables and create the RFM segmentation view.
*   `Olist_Data_Summary.xlsx`: Excel validation file containing summary statistics and segment breakdowns.

## 🚀 Recommendations
1.  **Stop "Spray & Pray" Marketing:** Shift budget from generic acquisition ads to targeted email campaigns for "Potential Loyalists."
2.  **Launch a Loyalty Program:** Incentivize the 96% of one-time buyers to make a second purchase within 30 days.
