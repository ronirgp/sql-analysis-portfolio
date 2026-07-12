-- ===========================================
-- SQL Writing Exercise 79
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
-- Only include salaries
-- BETWEEN $1300 and $2200.
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
WHERE departments.department_name IN ('Sales', 'Marketing', 'IT')
AND employees.salary BETWEEN 1300 AND  2200 
ORDER BY departments.department_name ASC, employees.salary DESC, employees.name ASC;