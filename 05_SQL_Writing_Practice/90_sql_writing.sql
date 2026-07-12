-- ===========================================
-- SQL Writing Exercise 90
-- Business Request:
-- The Finance Manager wants a list
-- of all different salaries.
-- Show:
-- - Salary
-- Use DISTINCT.
-- Only include salaries
-- greater than $1300.
-- Sort from highest salary
-- to lowest salary.
-- ===========================================
-- My Solution
SELECT DISTINCT employees.salary
FROM employees
WHERE employees.salary >= 1300
ORDER BY employees.salary DESC;