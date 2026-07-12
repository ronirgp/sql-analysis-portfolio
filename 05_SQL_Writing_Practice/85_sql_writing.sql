-- ===========================================
-- SQL Writing Exercise 85
-- Business Request:
-- The HR Director wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show only employees whose names
-- end with:
--
-- n
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
WHERE employees.name LIKE '%n'
ORDER BY employees.name ASC;