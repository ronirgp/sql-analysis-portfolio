-- ===========================================
-- SQL Subquery Exercise 109
-- Business Request:
-- The HR Director wants employees
-- earning MORE than the minimum
-- salary but LESS than the maximum
-- salary.
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
WHERE employees.salary >
(SELECT MIN(salary) 
FROM employees)
AND employees.salary <
(SELECT MAX(salary)
FROM employees)
ORDER BY employees.salary DESC;