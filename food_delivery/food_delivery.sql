-- Food Delivery Analytics

CREATE TABLE restaurants (
    restaurant_id INT PRIMARY KEY,
    name VARCHAR(50),
    location VARCHAR(50)
);

INSERT INTO restaurants VALUES
(1, 'Pizza Hut', 'Mumbai'),
(2, 'Dominos', 'Delhi');

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    restaurant_id INT,
    total_amount DECIMAL(10,2),
    order_date DATE,
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id)
);

INSERT INTO orders VALUES
(101, 1, 500.00, '2026-03-01'),
(102, 2, 700.00, '2026-03-02');

-- Queries
-- Top selling restaurants
SELECT restaurant_id, SUM(total_amount) AS revenue
FROM orders
GROUP BY restaurant_id
ORDER BY revenue DESC
LIMIT 5;

