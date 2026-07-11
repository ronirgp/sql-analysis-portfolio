-- ===========================================
-- SQL Writing Exercise 62
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Working in Sales
-- OR
-- - Working in Marketing
-- - Earning at least $1200
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
WHERE (departments.department_name = 'Sales'
OR departments.department_name = 'Marketing')
AND employees.salary >= 1200
ORDER BY departments.department_name ASC,  employees.salary DESC, employees.name ASC;
