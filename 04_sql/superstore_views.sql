Power BI Reporting Views

Notes
These views are built from your cleaned PostgreSQL table:
public.superstore_orders_cleaned

-- =========================================
-- View 1: Overall Business Performance
-- =========================================

CREATE OR REPLACE VIEW public.vw_overall_business_performance AS
SELECT
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order,
    ROUND(SUM(profit) / COUNT(DISTINCT order_id), 2) AS avg_profit_per_order
FROM public.superstore_orders_cleaned;

-- =========================================
-- View 2: Category Performance
-- =========================================

CREATE OR REPLACE VIEW public.vw_category_performance AS
SELECT
    category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM public.superstore_orders_cleaned
GROUP BY category;

-- =========================================
-- View 3: Sub-Category Profitability
-- =========================================

CREATE OR REPLACE VIEW public.vw_subcategory_profitability AS
SELECT
    category,
    sub_category,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM public.superstore_orders_cleaned
GROUP BY category, sub_category;

-- =========================================
-- View 4: Monthly Sales Trend
-- =========================================

CREATE OR REPLACE VIEW public.vw_monthly_sales_trend AS
SELECT
    order_year,
    order_month,
    order_year_month,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders
FROM public.superstore_orders_cleaned
GROUP BY order_year, order_month, order_year_month;

-- =========================================
-- View 5: Regional Performance
-- =========================================

CREATE OR REPLACE VIEW public.vw_regional_performance AS
SELECT
    market,
    region,
    country,
    state,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order
FROM public.superstore_orders_cleaned
GROUP BY market, region, country, state;

-- =========================================
-- View 6: Discount Impact
-- =========================================

CREATE OR REPLACE VIEW public.vw_discount_impact AS
SELECT
    discount_flag,
    COUNT(*) AS row_count,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(profit_margin), 4) AS avg_profit_margin,
    ROUND(AVG(discount), 4) AS avg_discount
FROM public.superstore_orders_cleaned
GROUP BY discount_flag;

-- =========================================
-- View 7: Top Customers
-- =========================================

CREATE OR REPLACE VIEW public.vw_top_customers AS
SELECT
    customer_name,
    segment,
    market,
    region,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order
FROM public.superstore_orders_cleaned
GROUP BY customer_name, segment, market, region;

-- =========================================
-- View 8: Shipping Performance
-- =========================================

CREATE OR REPLACE VIEW public.vw_shipping_performance AS
SELECT
    ship_mode,
    market,
    region,
    ROUND(AVG(shipping_days), 2) AS avg_shipping_days,
    MIN(shipping_days) AS min_shipping_days,
    MAX(shipping_days) AS max_shipping_days,
    COUNT(*) AS row_count
FROM public.superstore_orders_cleaned
GROUP BY ship_mode, market, region;

-- =========================================
-- View 9: Negative Profit Products
-- =========================================

CREATE OR REPLACE VIEW public.vw_negative_profit_products AS
SELECT
    category,
    sub_category,
    product_name,
    COUNT(*) AS loss_order_count,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(AVG(discount), 4) AS avg_discount
FROM public.superstore_orders_cleaned
WHERE profit < 0
GROUP BY category, sub_category, product_name;

-- =========================================
-- View 10: Segment Performance
-- =========================================

CREATE OR REPLACE VIEW public.vw_segment_performance AS
SELECT
    segment,
    ROUND(SUM(sales), 2) AS total_sales,
    ROUND(SUM(profit), 2) AS total_profit,
    COUNT(DISTINCT order_id) AS total_orders,
    ROUND(SUM(sales) / COUNT(DISTINCT order_id), 2) AS avg_revenue_per_order,
    ROUND(SUM(profit) / NULLIF(SUM(sales), 0), 4) AS profit_margin
FROM public.superstore_orders_cleaned
GROUP BY segment;