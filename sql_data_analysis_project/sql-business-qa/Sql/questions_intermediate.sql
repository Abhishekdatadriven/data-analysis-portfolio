-- Q6: Identify top 5 customers by total revenue
-- Business Insight:
-- Helps identify high-value customers for retention strategies
SELECT
    c.customer_id,
    c.customer_name,
    ROUND(SUM(oi.quantity * oi.price), 2) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_revenue DESC
LIMIT 5;
-- =============================================================================================================================================

-- Q7: Analyze monthly revenue trend
-- Business Insight:
-- Helps identify growth, seasonality, or decline patterns
SELECT
    DATE_FORMAT(o.order_date, '%Y-%m') AS years_month,
    ROUND(SUM(oi.quantity * oi.price), 2) AS monthly_revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY years_month
ORDER BY years_month;
-- =============================================================================================================================================

-- Q8: Analyze revenue contribution by region and product category
-- Business Insight:
-- Identifies which regions perform best for each category
SELECT
    c.region,
    p.category,
    ROUND(SUM(oi.quantity * oi.price), 2) AS revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY c.region, p.category
ORDER BY revenue DESC;
-- =============================================================================================================================================

-- Q9: Identify products generating above-average revenue
-- Business Insight:
-- Highlights strong-performing products
SELECT
    p.product_id,
    p.product_name,
    ROUND(SUM(oi.quantity * oi.price), 2) AS product_revenue
FROM products p
JOIN order_items oi
    ON p.product_id = oi.product_id
GROUP BY p.product_id, p.product_name
HAVING product_revenue >
(
    SELECT
        AVG(product_revenue)
    FROM (
        SELECT
            SUM(oi.quantity * oi.price) AS product_revenue
        FROM order_items oi
        GROUP BY oi.product_id
    ) t
)
ORDER BY product_revenue DESC;
-- =============================================================================================================================================

-- Q10: Identify customers with more than one order
-- Business Insight:
-- Helps identify repeat customers and early loyalty
SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS order_count
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY order_count DESC;
-- =============================================================================================================================================


