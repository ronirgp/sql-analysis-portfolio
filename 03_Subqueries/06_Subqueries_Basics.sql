-- ===========================================
-- SQL Subquery Exercise 106
-- Business Request:
-- The HR Manager wants to identify
-- employees earning LESS than the
-- company's average salary.
-- Show:
-- - Employee name
-- - Salary
-- Sort by:
-- 1. Salary (lowest to highest)
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE employees.salary <
(SELECT AVG(salary)
FROM employees)
ORDER BY employees.salary ASC;