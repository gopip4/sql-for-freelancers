-- Sales Reporting Database

CREATE DATABASE sales_db;
USE sales_db;

CREATE TABLE sales (
    sale_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    quantity INT,
    price DECIMAL(8,2),
    sale_date DATE
);

INSERT INTO sales (product_name, quantity, price, sale_date) VALUES
('Laptop', 2, 50000, '2025-01-05'),
('Mouse', 10, 500, '2025-01-06'),
('Keyboard', 5, 1500, '2025-01-06');

-- Total sales amount
SELECT SUM(quantity * price) AS total_sales
FROM sales;

-- Date-wise sales
SELECT sale_date, SUM(quantity * price) AS daily_sales
FROM sales
GROUP BY sale_date;
