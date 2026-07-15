-- ===========================================
-- SQL Subquery Exercise 112
-
-- Business Request:
-- The Finance Manager wants
-- employees earning exactly
-- the highest salary OR
-- exactly the lowest salary.
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
WHERE employees.salary =
(SELECT MAX(salary)
FROM employees)
OR employees.salary =
(SELECT MIN(salary)
FROM employees)
ORDER BY  employees.salary DESC;