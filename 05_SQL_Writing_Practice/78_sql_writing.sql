-- ===========================================
-- SQL Writing Exercise 78
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
--
-- Only include employees working in:
-- - Sales
-- - IT
-- Use IN.
-- Only include salaries
-- BETWEEN $1200 and $2000.
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ===========================================
-- My Solutiion
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name IN ('Sales', 'IT')
AND employees.salary BETWEEN 1200 AND  2000 
ORDER BY employees.salary DESC, employees.name ASC;

