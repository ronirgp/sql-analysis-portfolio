-- ===========================================
-- SQL Writing Exercise 63
-- Business Request:
-- The Operations Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Working in any department
-- EXCEPT Marketing
-- Sort by:
-- 1. Department name (A-Z)
-- 2. Employee name (A-Z)
-- ==========================================
-- My Solution
SELECT employees.name,
departments.department_name,
employees.salary
FROM employees
JOIN departments
ON employees.department_id = departments.department_id
WHERE departments.department_name <> 'Marketing'
ORDER BY departments.department_name ASC, employees.name ASC;
