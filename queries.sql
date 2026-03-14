USE vamdb;

-- Query 1: Total Revenue per Country
SELECT country, SUM(total_amount) as total_revenue
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY country;

-- Query 2: Top 5 Best-Selling Products
SELECT p.product_name, SUM(oi.quantity) as total_sold
FROM Products p
JOIN OrderItems oi ON p.product_id = oi.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC
LIMIT 5;

-- Query 3: Identifying High-Value Categories
WITH CategoryRevenue AS (
    SELECT c.category_name, SUM(oi.quantity * oi.price_per_unit) as revenue
    FROM Categories c
    JOIN Products p ON c.category_id = p.category_id
    JOIN OrderItems oi ON p.product_id = oi.product_id
    GROUP BY c.category_name
)
SELECT * FROM CategoryRevenue ORDER BY revenue DESC LIMIT 1;