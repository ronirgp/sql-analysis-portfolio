-- ===========================================
-- CTE Exercise 2
-- Business Request:
-- Create a temporary table named:
-- high_salary
-- containing:
-- - Employee name
-- - Salary
-- Only employees whose salary
-- is greater than 1800.
-- Then display:
-- - Employee name
-- - Salary
-- Order by:
-- Salary DESC.
-- ===========================================
-- My Solution
WITH high_salary AS
(
SELECT name AS employee_name,
salary
FROM employees
WHERE salary > 1800
)
SELECT employee_name,
salary
FROM high_salary
ORDER BY salary DESC;
