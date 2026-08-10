-- ===========================================
-- Window Function Exercise 1
-- Business Request:
-- Show:
-- - Employee name
-- - Salary
-- Add a column called:
-- salary_number
-- Number the employees from highest
-- salary to lowest salary.
-- ===========================================
-- My Solution
SELECT name, 
salary,
ROW_number() OVER (ORDER BY salary DESC) AS salary_number
FROM employees;