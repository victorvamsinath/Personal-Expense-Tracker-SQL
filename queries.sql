CREATE DATABASE expense_tracker;
USE expense_tracker;



INSERT INTO users (name, email)
VALUES 
('Vamsi', 'vamsi@gmail.com'),
('anu', 'anu@gmail.com');

INSERT INTO categories (category_name)
VALUES 
('Food'),
('Transport'),
('Rent'),
('Shopping'),
('Medical');

INSERT INTO expenses (user_id, category_id, amount, expense_date, description)
VALUES
(1, 1, 250, '2025-01-05', 'Lunch'),
(1, 2, 100, '2025-01-06', 'Bus'),
(1, 4, 1500, '2025-01-10', 'Clothes'),
(2, 1, 300, '2025-01-08', 'Dinner'),
(2, 3, 5000, '2025-01-01', 'House Rent');

SELECT 
    MONTH(expense_date) AS month,
    SUM(amount) AS total_expense
FROM expenses
GROUP BY MONTH(expense_date);

SELECT c.category_name, SUM(e.amount) AS total
FROM expenses e
JOIN categories c ON e.category_id = c.category_id
GROUP BY c.category_name;

SELECT u.name, SUM(e.amount) AS total_spent
FROM expenses e
JOIN users u ON e.user_id = u.user_id
GROUP BY u.name
ORDER BY total_spent DESC
LIMIT 1;

SELECT 
    user_id,
    amount,
    RANK() OVER (ORDER BY amount DESC) AS expense_rank
FROM expenses;

CREATE INDEX idx_expense_date ON expenses(expense_date);

CREATE VIEW monthly_report AS
SELECT 
    user_id,
    MONTH(expense_date) AS month,
    SUM(amount) AS total
FROM expenses
GROUP BY user_id, MONTH(expense_date);


