USE customer_loyalty_db;

CREATE OR REPLACE VIEW order_profit as 
SELECT 
      o.order_id,
    o.customer_id,
    o.order_date,
    p.category,
    oi.quantity,
    oi.price,
    (oi.quantity * oi.price) AS gross_revenue,
    (oi.quantity * p.cost_price) AS total_cost,
    ((oi.quantity * oi.price) - (oi.quantity * p.cost_price)) AS gross_profit,
    o.discount_amount
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN Products p ON oi.Product_id = p.product_id;

SELECT * FROM order_profit;

CREATE OR REPLACE VIEW customer_metrics AS
SELECT
    customer_id,
    COUNT(DISTINCT order_id) AS total_orders,
    COUNT(DISTINCT DATE(order_date)) AS active_days,
    ROUND(SUM(gross_revenue) - SUM(discount_amount), 2) AS net_revenue,
    ROUND(SUM(gross_profit) - SUM(discount_amount), 2) AS net_profit,
    MIN(order_date) AS first_order,
    MAX(order_date) AS last_order,
    DATEDIFF(MAX(order_date), MIN(order_date)) AS tenure_days
FROM order_profit
GROUP BY customer_id;


SELECT * FROM customer_metrics;


CREATE OR REPLACE VIEW derived_segments AS
SELECT *,
    CASE
        WHEN total_orders >= 15 AND tenure_days >= 365 THEN 'High Loyalty'
        WHEN total_orders BETWEEN 6 AND 14 THEN 'Medium Loyalty'
        ELSE 'Low Loyalty'
    END AS loyalty_segment
FROM customer_metrics;


SELECT * FROM derived_segments ;


SELECT
    loyalty_segment,
    COUNT(customer_id) AS customers,
    ROUND(AVG(net_revenue), 2) AS avg_revenue,
    ROUND(AVG(net_profit), 2) AS avg_profit
FROM derived_segments
GROUP BY loyalty_segment
ORDER BY avg_profit DESC;
