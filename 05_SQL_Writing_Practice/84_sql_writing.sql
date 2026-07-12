-- ===========================================
-- SQL Writing Exercise 84
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show only employees whose names
-- start with:
-- A
-- Use LIKE.
-- Sort by:
-- 1. Employee name (A-Z)
-- ===========================================
-- My Solution 
SELECT employees.name,
       departments.department_name,
       employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE employees.name LIKE 'A%'
ORDER BY employees.name ASC;