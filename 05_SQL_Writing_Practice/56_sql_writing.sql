-- ===========================================
-- SQL Writing Exercise 56
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Working in either
--   Sales
--   OR
--   IT
-- - Earning at least $1300.
-- Show every employee together with the
-- name of the department where they work.
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Salary (highest to lowest)
-- 3. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name = 'Sales'
OR departments.department_name = 'IT'
AND employees.salary >= 1300
ORDER BY departments.department_name ASC, employees.salary DESC, employees.name ASC;








