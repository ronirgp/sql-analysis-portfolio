-- ===========================================
-- SQL Writing Exercise 83
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show only employees whose names
-- start with the letter:
-- J
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
WHERE employees.name LIKE 'J%'
ORDER BY employees.name ASC;