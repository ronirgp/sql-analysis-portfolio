-- ===========================================
-- SQL Writing Exercise 72
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees working in:
-- - IT
-- - Marketing
-- Use IN.
-- Also include only employees earning
-- at least $1400.
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
WHERE departments.department_name IN('IT', 'Marketing')
AND employees.salary >= 1400
ORDER BY employees.salary DESC, employees.name ASC;