-- ===========================================
-- SQL Writing Exercise 81
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Exclude employees working in:
-- - Sales
-- - IT
-- Use NOT IN.
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
WHERE departments.department_name NOT IN ('Sales', 'IT')
ORDER BY departments.department_name ASC,  employees.name ASC;