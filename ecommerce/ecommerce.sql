-- E-commerce Project

-- Table: customers
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50),
    joined_date DATE
);

INSERT INTO customers VALUES
(1, 'Aqueeb Khan', 'aqueeb@gmail.com', '2026-01-01'),
(2, 'Rahul Sharma', 'rahul@gmail.com', '2026-01-05');

-- Table: orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders VALUES
(101, 1, 1500.50, '2026-02-01'),
(102, 2, 2300.00, '2026-02-03');

-- Queries
-- Total revenue
SELECT SUM(total_amount) AS total_revenue FROM orders;

-- Top 5 customers
SELECT customer_id, SUM(total_amount) AS revenue
FROM orders
GROUP BY customer_id
ORDER BY revenue DESC
LIMIT 5;
