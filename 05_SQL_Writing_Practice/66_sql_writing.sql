-- ===========================================
-- SQL Writing Exercise 66
--
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Working in IT
-- OR
-- - Working in Marketing
-- AND
-- - Earning at least $1400
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Department name (A-Z)
-- 3. Employee name (A-Z)
-- ===========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE (departments.department_name = 'IT'
OR departments.department_name = 'Marketing')
AND employees.salary >= 1400
ORDER BY  employees.salary DESC, departments.department_name ASC, employees.name ASC;