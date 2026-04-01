# Sales & Profitability Analysis  
Python + SQL + Power BI  

Analyzed retail sales data to identify profitability drivers, discount impact, and operational performance.

---

## Dashboard Preview  
<img width="1413" height="793" alt="Executive Order" src="https://github.com/user-attachments/assets/ec49f419-f019-4a8b-b1a5-e7be1e541a95" />

<img width="1415" height="795" alt="Product Profitability Analysis" src="https://github.com/user-attachments/assets/1c26dbf3-d090-4719-82e0-bdcf4dda3ff2" />

<img width="1418" height="794" alt="Customer Operations" src="https://github.com/user-attachments/assets/6a89a1b2-6fa4-4b8d-8469-c6d76dbca646" />

---

## 📄 Case Study  
[Sales & Profitablity Analysis.pdf](https://github.com/user-attachments/files/26418266/Sales.Profitablity.Analysis.pdf)


---

## Key Insights  
• Discounting significantly reduces profitability and drives negative margins  
• Several high-revenue products are unprofitable due to excessive discounts  
• Office Supplies leads in order volume, while Technology generates higher revenue per order  
• Sales are concentrated in the Consumer segment and Central region  
• Shipping performance is consistent, with faster methods improving delivery times  

---

## Business Questions  
• How do discounts impact profitability?  
• Which products and categories are most profitable?  
• Which segments and regions drive the most sales?  
• How does shipping performance affect operations?  

---

## Project Overview  
This project analyzes retail sales data to evaluate business performance and uncover profitability drivers.

The workflow follows a full analytics pipeline:
• Cleaned and transformed raw data using Python  
• Stored and modeled data in PostgreSQL  
• Built SQL views for reporting and analysis  
• Developed an interactive Power BI dashboard  

The final output highlights how discounting, product mix, and customer segments impact overall profitability.

---

## Tools Used  
Python (Pandas, NumPy), SQL (PostgreSQL), Power BI  

---

## Dataset  
Retail sales dataset including orders, products, customers, sales, profit, discounts, and shipping details  

---

## Data Cleaning & Feature Engineering  
• Standardized date formats and validated numeric fields  
• Created new features:
  • profit_margin  
  • discount_flag  
  • shipping_days  
  • time-based features (year, month)  

---

## SQL Analysis  
Created analytical views to support reporting:
• Overall performance metrics  
• Category and sub-category profitability  
• Regional performance  
• Discount impact analysis  
• Customer-level insights  

---

## Dashboard Features  
• KPI overview (sales, profit, orders)  
• Time-series trends  
• Profitability by category and product  
• Discount impact on margins  
• Identification of loss-making products  
• Customer and operational insights  
• Shipping performance analysis  

---

## Business Recommendations  
• Limit discounting on low-margin products  
• Focus on high-profit categories and products  
• Monitor and remove consistently unprofitable items  
• Optimize discount strategy to balance revenue and profit  

---

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
