-- Customer Churn Analysis

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    churned BOOLEAN
);

INSERT INTO customers VALUES
(1, 'Aqueeb Khan', FALSE),
(2, 'Rahul Sharma', TRUE);

-- Queries
-- Total churned customers
SELECT COUNT(*) AS churned_customers
FROM customers
WHERE churned = TRUE;

-- Churn rate
SELECT (SUM(CASE WHEN churned = TRUE THEN 1 ELSE 0 END) * 100.0) / COUNT(*) AS churn_rate
FROM customers;

