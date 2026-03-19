-- =========================================
-- Query 1: Overall Business Performance
-- =========================================

SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order,
    ROUND(SUM(profit) / COUNT(DISTINCT order_id), 2) AS avg_profit_per_order
FROM public.superstore_orders_cleaned;

-- =========================================
-- Query 2: Category Performance
-- =========================================

SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM public.superstore_orders_cleaned
GROUP BY category
ORDER BY total_sales DESC;

-- =========================================
-- Query 3: Sub-Category Profitability
-- =========================================

SELECT
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM public.superstore_orders_cleaned
GROUP BY sub_category
ORDER BY total_profit DESC;

-- =========================================
-- Query 4: Monthly Sales and Profit Trends
-- =========================================

SELECT
    order_year,
    order_month,
    order_year_month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM public.superstore_orders_cleaned
GROUP BY order_year, order_month, order_year_month
ORDER BY order_year, order_month;

-- =========================================
-- Query 5: Discount Impact on Profitability
-- =========================================

SELECT
    discount_flag,
    COUNT(*) AS row_count,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit_margin), 4) AS avg_profit_margin,
    ROUND(AVG(discount), 4) AS avg_discount
FROM public.superstore_orders_cleaned
GROUP BY discount_flag
ORDER BY total_sales DESC;

-- =========================================
-- Query 6: Regional Performance
-- =========================================

SELECT
    region,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order
FROM public.superstore_orders_cleaned
GROUP BY region
ORDER BY total_sales DESC;

-- =========================================
-- Query 7: Top Customers by Revenue
-- =========================================

SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order
FROM public.superstore_orders_cleaned
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;