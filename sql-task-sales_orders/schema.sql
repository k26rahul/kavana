CREATE TABLE sales_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    category VARCHAR(50) NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    order_date DATE NOT NULL
);
