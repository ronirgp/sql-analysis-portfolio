-- ===========================================
-- SQL Subquery Exercise 13
-- Business Request:
-- The HR Manager wants a report
-- showing employees earning
-- MORE than the average salary
-- OR earning exactly the
-- minimum salary.
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
WHERE employees.salary >
(SELECT AVG(salary)
FROM employees)
OR employees.salary =
(SELECT MIN(salary)
FROM employees)
ORDER BY  employees.salary DESC,employees.name ASC ;