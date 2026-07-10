-- ===========================================
-- SQL Writing Exercise 57
--
-- Business Request:
-- The Operations Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Working in Marketing
-- - Earning at least $1400.
-- Show every employee together with the
-- name of the department where they work.
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ==========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name = 'Marketing'
AND employees.salary >= 1400
ORDER BY employees.salary DESC, employees.name ASC;




