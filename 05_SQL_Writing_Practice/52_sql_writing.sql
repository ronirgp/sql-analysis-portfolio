-- ===========================================
-- SQL Writing Exercise 52
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees earning
-- at least $1300.
-- Show every employee together with the
-- name of the department where they work.
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
		departments.department_name,
        employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE salary >= 1300
ORDER BY employees.salary DESC, employees.name ASC;