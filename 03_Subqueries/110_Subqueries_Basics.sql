-- ===========================================
-- SQL Subquery Exercise 110
-- Business Request:
-- The Finance Manager wants a report
-- showing employees earning
-- GREATER than the average salary
-- but LESS than the highest salary.
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
AND employees.salary <
(SELECT MAX(salary)
FROM employees)
ORDER BY employees.salary DESC, employees.name ASC;




