-- ===========================================
-- SQL Writing Exercise 73
-- Business Request:
-- The HR Director wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees working in:
-- - Sales
-- - Marketing
-- - IT
-- Use IN.
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name IN ( 'Sales', 'Marketing', 'IT')
ORDER BY departments.department_name ASC, employees.name ASC;