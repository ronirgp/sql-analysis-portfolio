-- ===========================================
-- SQL Writing Exercise 64
-- Business Request:
-- The CEO wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Earning between
--   $1300 and $2000
-- Sort by:
-- 1. Salary (highest to lowest)
-- 2. Department name (A-Z)
-- 3. Employee name (A-Z)
-- ==========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE employees.salary > 1300 
AND employees.salary < 2000
ORDER BY  employees.salary DESC, departments.department_name ASC, employees.name ASC;