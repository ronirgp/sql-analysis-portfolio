-- ===========================================
-- SQL Writing Exercise 54
-- Business Request:
-- The HR Director wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees working in
-- either:
-- - Sales
-- OR
-- - Marketing
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
WHERE departments.department_name = 'sales'
OR departments.department_name = 'Marketing'
ORDER BY departments.department_name ASC, employees.salary DESC, employees.name ASC;


