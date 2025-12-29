-- RISK FLAGGING
-- Objective:
-- Convert continuous risk features into binary risk indicators
-- These flags represent early warning signals used by credit risk teams

-- Create a view that assigns individual risk flags per customer
CREATE OR REPLACE VIEW credit_risk_flags AS
SELECT
    customer_id,
    
    -- High utilization flag
    -- Customers using more than 80% of their credit limit are considered financially stressed
	CASE 
        WHEN utilization_ratio > 0.8 THEN 1 
        ELSE 0 
	END AS high_util_flag,
    
     -- Chronic payment delay flag
    -- Customers with consistently late payments across months
    CASE 
        WHEN avg_delay > 10 THEN 1 
        ELSE 0 
	END AS chronic_delay_flag,
    
    -- Worsening delay trend flag
    -- Detects increasing payment delays over time (early deterioration signal)
    CASE 
        WHEN delay_trend > 5 THEN 1 
        ELSE 0 
	END AS worsening_delay_flag
FROM credit_risk_features;





