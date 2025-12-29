-- Create database
CREATE DATABASE credit_risk;

USE credit_risk;

-- =========================
-- credit_default TABLE
-- =========================

CREATE TABLE credit_default (
    customer_id INT,
    credit_limit DECIMAL(10,2),
    age INT,

    pay_1 VARCHAR(10),
    pay_2 VARCHAR(10),
    pay_3 VARCHAR(10),

    bill_amt1 DECIMAL(10,2),
    bill_amt2 DECIMAL(10,2),
    bill_amt3 DECIMAL(10,2),

    pay_amt1 DECIMAL(10,2),
    pay_amt2 DECIMAL(10,2),
    pay_amt3 DECIMAL(10,2)
);


-- =========================
-- LOAD DATA 
-- =========================

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/credit_default.csv'
INTO TABLE credit_default
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM credit_default;
