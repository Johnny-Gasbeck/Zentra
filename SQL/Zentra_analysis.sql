# Zentra Electronics: Additional Stakeholder Questions - SQL Queries

-- 1a) What were the order counts, sales, and AOV for Macbooks sold in North America for each quarter across all years?

SELECT 
  DATE_TRUNC(purchase_ts, quarter) as purchase_quarter,
  COUNT(DISTINCT orders.id) AS order_count,
  ROUND(SUM(orders.usd_price),2) AS sales,
  ROUND(AVG(orders.usd_price),2) AS aov
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
  ON geo_lookup.country = customers.country_code
WHERE 
  region = 'NA'
  AND lower(product_name) like '%macbook%'
GROUP BY 1
ORDER BY 1 ASC, 2 ASC;

-- 1b) What are the average quarterly order count and total sales for Macbooks sold in North America?

-- Calculating quarterly metrics and grouping by quarters
WITH quarterly_metrics AS 
  (
SELECT 
  DATE_TRUNC(purchase_ts, quarter) as purchase_quarter,
  COUNT(DISTINCT orders.id) AS order_count,
  ROUND(SUM(orders.usd_price),2) AS sales,
FROM core.orders
LEFT JOIN core.customers
    ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
    ON geo_lookup.country = customers.country_code
WHERE 
  region = 'NA'
  AND lower(product_name) like '%macbook%'
GROUP BY 1
ORDER BY 1 DESC
  )
-- Averaging quarterly order count and sales 
SELECT 
  AVG(order_count) AS avg_quarterly_order_count,
  AVG(sales) AS avg_quarterly_sales
FROM quarterly_metrics;

-- 2a) For products purchased in 2022 on the website or products purchased on mobile in any year, which region has the highest average time to deliver in days?

SELECT 
  geo_lookup.region AS region,
  AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts,day)) AS avg_deliver_time
FROM core.order_status
LEFT JOIN core.orders
  ON order_status.order_id = orders.id
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
  ON customers.country_code = geo_lookup.country 
WHERE 
  (EXTRACT(year FROM orders.purchase_ts) = 2022 AND orders.purchase_platform = 'website')
  OR orders.purchase_platform = 'mobile app'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- 2b) For products purchased in 2022 on the website or Samsung purchases made in 2021, which region has the highest average time to deliver in weeks?

SELECT 
  geo_lookup.region AS region,
  AVG(DATE_DIFF(order_status.delivery_ts, order_status.purchase_ts,week)) AS avg_deliver_time
FROM core.order_status
LEFT JOIN core.orders
  ON order_status.order_id = orders.id
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
  ON customers.country_code = geo_lookup.country 
WHERE 
  (EXTRACT(year FROM orders.purchase_ts) = 2022 AND purchase_platform = 'website')
  OR (orders.product_name LIKE '%Samsung%'AND EXTRACT(year FROM orders.purchase_ts) = 2021)
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;

-- 3a) What was the refund rate and refund count for each product overall? 

SELECT 
  CASE 
    WHEN orders.product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor'
    ELSE product_name 
  END AS cleaned_product_name,
  AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_rate,
  SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count
FROM core.order_status
LEFT JOIN core.orders
  ON order_status.order_id = orders.id
GROUP BY 1
ORDER BY 2 DESC;

-- 3b) What was the refund rate and refund count for each product per year?

SELECT 
  EXTRACT(year FROM orders.purchase_ts) AS year,
  CASE 
    WHEN orders.product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor'
    ELSE product_name 
  END AS cleaned_product_name,
  ROUND(AVG(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END),2)*100 AS refund_rate,
  SUM(CASE WHEN refund_ts IS NOT NULL THEN 1 ELSE 0 END) AS refund_count
FROM core.order_status
LEFT JOIN core.orders
  ON order_status.order_id = orders.id
GROUP BY 1,2
ORDER BY 3 DESC;

-- 4) Within each region, what is the most popular product? 

--Group and aggregate product counts by region
WITH sales_by_product AS 
  (
SELECT 
  geo_lookup.region AS region,
  CASE 
    WHEN orders.product_name = '27in"" 4k gaming monitor' THEN '27in 4K gaming monitor'
    ELSE product_name 
  END AS cleaned_product_name,
  COUNT(DISTINCT orders.id) AS order_count
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
LEFT JOIN core.geo_lookup
  ON customers.country_code = geo_lookup.country
GROUP BY 1,2)
--Adding row numbers to rank products in each region and filtering for top products 
SELECT 
  *,
  ROW_NUMBER() OVER (PARTITION BY region order by order_count DESC) AS order_ranking
FROM sales_by_product
QUALIFY ROW_NUMBER() OVER (PARTITION BY region order by order_count DESC) = 1;

-- 5a) How does the time to make a purchase differ between loyalty customers vs. non-loyalty customers? 
SELECT 
  CASE 
    WHEN customers.loyalty_program = 1 THEN 'loyalty'
    ELSE 'nonloyalty'
  END AS cleaned_loyalty_program,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, day)),1) AS days_to_purchase,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, month)),1) AS months_to_purchase
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
GROUP BY 1;

--5b) Update the last query to split the time to purchase per loyalty program, per purchase platform.
SELECT 
  CASE 
    WHEN customers.loyalty_program = 1 THEN 'loyalty'
    ELSE 'nonloyalty'
  END AS cleaned_loyalty_program,
  purchase_platform,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, day)),1) AS days_to_purchase,
  ROUND(AVG(DATE_DIFF(orders.purchase_ts, customers.created_on, month)),1) AS months_to_purchase,
  COUNT(*) AS number_of_records
FROM core.orders
LEFT JOIN core.customers
  ON orders.customer_id = customers.id
GROUP BY 1,2
ORDER BY 1;
