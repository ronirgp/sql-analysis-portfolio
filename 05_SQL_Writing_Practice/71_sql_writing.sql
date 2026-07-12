-- ===========================================
-- SQL Writing Exercise 71
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees working in:
-- - Sales
-- - IT
-- Use IN.
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Salary (highest to lowest)
-- ===========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name IN('Sales', 'IT')
ORDER BY departments.department_name ASC, employees.salary DESC;