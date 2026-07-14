-- ===========================================
-- SQL Subquery Exercise 14
-- Business Request:
-- The Finance Manager wants a report
-- showing employees earning
-- LESS than the average salary
-- OR earning exactly the
-- highest salary.
-- Show:
-- - Employee name
-- - Salary
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE employees.salary <
(SELECT AVG(salary)
FROM employees)
OR employees.salary =
(SELECT MAX(salary)
FROM employees)
ORDER BY  employees.salary DESC,employees.name ASC ;