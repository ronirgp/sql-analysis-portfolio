-- ===========================================
-- SQL Subquery Exercise 108
-- Business Request:
-- The HR Director wants employees
-- earning LESS than the highest
-- salary in the company.
-- Show:
-- - Employee name
-- - Salary
-- Sort by:
-- 1. Salary (highest to lowest)
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE employees.salary <
(SELECT MAX(salary)
FROM employees)
ORDER BY employees.salary DESC;