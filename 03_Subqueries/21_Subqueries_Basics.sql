-- ===========================================
-- SQL Subquery Exercise 21
-- Business Request:
-- The HR Director wants a report
-- showing employees whose salary
-- is NOT equal to the average salary.
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
WHERE employees.salary <>
(
    SELECT AVG(salary)
    FROM employees
)

ORDER BY employees.salary DESC, employees.name ASC;