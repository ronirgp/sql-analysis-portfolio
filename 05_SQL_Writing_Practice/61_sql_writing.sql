-- ===========================================
-- SQL Writing Exercise 61
-- Business Request:
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Working in IT
-- - Earning at least $1300
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Employee name (A-Z)
-- ==========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name = 'IT'
AND employees.salary >= 1300
ORDER BY  employees.salary DESC, employees.name ASC;


