USE vamdb;

INSERT INTO Categories (category_name) VALUES ('Electronics'), ('Home Decor'), ('Books'), ('Fitness');

INSERT INTO Customers (first_name, last_name, email, registration_date, country) VALUES
('John', 'Doe', 'john@example.com', '2025-01-10', 'USA'),
('Jane', 'Smith', 'jane@example.com', '2025-01-15', 'Canada'),
('Alice', 'Johnson', 'alice@example.com', '2025-02-01', 'USA'),
('Bob', 'Wilson', 'bob@example.com', '2025-02-10', 'UK'),
('Charlie', 'Brown', 'charlie@example.com', '2025-02-20', 'Germany'),
('David', 'Miller', 'david@example.com', '2025-03-01', 'USA'),
('Eve', 'Davis', 'eve@example.com', '2025-03-05', 'France'),
('Frank', 'Moore', 'frank@example.com', '2025-03-10', 'USA'),
('Grace', 'Taylor', 'grace@example.com', '2025-03-11', 'Canada'),
('Hank', 'Anderson', 'hank@example.com', '2025-03-12', 'USA');

INSERT INTO Products (product_name, price, category_id, stock_quantity) VALUES
('Laptop', 1200.00, 1, 10), ('Smartphone', 800.00, 1, 25), ('Headphones', 150.00, 1, 50),
('Smartwatch', 250.00, 1, 30), ('Tablet', 400.00, 1, 15), ('Vase', 45.00, 2, 20),
('Wall Clock', 30.00, 2, 10), ('Table Lamp', 60.00, 2, 15), ('SQL Guide', 40.00, 3, 100),
('Data Science Handbook', 55.00, 3, 80), ('Fiction Novel', 15.00, 3, 200), ('Yoga Mat', 25.00, 4, 40),
('Dumbbells', 50.00, 4, 20), ('Treadmill', 900.00, 4, 5), ('Monitor', 300.00, 1, 12),
('Keyboard', 50.00, 1, 60), ('Coffee Table', 120.00, 2, 8), ('Python Crash Course', 35.00, 3, 90),
('Kettlebell', 45.00, 4, 25), ('Blender', 75.00, 1, 18);

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES (1, '2026-03-01', 1200.00), (2, '2026-03-05', 195.00);
INSERT INTO OrderItems (order_id, product_id, quantity, price_per_unit) VALUES (1, 1, 1, 1200.00), (2, 3, 1, 150.00), (2, 6, 1, 45.00);