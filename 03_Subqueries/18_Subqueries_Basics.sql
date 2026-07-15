-- ===========================================
-- SQL Subquery Exercise 18
-- Business Request:
-- The Finance Manager wants a report
-- showing employees earning
-- LESS than the highest salary
-- AND GREATER than the minimum salary.
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
(
    SELECT MAX(salary)
    FROM employees
)
AND employees.salary >
(
    SELECT MIN(salary)
    FROM employees
)
ORDER BY employees.salary DESC,
         employees.name ASC;