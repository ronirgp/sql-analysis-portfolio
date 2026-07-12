-- ===========================================
-- SQL Writing Exercise 80
-- Business Request:
-- The CEO wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees:
-- - Working in IT
-- - Marketing
-- Use IN.
-- Only include salaries
-- BETWEEN $1400 and $2500.
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
WHERE departments.department_name IN ('IT', 'Marketing')
AND employees.salary BETWEEN 1400 AND  2500 
ORDER BY employees.salary DESC, departments.department_name ASC, employees.name ASC;
