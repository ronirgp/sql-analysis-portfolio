-- ===========================================
-- SQL Writing Exercise 82
-- Business Request:
-- The Finance Manager wants a report showing:
-- - Employee name
-- - Department name
-- - Salary
-- Exclude employees working in:
-- - Marketing
-- Use NOT IN.
-- Only include salaries
-- at least $1300.
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
WHERE departments.department_name NOT IN ('Marketing')
AND employees.salary >= 1300
ORDER BY employees.salary DESC, departments.department_name ASC,  employees.name ASC;