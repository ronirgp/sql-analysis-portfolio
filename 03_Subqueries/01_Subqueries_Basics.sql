-- ===========================================
-- SQL Subquery Exercise 101
-- Business Request:
-- The HR Director wants a report showing
-- employees earning MORE than the
-- company's average salary.
-- Show:
-- - Employee name
-- - Salary
-- Sort by salary
-- from highest to lowest.
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE employees.salary > 
( SELECT AVG(salary)
FROM employees);
