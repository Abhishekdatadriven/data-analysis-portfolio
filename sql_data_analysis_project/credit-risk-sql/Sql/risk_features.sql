-- Behavioral risk features
CREATE OR REPLACE VIEW credit_risk_features AS 
SELECT 
      customer_id ,
      -- ====================================================
      -- Credit utilization
      -- Measures how much of available credit is being used
      -- ====================================================
      bill_amt1 / credit_limit AS utilization_ratio,
      
      -- ====================================================
      -- Payment discipline
      -- Measures what percentage of the bill was actually paid
      -- ====================================================
      pay_amt1 / NULLIF(bill_amt1, 0) AS payment_ratio,
      
      -- ====================================================
      -- Average delay
      -- Average delay in payments over last 3 periods
      -- ====================================================
      (pay_1 + pay_2 + pay_3 ) /3  AS avg_delay,
      
      
      -- ====================================================
      -- Delay trend (increasing delay is risky)
      -- Shows if payment behavior is improving or worsening
      -- ====================================================
      pay_1 - pay_3 AS delay_trend

FROM credit_default;

SELECT * FROM credit_risk_features;

