-- ===========================================
-- SQL Subquery Exercise 105
-- Business Request:
-- The HR Director wants a report
-- showing employees whose salary
-- is GREATER than the LOWEST salary.
-- Show:
-- - Employee name
-- - Salary
-- Sort by:
-- 1. Salary (highest to lowest)
-- ===========================================
SELECT 	employees.name,
    employees.salary
    FROM employees
WHERE employees.salary >
( SELECT MIN(salary) 
FROM employees)
ORDER BY employees.salary DESC;
