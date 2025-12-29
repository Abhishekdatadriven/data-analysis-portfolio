-- STEP 7: FINAL RISK SCORING AND CLASSIFICATION
-- Objective:
-- Combine individual risk flags into a composite risk score
-- Segment customers into actionable risk categories

-- Calculate total risk score and assign risk category
SELECT
    customer_id,
    
     -- Total risk score based on number of triggered risk flags
    (high_util_flag + 
    chronic_delay_flag + 
    worsening_delay_flag) AS risk_score,
    
    -- Risk category assignment
    -- HIGH RISK: Multiple warning signals
    -- MEDIUM RISK: One warning signal
    -- LOW RISK: No warning signals
    CASE
        WHEN (high_util_flag + 
			 chronic_delay_flag + 
             worsening_delay_flag) >= 2
	    THEN 'HIGH RISK'
        
        WHEN (high_util_flag + 
              chronic_delay_flag + 
              worsening_delay_flag) = 1
        THEN 'MEDIUM RISK'
        
        ELSE 'LOW RISK'
    END AS risk_category
    
FROM credit_risk_flags;
