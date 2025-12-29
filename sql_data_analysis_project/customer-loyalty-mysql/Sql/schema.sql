-- Create database
CREATE DATABASE IF NOT EXISTS customer_loyalty_db;

USE customer_loyalty_db;

-- =========================
-- CUSTOMERS TABLE
-- =========================

CREATE TABLE Customers (
	customer_id INT PRIMARY KEY,
    signup_date DATE,
    region VARCHAR(50)
);

-- =========================
-- PRODUCTS TABLE
-- =========================
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    category VARCHAR(50),
    cost_price DECIMAL(10,2),
    selling_price DECIMAL(10,2)
);

-- =========================
-- ORDERS TABLE
-- =========================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    discount_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- =========================
-- ORDER ITEMS TABLE
-- =========================
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);


SHOW TABLES;

DESCRIBE customers;

SHOW VARIABLES LIKE 'secure_file_priv';


