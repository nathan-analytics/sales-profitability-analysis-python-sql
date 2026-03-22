Superstore Sales & Profitability Analysis
SQL | Python | Power BI
Project Overview
This project analyzes retail sales data to evaluate business performance, identify profitability drivers, and uncover opportunities for improvement.

The analysis follows a full data workflow, including data cleaning in Python, storage and transformation in PostgreSQL, and interactive dashboard development in Power BI. The goal was to simulate a real-world analyst workflow and deliver insights that support data-driven decision-making.
Tools & Technologies
• Python (Pandas, NumPy) – data cleaning and feature engineering 
• PostgreSQL – data storage, querying, and view creation 
• Power BI – dashboard development and visualization 
Dataset
The dataset contains transactional retail data, including orders, products, customers, sales, profit, discounts, and shipping details across multiple regions and segments.
Project Workflow
1. Data Cleaning (Python)
  - Converted date fields and handled mixed formats
  - Validated numeric columns (sales, profit, discount)
  - Created new features:
    • profit_margin
    • discount_flag
    • shipping_days
    • time-based features (year, month)

2. Data Storage & Transformation (SQL)
  - Loaded cleaned dataset into PostgreSQL
  - Created analytical views for reporting:
    • overall performance
    • category and sub-category analysis
    • regional performance
    • discount impact
    • customer analysis

3. Data Visualization (Power BI)
  - Built a 3-page interactive dashboard:
    • Executive Overview
    • Product & Profitability Analysis
    • Customer & Operational Insights
Key Insights
• Discounting significantly reduces profitability 
 Discounted orders show a negative average profit margin, indicating that discounting is a major driver of losses across multiple product categories.

• Certain products consistently generate losses 
 Several products contribute heavily to negative profit, often associated with high discount levels.

• Sales performance varies by category 
 Office Supplies generates the highest order volume, while Technology produces higher revenue per order.

• Revenue is concentrated in specific segments and regions 
 The Consumer segment and Central region contribute the largest share of total sales.

• Shipping performance is consistent across regions 
 Average shipping times are relatively stable, with standard shipping taking the longest and expedited methods significantly reducing delivery time.
Dashboard Features
• KPI overview of total sales, profit, and order volume 
• Time-series analysis of sales and profit trends 
• Category and sub-category profitability analysis 
• Discount impact on profit margins 
• Identification of loss-making products 
• Customer-level sales analysis 
• Shipping performance by method and region 
Project Structure
superstore-sales-analysis/
│
├── 01_data_raw/
├── 02_clean_data/
├── 03_python/
├── 04_sql/
├── 05_powerbi/
├── 06_screenshots/
└── README.md
How to Use
1. Open the Power BI dashboard file (.pbix) to explore the visuals 
2. Review SQL scripts for data transformations and views 
3. Run the Python notebook to reproduce data cleaning steps 
Conclusion
This project demonstrates a complete data analysis workflow, from raw data processing to business insight generation. The findings highlight the impact of discounting on profitability and identify key areas for improving business performance.
