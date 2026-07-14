-- ===========================================
-- SQL Subquery Exercise 15
-- Business Request:
-- The HR Director wants a report
-- showing employees earning
-- MORE than the minimum salary
-- AND LESS than the average salary.
-- Show:
-- - Employee name
-- - Salary
-- Sort by:
-- 1. Salary (lowest to highest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
       employees.salary
FROM employees
WHERE employees.salary >
(
    SELECT MIN(salary)
    FROM employees
)
AND employees.salary <
(
    SELECT AVG(salary)
    FROM employees
)
ORDER BY employees.salary ASC,
         employees.name ASC;