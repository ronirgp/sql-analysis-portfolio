-- ==========-- ===========================================
-- SQL Subquery Exercise 17
-- Business Request:
-- The HR Director wants employees
-- earning MORE than the average
-- salary but NOT the highest salary.
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
(
    SELECT AVG(salary)
    FROM employees
)
AND employees.salary <
(
    SELECT MAX(salary)
    FROM employees
)
ORDER BY employees.salary DESC,
         employees.name ASC;