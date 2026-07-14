-- ===========================================
-- SQL Subquery Exercise 107
-- Business Request:
-- The Finance Manager wants to identify
-- employees earning EXACTLY the
-- average salary.
-- Show:
-- - Employee name
-- - Salary
-- Sort by employee name (A-Z).
-- ===========================================
-- My Solution
SELECT employees.name,
employees.salary
FROM employees
WHERE employees.salary = 
(SELECT AVG(salary)
FROM employees)
ORDER BY employees.name ASC;
