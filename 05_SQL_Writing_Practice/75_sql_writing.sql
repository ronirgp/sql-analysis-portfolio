-- ===========================================
-- SQL Writing Exercise 75
--
-- Business Request:
--
-- The HR Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Only include employees working in:
-- - IT
-- - Marketing
-- Use IN.
-- Also include only employees
-- earning between $1300 and $2000.
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
WHERE departments.department_name IN ('IT', 'Marketing')
AND employees.salary BETWEEN 1300 AND  2000 
ORDER BY departments.department_name ASC, employees.salary DESC, employees.name ASC;