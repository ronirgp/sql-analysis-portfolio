-- ===========================================
-- SQL Writing Exercise 69
-- Business Request:
-- The Operations Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show employees:
-- - Working in Sales
-- - Earning at least $1200
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
WHERE departments.department_name = 'Sales'
AND employees.salary >= 1200
ORDER BY  employees.salary DESC, employees.name ASC;
