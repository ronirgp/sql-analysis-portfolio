-- ===========================================
-- SQL Subquery Exercise 20
-- Business Request:
-- The Finance Manager wants a report
-- showing employees earning
-- ABOVE the average salary
-- OR BELOW the average salary.
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
(
    SELECT AVG(salary)
    FROM employees
)
OR employees.salary <
(
    SELECT AVG(salary)
    FROM employees
)
ORDER BY employees.salary DESC;