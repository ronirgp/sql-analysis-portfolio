-- ===========================================
-- SQL Writing Exercise 60
--
-- Business Request:
-- The CEO wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Show only employees:
-- - Earning at least $1300
-- - Working in any department except Sales.
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Salary (highest to lowest)
-- 3. Employee name (A-Z)
-- ==========================================
-- My Solution

SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name <> 'Sales'
AND employees.salary >= 1300
ORDER BY departments.department_name ASC, employees.salary DESC, employees.name ASC;