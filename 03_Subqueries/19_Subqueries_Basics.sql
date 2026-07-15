-- ===========================================
-- SQL Subquery Exercise 19
-- Business Request:
-- The HR Manager wants a report
-- showing employees earning
-- EITHER the highest salary
-- OR the average salary.
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
WHERE employees.salary =
(
    SELECT MAX(salary)
    FROM employees
)
OR employees.salary =
(
    SELECT AVG(salary)
    FROM employees
)
ORDER BY employees.salary DESC,
         employees.name ASC;