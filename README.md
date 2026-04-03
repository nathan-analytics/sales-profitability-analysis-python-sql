# Sales & Profitability Analysis

Analyzed retail sales data using Python, SQL, and Power BI to identify profitability drivers, discount impact, and operational performance.

## Project Summary

Evaluated how discounts, product mix, and customer segments impact overall profitability.

Key findings:
- Discounting significantly reduces profitability and often leads to negative margins
- Several high-revenue products are unprofitable due to excessive discounting
- Technology products generate higher revenue per order, while Office Supplies drive volume
- Sales are concentrated in the Consumer segment and Central region
- Shipping performance is consistent, with faster methods improving delivery time

Business impact:
- Highlights the need to control discounting to protect margins
- Identifies unprofitable products that should be repriced or removed
- Supports better product and pricing strategy decisions
- Provides insight into customer segments driving revenue

Dashboard Highlight

Sales are strong overall, but profit margins are inconsistent, indicating that revenue growth is being driven in part by discounting rather than sustainable profitability.

![Executive Overview](https://github.com/user-attachments/assets/ec49f419-f019-4a8b-b1a5-e7be1e541a95)

Several high-revenue products operate at a loss due to heavy discounting, 
revealing that strong sales performance does not always translate to profitability.
This highlights the need to balance revenue growth with margin protection.

![Product Profitability Analysis](https://github.com/user-attachments/assets/1c26dbf3-d090-4719-82e0-bdcf4dda3ff2)

Faster shipping improves delivery time, but profitability is primarily driven by pricing and discount strategy rather than operational efficiency.

![Customer Operations](https://github.com/user-attachments/assets/6a89a1b2-6fa4-4b8d-8469-c6d76dbca646)

## Case Study

[Sales & Profitablity Analysis Case Study.pdf](https://github.com/user-attachments/files/26452088/Sales.Profitablity.Analysis.Case.Study.pdf)


## Key Insights

- Discounting is the primary driver of reduced profitability
- High sales volume does not always translate to profit
- Certain products consistently generate losses despite strong revenue
- Profitability varies significantly across categories and regions
- Faster shipping improves operational efficiency but does not directly impact profit

## Project Overview

This project simulates a full analytics workflow focused on profitability analysis and business performance.

Workflow:
- Cleaned and transformed raw data using Python
- Loaded and modeled data in PostgreSQL
- Created SQL views for structured analysis
- Built an interactive Power BI dashboard

## Data Cleaning & Feature Engineering

- Standardized date formats and validated numeric fields
- Created key features:
  - profit_margin
  - discount_flag
  - shipping_days
  - time-based features (year, month)

## SQL Analysis

Created analytical views to support reporting:
- Overall performance metrics
- Category and sub-category profitability
- Regional performance
- Discount impact analysis
- Customer-level insights

## Dashboard Features

- KPI overview (sales, profit, orders)
- Time-series performance trends
- Profitability by category and product
- Discount impact on margins
- Identification of loss-making products
- Customer and segment insights
- Shipping performance analysis

## Business Recommendations

- Limit discounting on low-margin and loss-making products
- Focus on high-profit categories and products
- Reprice or remove consistently unprofitable items
- Optimize discount strategies to balance revenue and profitability

## Tools Used

- Python (Pandas, NumPy)
- SQL (PostgreSQL)
- Power BI

## Dataset

Retail sales dataset including orders, products, customers, sales, profit, discounts, and shipping details

## Project Structure

superstore-sales-analysis/  
├── 01_data_raw/  
├── 02_clean_data/  
├── 03_python/  
├── 04_sql/  
├── 05_powerbi/  
├── 06_screenshots/  
├── case_study.pdf  
└── README.md
