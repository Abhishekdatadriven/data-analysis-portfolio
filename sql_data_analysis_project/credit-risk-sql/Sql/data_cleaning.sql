

-- Remove invalid records
DELETE FROM credit_default
WHERE credit_limit IS NULL
   OR credit_limit = 0;
 
 -- check the details
SELECT 
    credit_limit
FROM
    credit_default;
    
    select * from credit_default;
    