# Superstore Sales & Profitability Analysis
SQL | Python | Power BI

## Dashboard Preview
<img width="1413" height="793" alt="Executive Order" src="https://github.com/user-attachments/assets/ec49f419-f019-4a8b-b1a5-e7be1e541a95" />
<img width="1415" height="795" alt="Product   Profitability Analysis" src="https://github.com/user-attachments/assets/1c26dbf3-d090-4719-82e0-bdcf4dda3ff2" />
<img width="1418" height="794" alt="Customer   Operations" src="https://github.com/user-attachments/assets/6a89a1b2-6fa4-4b8d-8469-c6d76dbca646" />

### Project Overview
This project analyzes retail sales data to evaluate business performance, identify profitability drivers, and uncover opportunities for improvement.

The analysis follows a full data workflow, including data cleaning in Python, storage and transformation in PostgreSQL, and interactive dashboard development in Power BI. The goal was to simulate a real-world analyst workflow and deliver insights that support data-driven decision-making.

### Tools & Technologies
 - Python (Pandas, NumPy) – data cleaning and feature engineering 
 - PostgreSQL – data storage, querying, and view creation 
 - Power BI – dashboard development and visualization 

### Dataset
The dataset contains transactional retail data, including orders, products, customers, sales, profit, discounts, and shipping details across multiple regions and segments.

### Project Workflow
1. Data Cleaning (Python)
 - Converted date fields and handled mixed formats
 - Validated numeric columns (sales, profit, discount)
 - Created new features:
   - profit_margin
   - discount_flag
   - shipping_days
   - time-based features (year, month)

2. Data Storage & Transformation (SQL)
 - Loaded cleaned dataset into PostgreSQL
 - Created analytical views for reporting:
   - overall performance
   - category and sub-category analysis
   - regional performance
   - discount impact
   - customer analysis

3. Data Visualization (Power BI)
 - Built a 3-page interactive dashboard:
   - Executive Overview
   - Product & Profitability Analysis
   - Customer & Operational Insights

### Key Insights
 - Discounting significantly reduces profitability, with discounted orders showing a negative average profit margin and driving losses across multiple product categories.
 - Several products consistently generate negative profit, often associated with higher discount levels.
 - Office Supplies generates the highest order volume, while Technology produces higher revenue per order.
 - The Consumer segment and Central region contribute the largest share of total sales.
 - Shipping performance is consistent across regions, with standard shipping taking the longest and expedited methods reducing delivery time.

### Dashboard Features
 - KPI overview of total sales, profit, and order volume 
 - Time-series analysis of sales and profit trends 
 - Category and sub-category profitability analysis 
 - Discount impact on profit margins 
 - Identification of loss-making products 
 - Customer-level sales analysis 
 - Shipping performance by method and region 

### Project Structure
```text
superstore-sales-analysis/
├── 01_data_raw/
├── 02_clean_data/
├── 03_python/
├── 04_sql/
├── 05_powerbi/
├── 06_screenshots/
└── README.md
```

### How to Use
1. Open the Power BI dashboard file (.pbix) to explore the visuals 
2. Review SQL scripts for data transformations and views 
3. Run the Python notebook to reproduce data cleaning steps 

### Conclusion
This project demonstrates a complete data analysis workflow, from raw data processing to business insight generation. The findings highlight the impact of discounting on profitability and identify key areas for improving business performance.
