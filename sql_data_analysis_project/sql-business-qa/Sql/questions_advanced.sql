-- Q11: Rank customers by total revenue within each region
-- Business Insight:
-- Identifies top customers per region for targeted strategies
WITH customer_revenue AS (
    SELECT
        c.customer_id,
        c.customer_name,
        c.region,
        SUM(oi.quantity * oi.price) AS total_revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_id, c.customer_name, c.region
)
SELECT
    customer_id,
    customer_name,
    region,
    total_revenue,
    RANK() OVER (
        PARTITION BY region
        ORDER BY total_revenue DESC
    ) AS revenue_rank
FROM customer_revenue;
-- =============================================================================================================================================


-- Q12: Identify top 3 revenue-generating products in each category
-- Business Insight:
-- Helps optimize inventory and marketing focus
WITH product_revenue AS (
    SELECT
        p.product_id,
        p.product_name,
        p.category,
        SUM(oi.quantity * oi.price) AS total_revenue
    FROM products p
    JOIN order_items oi
        ON p.product_id = oi.product_id
    GROUP BY p.product_id, p.product_name, p.category
)
SELECT
    product_id,
    product_name,
    category,
    total_revenue
FROM (
    SELECT
        *,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY total_revenue DESC
        ) AS rn
    FROM product_revenue
) ranked_products
WHERE rn <= 3;
-- =============================================================================================================================================


-- Q13: Calculate month-over-month revenue growth
-- Business Insight:
-- Tracks business growth momentum and slowdown periods
WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(o.order_date, '%Y-%m') AS years_month,
        SUM(oi.quantity * oi.price) AS revenue
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY years_month
)
SELECT
    years_month,
    revenue,
    LAG(revenue) OVER (ORDER BY years_month) AS previous_month_revenue,
    ROUND(
        (revenue - LAG(revenue) OVER (ORDER BY years_month))
        / LAG(revenue) OVER (ORDER BY years_month) * 100,
        2
    ) AS mom_growth_percent
FROM monthly_revenue;
-- =============================================================================================================================================


-- Q14: Calculate days between consecutive purchases per customer
-- Business Insight:
-- Identifies churn risk and customer engagement levels
SELECT
    customer_id,
    order_date,
    LEAD(order_date) OVER (
        PARTITION BY customer_id
        ORDER BY order_date
    ) AS next_order_date,
    DATEDIFF(
        LEAD(order_date) OVER (
            PARTITION BY customer_id
            ORDER BY order_date
        ),
        order_date
    ) AS days_between_orders
FROM orders;
-- =============================================================================================================================================


-- Q15: Classify orders as first-time or repeat purchases
-- Business Insight:
-- Helps measure customer acquisition vs retention
SELECT
    order_id,
    customer_id,
    order_date,
    CASE
        WHEN ROW_NUMBER() OVER (
            PARTITION BY customer_id
            ORDER BY order_date
        ) = 1 THEN 'First-Time Order'
        ELSE 'Repeat Order'
    END AS order_type
FROM orders;
-- =============================================================================================================================================



