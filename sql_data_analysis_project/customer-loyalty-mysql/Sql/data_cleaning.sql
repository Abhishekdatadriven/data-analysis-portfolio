USE customer_loyalty_db;

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Customers.csv'
INTO TABLE Customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
  customer_id,
  @signup_date,
  region,
  @segment
)
SET signup_date = STR_TO_DATE(@signup_date, '%m/%d/%Y');

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/orders.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(
  order_id,
  customer_id,
  @order_date,
  discount_amount
)
SET order_date = STR_TO_DATE(@order_date, '%m/%d/%Y');



LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Products.csv'
INTO TABLE Products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/order_items.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


SELECT COUNT(*) FROM Customers;
SELECT COUNT(*) FROM Products;
SELECT COUNT(*) FROM orders;
SELECT COUNT(*) FROM order_items;


SELECT * FROM order_items;

SELECT 
    c.customer_id,
    COUNT(o.order_id) AS total_orders
FROM Customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_id
LIMIT 10;

SELECT 
    MIN(order_date),
    MAX(order_date)
FROM orders;



