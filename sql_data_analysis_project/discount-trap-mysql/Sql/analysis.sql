/* ============================================================
PROJECT: Discount Trap – Revenue Growth but Profit Decline
PURPOSE: Identify products where revenue growth is driven by
         discounting, resulting in margin erosion.
AUTHOR: Abhishek Anandkar
============================================================ */
USE customer_loyalty_db;


/*============================================================
STEP 1: CALCULATE ORDER-LEVEL GROSS REVENUE
WHY:
Discounts are stored at the order level, not item level.
To allocate discounts fairly to each product, we first need
total revenue per order.
============================================================ */

CREATE OR REPLACE VIEW order_revenue AS
SELECT
    order_id,
    SUM(quantity * price) AS order_gross_revenue
FROM order_items
GROUP BY order_id;


/* ============================================================
STEP 2: BUILD BASE PRODUCT FINANCIALS (MONTHLY)
WHY:
This view creates a clean financial foundation at
product × month level, including:
- Revenue
- Allocated discount
- Cost
- Profit
- Margin
============================================================ */

CREATE OR REPLACE VIEW product_month_financials  AS 
SELECT 
     oi.product_id ,
     p.category,
      DATE_FORMAT(o.order_date, '%Y-%m') AS years_month,
      
      -- Revenue
    SUM(oi.quantity * oi.price) AS gross_revenue,
    
    -- Allocated discount (proportional)
    SUM(
        (oi.quantity * oi.price / NULLIF(orv.order_gross_revenue, 0))
        * o.discount_amount
    ) AS allocated_discount,
    
     -- Cost
    SUM(oi.quantity * p.cost_price) AS total_cost,
    
     -- Net revenue
    SUM(oi.quantity * oi.price)
      - SUM(
          (oi.quantity * oi.price / NULLIF(orv.order_gross_revenue, 0))
          * o.discount_amount
        ) AS net_revenue,

-- Net profit
    SUM(oi.quantity * oi.price)
    - SUM(oi.quantity * p.cost_price)
    - SUM(
        (oi.quantity * oi.price / NULLIF(orv.order_gross_revenue, 0))
        * o.discount_amount
      ) AS net_profit,


-- Margin %
    ROUND(
        (
            SUM(oi.quantity * oi.price)
            - SUM(oi.quantity * p.cost_price)
            - SUM(
                (oi.quantity * oi.price / NULLIF(orv.order_gross_revenue, 0))
                * o.discount_amount
            )
        )
        /
        NULLIF(
            SUM(oi.quantity * oi.price)
            - SUM(
                (oi.quantity * oi.price / NULLIF(orv.order_gross_revenue, 0))
                * o.discount_amount
            ),
            0
        ),
        4
    ) AS margin_pct


FROM order_items oi
JOIN orders o 
    ON oi.order_id = o.order_id
JOIN order_revenue orv 
    ON oi.order_id = orv.order_id
JOIN products	 p 
    ON oi.product_id = p.product_id
    GROUP BY
    oi.product_id,
    p.category,
    DATE_FORMAT(o.order_date, '%Y-%m');
      
/* ============================================================
STEP 3: SPLIT DATA INTO EARLY VS RECENT PERIODS
WHY:
To compare past vs recent performance without hard-coding dates.
This allows dynamic trend comparison even if new data is added.
============================================================ */

CREATE OR REPLACE VIEW product_period_summary  AS 
SELECT 
     product_id ,
     category,
     
     CASE 
          when years_month <= (
               select 
                    SUBSTRING_INDEX(
						GROUP_CONCAT(DISTINCT years_month ORDER BY years_month),
                        ',',
                        FLOOR(COUNT(DISTINCT years_month)/2)
                        )
				FROM product_month_financials
                )
                THEN 'EARLY'
                ELSE 'RECENT'
    END AS period,
    SUM(net_revenue) AS total_revenue,
    AVG(margin_pct) AS avg_margin
    FROM product_month_financials
GROUP BY
    product_id,
    category,
    period;

/* ============================================================
STEP 4: CALCULATE REVENUE GROWTH & MARGIN CHANGE
WHY:
This view converts time-series data into a single
decision-ready signal per product.
============================================================ */

CREATE OR REPLACE VIEW product_growth_margin AS
SELECT
    product_id,
    category,

    -- Revenue growth %
    ROUND(
        (
            SUM(CASE WHEN period = 'RECENT' THEN total_revenue ELSE 0 END)
            - SUM(CASE WHEN period = 'EARLY' THEN total_revenue ELSE 0 END)
        )
        /
        NULLIF(SUM(CASE WHEN period = 'EARLY' THEN total_revenue ELSE 0 END), 0),
        4
    ) AS revenue_growth_pct,

    -- Margin change
    ROUND(
        SUM(CASE WHEN period = 'RECENT' THEN avg_margin ELSE 0 END)
        - SUM(CASE WHEN period = 'EARLY' THEN avg_margin ELSE 0 END),
        4
    ) AS margin_change

FROM product_period_summary
GROUP BY product_id, category;


/* ============================================================
STEP 5: FINAL DISCOUNT TRAP CLASSIFICATION
WHY:
Identify products that appear successful in revenue reports
but are commercially risky due to margin erosion.
============================================================ */

SELECT
    product_id,
    category,
    revenue_growth_pct,
    margin_change,

    CASE
        WHEN revenue_growth_pct > 0
         AND margin_change < 0
        THEN 'DISCOUNT TRAP'
        ELSE 'SAFE / NORMAL'
    END AS product_risk_flag

FROM product_growth_margin
ORDER BY revenue_growth_pct DESC;
	

               