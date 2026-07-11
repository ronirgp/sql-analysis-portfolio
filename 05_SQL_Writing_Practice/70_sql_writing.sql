-- ===========================================
-- SQL Writing Exercise 70
--
-- Business Request:
-- The HR Director wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show employees:
-- - Working in Sales
-- OR
-- - Working in IT
-- AND
-- - Earning between
--   $1200 and $2000
--
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
WHERE ( departments.department_name = 'Sales'
OR departments.department_name = 'IT')
AND employees.salary > 1200
AND  employees.salary < 2000
ORDER BY departments.department_name ASC, employees.salary DESC, employees.name ASC;